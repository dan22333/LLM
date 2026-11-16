## The Idea — Chapter C: The System (Architecture, AgentTorch, AI-LPM)

This chapter is the buildable spec. The previous chapters argued *why* an LLM world-model-for-the-economy could generate alpha; this one tells a strong engineer exactly *what to build*, *what to reuse*, and *where the landmines are*. The organizing claim is simple and load-bearing:

> **The LLM is the hypothesis engine, not the arithmetic.** Everything that must be *correct* — base rates, Bayesian updates, calibration, scoring, point-in-time data access — is deterministic code. Everything that benefits from *imagination and breadth* — generating reference classes, enumerating causal forces, populating heterogeneous agent personas, surfacing scenarios a quant would miss — is the LLM. Confuse these two and you ship a confident liar.

We ground the design in three bodies of work: **Tetlock's Superforecasting** (the epistemics), **AgentTorch** (a real, open-source differentiable agent-based-modeling engine), and **MIT's AI-LPM / Large Population Models** program (the research agenda that extends AgentTorch with LLM-driven micro-behavior and differentiable macro-calibration). We are careful throughout to separate *what these projects actually provide* from *what we propose to build around them*.

---

### 1. Superforecaster principles → components

Tetlock's Good Judgment Project produced the most robust empirical finding in forecasting: a trainable set of habits (the "Ten Commandments") that let ordinary analysts beat intelligence professionals with classified data. [src: edge.org] [src: lifeitself.org] The design discipline here is to turn each habit into a *module* and label it LLM or deterministic. The table below is the spine of the whole architecture.

| # | Tetlock principle / trait | Concrete module | LLM or CODE |
|---|---|---|---|
| 1 | **Triage** — work only questions in the "Goldilocks zone" where effort pays | Question router: filters incoming forecast questions by resolvability, horizon, and historical edge | CODE (classifier) + LLM (ambiguity check) |
| 2 | **Fermi-ize** — break intractable problems into tractable sub-problems | Decomposition planner: turns "Will X happen by Q3?" into a DAG of estimable sub-quantities | **LLM** (generates the tree); CODE validates it is acyclic & each leaf is measurable |
| 3 | **Outside view first (base rates)** | Reference-class engine: LLM proposes candidate comparison classes; code pulls the empirical base rate from the point-in-time store | **LLM proposes classes, CODE computes the rate** |
| 4 | **Balanced belief updating** | Bayesian update service: prior × likelihood-ratio → posterior; many small updates, occasional large | **CODE** (explicit Bayes); LLM only *estimates* the likelihood ratio, which code logs |
| 5 | **Clashing causal forces** | Dragonfly-eye ensemble: N adversarial LLM personas (bull/bear/structural/contrarian) argue; a synthesizer aggregates | **LLM** (personas) + CODE (aggregation weights from past accuracy) |
| 6 | **Many degrees of doubt** | Granular probability head: forces outputs onto a fine grid (e.g. 1% buckets), never "likely/unlikely" | **CODE** (constrained decoding / numeric head) |
| 7 | **Under/over-confidence balance** | Calibration layer: isotonic / Platt recalibration mapping raw model probs → calibrated probs | **CODE** (fit on historical resolutions) |
| 8 | **Look for errors behind mistakes** | Post-mortem store: every forecast + resolution + reasoning trace retained; drives prompt/weight updates | CODE (storage) + **LLM** (generates the post-mortem narrative) |
| 9 | **Bring out the best in others (teaming)** | Multi-agent debate + aggregation; "silicon crowd" ensembling across model families | **LLM** (diverse models) + CODE (crowd aggregation) |
| 10 | **Error-balancing bicycle (practice + scoring)** | Brier/log-score scorer + walk-forward loop that actually feeds scores back | **CODE** (scoring is sacred, never LLM) |

The non-negotiable: **scoring, base-rate retrieval, the Bayesian arithmetic, and the calibration map are deterministic.** Superforecasters are not superhuman calculators — Tetlock notes they are "much better than most of us" Bayesians but imperfect [src: lifeitself.org] — so the system's edge comes from *forcing* the arithmetic to be exact while letting the LLM do what humans found hardest: generating many reference classes and holding clashing views in mind at once (the "dragonfly eye"). A human superforecaster achieves a Brier score of roughly 0.15–0.20; that is the bar the harness in §6 measures against. [src: aiimpacts.org]

---

### 2. AgentTorch — what it ACTUALLY provides

AgentTorch (github.com/agenttorch/agenttorch, MIT Media Lab, lead author Ayush Chopra) is best summarized by its own tagline: **"PyTorch, but for large-scale agent-based simulations."** [src: github.com] It is a real, working framework, not vaporware. What it concretely gives you:

- **A differentiable agent-based-modeling (ABM) substrate.** Every simulation is decomposed into timesteps, and each timestep into **substeps** with a fixed three-phase contract: **Observation** (agents read environment + neighbor state), **Policy/Action** (agents decide — via heuristic, learned net, *or* LLM), **Transition** (environment state updates; agents can be created/destroyed). [src: arxiv.org/2507.09901] This Observation→Policy→Transition decomposition is the core reusable abstraction — it is clean, modular, and maps directly onto economic agents.
- **Differentiability through stochastic, discrete dynamics.** The headline trick: discrete choices and sampling are made differentiable via **Gumbel-softmax continuous relaxation and the reparameterization trick**, so gradients flow through an entire simulation trajectory. [src: arxiv.org/2507.09901] This is the thing you cannot easily build yourself and the main reason to adopt it.
- **Gradient-based calibration to real data.** Because the forward simulation is differentiable, you calibrate agent/environment *parameters* by: forward-run → compute a loss against empirical aggregates → backprop through the trajectory → gradient-descent the parameters. Crucially it **recovers parameters from coarse, population-level data** (e.g. census summary statistics) without individual-level ground truth. [src: arxiv.org/2507.09901] MIT reports **2–20× better precision and ~3000× faster calibration** than traditional surrogate-model approaches. [src: media.mit.edu]
- **Scale.** GPU-accelerated; demonstrated **8.4 million agents on a single GPU (~600× faster than prior methods)** in the NYC application, with framework capacity cited up to ~120M agents. [src: media.mit.edu] [src: arxiv.org/2507.09901]
- **LLM-composable agents via "archetypes."** Rather than calling an LLM once per agent (impossibly expensive at millions of agents), AgentTorch queries the LLM for a small number of **archetypes** — personas defined by prompt variables — estimates an *action distribution* per archetype, and then **samples each individual agent's action from its archetype's distribution.** The number of archetypes is orders of magnitude smaller than the population, preserving heterogeneity at tractable cost. [src: bdtechtalks.com] [src: arxiv.org/2409.10568]
- **Composability.** Integrates with deep nets, other mechanistic simulators, and other LPMs; config-driven model definition; `runner.step()` / `runner.reset()` control. [src: github.com]

**What we reuse, precisely:**
1. The **Observation/Policy/Transition substep substrate** as the SIM layer (L5).
2. **Gradient calibration** of economic-agent parameters (propensity-to-spend, price elasticity, inventory-reorder thresholds) to observed macro aggregates.
3. The **intervention → scenario-distribution** workflow: set an intervention (rate hike, tariff, supply shock), run the differentiable sim, read out a *distribution* of outcomes with gradients telling you which parameters the result is most sensitive to.
4. The **archetype pattern** for injecting LLM behavior at scale.

> **⚠ LICENSE — read before committing a line of code.** AgentTorch is **AGPL-3.0**. [src: github.com] AGPL's network clause means that if you *provide a networked service* built on AGPL code, you must offer the complete corresponding source of your derivative to users of that service. For a commercial hedge fund this is a material risk: a forecasting API or internal-but-networked tool could trigger the copyleft obligation on your proprietary alpha logic. **Three viable paths:** (a) treat AgentTorch as a *research/prototyping* tool only and clean-room reimplement the reusable abstractions (substep loop, Gumbel-softmax calibration) under a permissive license for production; (b) negotiate a **commercial/dual license** with MIT / the authors; (c) architect a strict process boundary so AGPL code runs as an isolated calibration *service* whose outputs (calibrated parameter files) are data, not a derivative work — but get IP counsel to confirm, because "mere aggregation" vs. "derivative" is fact-specific. Do **not** hand-wave this.

---

### 3. MIT AI-LPM — what it adds (and what to drop)

AI-LPM ("AI Large Population Models", media.mit.edu/projects/ai-lpm) is the *research program*; AgentTorch is its open-source engine. [src: media.mit.edu] AI-LPM's conceptual contribution, beyond the engine, is the framing and three "breakthroughs":

1. **LLM agents for heterogeneous micro-behavior.** The thesis that you can get realistic individual diversity by driving agent policies with LLMs (via archetypes), moving from "digital humans" (one detailed agent) to **"digital societies"** (millions of interacting agents with emergent dynamics). [src: media.mit.edu]
2. **Differentiable calibration for macro-fidelity.** The same gradient-calibration capability, but explicitly framed as "learn directly from diverse real-world data sources" so the *macro* behavior matches reality even when you only see aggregates. [src: media.mit.edu]
3. **Decentralized, privacy-preserving, continuous recalibration.** Run models on-device with cryptographic techniques, enabling *real-time* bidirectional feedback: real decisions update the digital model; simulated scenarios feed recommendations back. [src: media.mit.edu]

**Borrow:** (1) the micro-LLM / macro-calibration split — it is exactly our LLM-vs-deterministic discipline instantiated in simulation form; (2) the **continuous-recalibration loop** as a first-class design goal (the economy is non-stationary; a one-shot calibration rots). **Drop (for v1):** the decentralized/on-device privacy-preserving execution. It is a genuine research contribution but irrelevant to a fund running its own GPUs on licensed market data — it adds cryptographic complexity for a privacy property we do not need. Also treat the pandemic/supply-chain demos as *proof the engine works on stationary-ish systems*, not as evidence it works on reflexive markets (see §8).

---

### 4. The layered reference architecture (L0–L8)

```
┌──────────────────────────────────────────────────────────────────────────┐
│ L8  DECISION / PORTFOLIO            [HUMAN + CODE]  PM sizing, risk limits  │
│         ▲ calibrated prob + scenario fan + reasoning trace                 │
│ L7  CALIBRATION & SCORING           [CODE]  isotonic map, Brier/log, drift │
│         ▲ raw prob distribution                                            │
│ L6  AGGREGATION / DRAGONFLY         [LLM+CODE]  crowd-weighted synthesis   │
│         ▲ N persona forecasts + sim readouts                               │
│ ┌────────────────────────────┬────────────────────────────────────────┐   │
│ │ L5a  REASONING ENSEMBLE     │ L5b  SIMULATION  [SIM — AgentTorch]     │   │
│ │ [LLM] bull/bear/structural  │ ABM: Obs→Policy→Transition, archetypes, │   │
│ │ personas, Fermi decompose,  │ Gumbel-softmax, gradient calibration,   │   │
│ │ reference-class proposals   │ intervention → outcome distribution     │   │
│ └────────────────────────────┴────────────────────────────────────────┘   │
│         ▲ retrieved evidence, base rates, calibrated agent params          │
│ L4  BAYESIAN / BASE-RATE ENGINE     [CODE]  prior×LR→posterior, ref-class  │
│         ▲ point-in-time facts & time series                               │
│ L3  RETRIEVAL                       [CODE]  vector + graph + TSDB queries  │
│         ▲ world-state slices as-of T                                       │
│ L2  WORLD-STATE STORE               [CODE]  temporal knowledge graph +     │
│         ▲ normalized, point-in-time    time-series DB + vector store       │
│ L1  INGEST / NORMALIZE / PIT-STAMP  [CODE]  ETL, entity-resolve, vintage   │
│         ▲ raw feeds                                                        │
│ L0  DATA SOURCES                    [CODE+HUMAN]  market, macro, filings,  │
│                                      news, alt-data, census                │
└──────────────────────────────────────────────────────────────────────────┘
          ⟲  L7 scores flow back to L5/L6 (perpetual beta); L2 recalibrates L5b  ⟲
```

**L0 — Data sources** *(CODE + HUMAN, PROPOSED)*. Inputs: licensed market data (prices, vols, flows), macro releases (with vintages), SEC/regulatory filings, news/transcripts, alt-data (card spend, shipping, satellite), and public **census/population statistics** (the calibration targets AgentTorch expects). Humans own licensing and source vetting. Interface: each source emits records with a *source timestamp* and a *knowledge timestamp* (when the fact became knowable).

**L1 — Ingest / normalize / point-in-time stamp** *(CODE, PROPOSED)*. Inputs: raw feeds. Outputs: normalized records with entity resolution (map "AAPL", "Apple Inc.", CIK 0000320193 → one entity ID) and a **vintage** on every revisable series (GDP gets revised; store the as-first-published value *and* subsequent vintages). Tech: a streaming ETL (e.g. Kafka/Flink or a batch Airflow/Dagster DAG), dbt-style transforms. This layer's single most important job is stamping `knowable_at` so L2 can serve the world *as of* any past instant.

**L2 — World-state store** *(CODE, PROPOSED; schema in §5)*. A **temporal knowledge graph** (entities, relations, time-stamped events) backed by three stores: a **graph DB** (Neo4j / TigerGraph / a bitemporal relational model) for entities & relations; a **time-series DB** (TimescaleDB / ClickHouse / kdb+) for prices and macro series with vintages; a **vector store** (Qdrant / LanceDB / pgvector) for embedded text (filings, news) with `knowable_at` metadata. Every record is bitemporal: `valid_time` (when true in the world) and `knowable_at` (when we could have known).

**L3 — Retrieval** *(CODE, PROPOSED)*. Inputs: a query + an **as-of time T**. Outputs: evidence slices guaranteed to contain *nothing* with `knowable_at > T`. This is the leakage firewall — all retrieval is parameterized by T and filtered server-side. Hybrid retrieval: semantic (vector) + structural (graph traversal) + numeric (TSDB range queries).

**L4 — Bayesian / base-rate engine** *(CODE, PROPOSED)*. Inputs: a decomposed question, candidate reference classes (from L5a). Outputs: a prior from empirical base rates, updated by explicit likelihood ratios into a posterior. This is deterministic Bayes — the LLM never does the multiplication, it only *supplies* the reference-class candidates and *estimates* likelihood ratios, which are logged for later scoring.

**L5a — Reasoning ensemble** *(LLM, PROPOSED scaffolding around frontier models)*. Inputs: question + retrieved evidence + base rates. Outputs: K independent forecasts with written reasoning from adversarial personas (bull, bear, structural/mechanistic, historical-analogy, contrarian). Models: a *mixture of model families* (e.g. Claude + others) for genuine "silicon-crowd" diversity, since diversity drives ensemble accuracy. [src: arxiv.org/2402.19379] Each persona does Fermi decomposition (Commandment 2) and proposes reference classes (3).

**L5b — Simulation** *(SIM, REUSED from AgentTorch/AI-LPM)*. Inputs: an intervention/scenario (rate hike, tariff, demand shock) + agent parameters calibrated by L2 data. Outputs: a *distribution* of macro outcomes plus gradient sensitivities. Uses the Observation→Policy→Transition substep loop, LLM archetypes for heterogeneous agents, Gumbel-softmax for differentiability, and gradient-descent calibration. [src: arxiv.org/2507.09901] This is the one layer where we lean hardest on existing code (subject to §2's license caveat).

**L6 — Aggregation / dragonfly** *(LLM + CODE, PROPOSED)*. Inputs: K persona forecasts (L5a) + sim readouts (L5b). Outputs: one synthesized probability + a scenario fan. The synthesizer is an LLM, but the *weights* on each persona come from CODE — their historical calibration (good personas earn weight; miscalibrated ones get down-weighted). This is Tetlock's "dragonfly eye" (Commandment 5) made auditable.

**L7 — Calibration & scoring** *(CODE, PROPOSED — sacred)*. Inputs: raw aggregated probability. Outputs: a calibrated probability via an isotonic/Platt map fit on historical resolutions, plus Brier/log scores when outcomes resolve, plus drift alarms. Detail in §6.

**L8 — Decision / portfolio** *(HUMAN + CODE, PROPOSED)*. Inputs: calibrated probability + scenario fan + full reasoning trace. Outputs: position sizing (Kelly-capped), risk limits, and a human PM gate. The system *forecasts*; humans and risk code *trade*.

**Feedback loops (perpetual beta, Commandment 10):** L7 scores flow back to re-weight L6 and re-prompt/fine-tune L5a; L2's fresh data continuously **recalibrates** L5b (the AI-LPM continuous-recalibration idea). [src: media.mit.edu]

---

### 5. Data schema / world-state as a temporal knowledge graph

The world-state is a **bitemporal temporal knowledge graph**. Three record types:

- **Entities** — `{entity_id, type∈{company, person, country, commodity, sector, instrument}, attributes{...}, valid_from, valid_to, knowable_at}`.
- **Relations** — `{rel_id, head_entity, relation∈{supplies, competes_with, owns, exposed_to, correlated_with}, tail_entity, weight, valid_from, valid_to, knowable_at}`.
- **Events** — `{event_id, type∈{earnings, rate_decision, M&A, shock, filing}, participants[entity_id], payload, occurred_at, knowable_at, source}`.

Numeric series (prices, macro) live in the TSDB keyed by `(series_id, valid_time, vintage, knowable_at)`. Text lives in the vector store with the same `knowable_at` metadata.

**The point-in-time discipline (leakage firewall).** Two clocks on *every* record: `valid_time` (when the fact is true in the world) and `knowable_at` (the earliest instant we could have observed it — publication time, not event time). Every query in L3 carries an **as-of T** and the store returns only records with `knowable_at ≤ T` and, for revisable series, the vintage that was current at T. This single rule is what separates a real backtest from a fantasy: if `knowable_at` is ever set to `occurred_at` for a revised macro series, you have leaked the future and your Brier score is fiction. Enforce it at the storage layer, not in application code, so no retrieval path can bypass it.

---

### 6. Verification / backtest harness (engineering detail)

The harness is the only thing standing between "plausible demo" and "deployable edge." Four components:

1. **Point-in-time store (§5)** — the substrate. Backtests reconstruct the exact world an analyst could have seen at each historical T.
2. **Post-training-cutoff-only evaluation.** LLMs memorize. Any question whose resolution predates the model's training cutoff is contaminated — the model may "recall" the answer rather than forecast it. **Hard rule:** evaluate only on questions that *resolve after the model's training cutoff*, and feed only evidence with `knowable_at ≤ T < cutoff` where possible. Maintain a model-cutoff registry; when you swap model versions, re-partition the eval set. This is the single most common way forecasting benchmarks fool themselves. [src: arxiv.org/2506.01578]
3. **Walk-forward evaluation.** March T forward through history in steps; at each T the system produces a forecast using only `knowable_at ≤ T` data; freeze it; advance to the resolution date; score. No peeking, no refitting on the future. Calibration maps (L7) are themselves fit *only* on resolutions prior to T (expanding or rolling window), never on the whole history.
4. **Brier / calibration dashboards.** Track: **Brier score** (target ≤ ~0.15–0.20 to rival human superforecasters [src: aiimpacts.org]), decomposed into **calibration** (do 70% forecasts happen 70% of the time?) and **resolution/discrimination**; **log score**; **reliability diagrams** per horizon and per question type; per-persona calibration (to drive L6 weights); and **drift** alarms when realized calibration departs from the fitted map (signal to recalibrate). Every forecast persists with its reasoning trace for the Commandment-8 post-mortem.

---

### 7. End-to-end worked trace (one forecast)

**Question (L8 intake):** *"Will US CPI year-over-year print below 3.0% at the next release (as-of T = 2025-02-01)?"*

1. **L3 retrieval @ T.** Pull only `knowable_at ≤ 2025-02-01`: the *first-vintage* prior CPI prints, Fed communications, energy futures, card-spend alt-data, shipping indices. Future revisions of CPI are invisible — the firewall holds.
2. **L5a reasoning ensemble.** Five personas run. The *structural* persona Fermi-decomposes CPI into core-goods, core-services, energy, and shelter sub-forecasts (Commandment 2). Each persona proposes **reference classes** — "months following a 50bp easing cycle," "post-energy-spike disinflation episodes."
3. **L4 base-rate engine.** For each proposed class, CODE computes the empirical frequency of sub-3.0% prints from the point-in-time store → prior ≈ 0.42. The energy persona supplies a likelihood ratio (futures curve implies falling energy contribution); CODE applies Bayes → posterior ≈ 0.55. The LLM never multiplies; it only proposes and estimates.
4. **L5b simulation.** An AgentTorch consumer-and-firm ABM, with spending-propensity and price-pass-through parameters **calibrated by gradient descent** to the latest census + spend aggregates, is run under the current rate path. It returns a *distribution* over next-month inflation with a mode implying ~0.60 probability of sub-3.0%, plus a gradient flag that the result is most sensitive to the shelter-disinflation parameter.
5. **L6 aggregation (dragonfly).** Persona forecasts (0.50–0.62) and the sim readout (0.60) are combined, weighted by each source's historical calibration. Raw aggregate = **0.58**.
6. **L7 calibration & scoring.** The isotonic map (fit only on pre-T resolutions) nudges 0.58 → **0.56** (the model has historically been slightly overconfident in this band). Forecast frozen.
7. **L8 decision.** PM sees 0.56 calibrated probability, a scenario fan (shelter is the swing factor), and the full trace. Risk code Kelly-caps a position in rate/inflation instruments; human gates it.
8. **Resolution & feedback.** CPI prints 2.9% (event = yes). Brier contribution = (1−0.56)² = 0.19. The post-mortem (Commandment 8) notes the shelter persona was best-calibrated → L6 up-weights it; the drift monitor is unmoved. Loop closes.

---

### 8. Honest engineering risks

- **Reflexive markets vs. stationary epidemiology/supply-chains.** AgentTorch's wins are in pandemics and supply chains — systems whose rules *do not change because you modeled them*. Markets are **reflexive**: a tradable, widely-held forecast moves the price and destroys its own edge. The epi/supply-chain validation does **not** transfer for free; expect the SIM layer to be far more useful for *exogenous* real-economy quantities (inflation drivers, demand shocks, physical bottlenecks) than for endogenous price action.
- **Calibration ≠ truth.** Gradient calibration finds parameters that reproduce *aggregate* historical data; many parameter sets fit equally well (identifiability), and a well-fit model can still be structurally wrong about the future. Calibration error bars are *lower bounds* on true uncertainty. MIT's own 2–20× precision claims are relative to surrogate baselines, not absolute correctness. [src: media.mit.edu]
- **Correlated LLM-persona errors.** The "silicon crowd" only helps if errors are *independent*. Personas built on the same base model share blind spots, training-data biases, and the same cutoff — their disagreement can be theater while their errors are correlated. Mitigate with genuinely different model families and by measuring realized error correlation, not assuming it.
- **Compounding pipeline error.** Eight layers multiply failure modes: an entity-resolution miss in L1 poisons L4 base rates; a leaked `knowable_at` in L2 inflates every backtest; a miscalibrated persona drags L6. End-to-end error can dwarf any single layer's. Budget error per layer and test the firewall adversarially.
- **Training-cutoff contamination is insidious.** It is easy to *believe* you excluded contaminated questions and be wrong (model cutoffs are fuzzy; retrieval can smuggle future-dated text). Treat the cutoff registry and `knowable_at` enforcement as security-critical. [src: arxiv.org/2506.01578]
- **Integration + license cost.** Standing up a bitemporal store, a differentiable ABM, a multi-model ensemble, and a walk-forward harness is a multi-engineer, multi-quarter effort — and the **AGPL-3.0 obligation on AgentTorch (§2) must be resolved by counsel before any production networked use.** Underestimating either the integration surface or the license exposure is the most likely way this program stalls.

---

**Sources:** [github.com/agenttorch/agenttorch], [media.mit.edu/projects/ai-lpm], [arxiv.org/abs/2507.09901 — Large Population Models], [arxiv.org/abs/2409.10568 — On the limits of agency in agent-based models], [bdtechtalks.com — Simulating millions of LLM agents with AgentTorch], [lifeitself.org — notes on Superforecasting], [edge.org — Tetlock Master Class], [aiimpacts.org — Good Judgment Project evidence], [arxiv.org/abs/2402.19379 — Wisdom of the Silicon Crowd], [arxiv.org/abs/2506.01578 — Prompt Engineering LLM Forecasting].
