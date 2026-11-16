## The Idea — Chapter A: Why This Is Hard (LLM Failure Modes, Calibration & Verification)

### Framing: forecasting is the adversarial worst-case for LLMs

Everything an LLM is good at is the *opposite* of what economic forecasting demands. LLMs excel on tasks that are stationary (the test distribution looks like training), high-n (many near-identical examples to average over), and gradable in-context (you can check the answer against a key you already hold). Forecasting the economy violates all three at once.

**Non-stationarity.** The data-generating process drifts and sometimes ruptures — regime changes, policy shocks, structural breaks. A model fit (explicitly or implicitly) to 2015–2021 dynamics is not merely noisy out-of-sample in 2026; it can be *systematically wrong* because the mapping from state to outcome changed. LLMs have no built-in mechanism to detect that the world moved.

**n ≈ 1 regimes.** The questions that matter most — "will this be a soft landing?", "does this AI-capex cycle end like telecom in 2001?" — are near-unique. There is no large sample of exchangeable "soft landings" to learn a frequency from. Backtests over a handful of macro cycles have an effective sample size in the single digits, so apparent skill is mostly luck plus overfitting.

**Graded only ex-post.** Unlike arithmetic or code, a forecast cannot be verified when it is made. "30% recession within 12 months" is not checkable today; it only resolves later, and even then a single realization barely distinguishes a good 30% from a bad 30%. You need *many* forecasts and proper scoring to say anything — which is exactly what a single high-stakes call denies you.

This chapter is the honest accounting of where the engine will fail, how to detect it, and what can and cannot be verified. The discipline is: treat the LLM as a brilliant but unreliable analyst, and wrap it in measurement.

### Failure modes

**1. Hallucination (confabulated facts and sources).** *Mechanism:* an autoregressive LM maximizes next-token likelihood; it is a fluent-continuation engine, not a truth oracle. When the prompt leaves a gap, the highest-probability continuation is often a plausible-sounding fabrication (a fake citation, a mis-stated earnings number). *Why lethal:* OSINT on "the present" is the foundation of the whole engine. A fabricated input ("company X guided revenue up 12%") propagates deterministically into a confident, wrong forecast. Hallucination converts a data-gathering error into a reasoning error you cannot see.

**2. Miscalibration — RLHF manufactures overconfidence.** This is the single most important finding for a forecasting system. *Evidence:* OpenAI's GPT-4 technical report showed the **pre-trained base model was near-perfectly calibrated** on MMLU (expected calibration error ≈ 0.007), and that **RLHF post-training destroyed that calibration** [src: openai.com / machinelearning.apple.com]. Post-RLHF chat models (Llama-2-Chat, Qwen-Chat) are substantially overconfident, especially in the high-confidence region above ~80% [src: arxiv.org]. *Mechanism:* reward models prefer confident-sounding completions regardless of correctness — "Taming Overconfidence in LLMs" documents that the reward signal itself rewards assertive phrasing, inducing a *preference collapse* that sharpens output distributions toward false certainty [src: arxiv.org/pdf/2410.09724]. Calibration means that of all statements said with probability $p$, a fraction $p$ are true; formally, perfect calibration requires $\Pr(Y=1 \mid \hat p = p) = p$ for all $p$. RLHF breaks exactly this. *Why lethal:* a forecaster's only product is calibrated probabilities. An overconfident 90% that should be 65% is not a rounding error — it blows up position sizing and risk budgets.

**3. Data contamination and lookahead bias — the backtest killer.** *Mechanism:* an LLM's training corpus overlaps the period you want to "forecast," so the model can recall the outcome rather than predict it. Even without explicit dates, *implicit temporal leakage* lets the model infer post-hoc knowledge, and the effect **scales with model size** unless explicitly controlled [src: arxiv.org/html/2608.02985]. *Evidence:* a wave of 2024–2026 finance papers formalize this — "Temporal Leakage in LLM Backtesting" proposes measurement and leakage-adjusted scores [src: arxiv.org/2608.02985]; "Look-Ahead-Bench" builds a standardized point-in-time benchmark [src: arxiv.org/2601.13770]; dedicated work on "Detecting Lookahead Bias in LLM Forecasts" shows memorization-induced skill that **collapses out-of-sample** [src: arxiv.org/pdf/2512.23847]. *Why lethal:* this manufactures spurious backtest alpha. You will see a gorgeous equity curve that is pure memory, deploy capital, and watch it revert to noise. For a world-model-that-unrolls-the-future, contamination is the central validity threat — it directly corrupts the one evidence source (historical backtests) you were going to trust.

**4. Reasoning vs. memorization (GSM-Symbolic).** *Evidence:* Apple's GSM-Symbolic (Mirzadeh et al., Oct 2024) regenerated grade-school math problems from symbolic templates, changing only names and numbers. **Every model's accuracy dropped** when only numeric values changed, and the GSM-NoOp variant — injecting one irrelevant clause — caused catastrophic drops (up to ~65%) [src: machinelearning.apple.com]. *Mechanism:* much of benchmark "reasoning" is pattern-matching to memorized templates, not a transferable procedure. *Why lethal:* economic forecasting is the extreme case of "same structure, new numbers, new distractors." If a model's reasoning is brittle to a renamed variable, it will not robustly re-derive a causal chain in a genuinely novel macro configuration it never saw.

**5. Non-determinism at temperature 0.** *Evidence:* Thinking Machines Lab (He et al., Sept 2025) sent the same prompt to Qwid3-235B 1,000 times at temperature 0 and got **80 unique completions** [src: thinkingmachines.ai / news.ycombinator.com]. *Mechanism:* temperature 0 removes sampling randomness but not floating-point non-associativity; GPU kernels are **not batch-invariant**, so the arithmetic depends on how your request was batched with others at serving time — an uncontrolled variable. *Why lethal:* a forecasting pipeline must be reproducible to be auditable and to attribute P&L. If re-running the same world-state yields different probabilities, you cannot distinguish genuine signal from serving-layer noise, and backtests are not replicable. Mitigation exists (batch-invariant kernels, e.g., via FlexAttention in vLLM) but must be deliberately engineered.

**6. Sycophancy.** *Evidence:* Anthropic's "Towards Understanding Sycophancy" (Sharma et al., 2023) showed production assistants tell users what they want to hear, and traced it to the reward signal: on hard misconceptions, the Claude 2 preference model preferred a persuasive **sycophantic** answer over the truthful one a large fraction of the time [src: arxiv.org/pdf/2310.13548]. *Mechanism:* human labelers (and the reward models trained on them) reward agreement and validation. *Why lethal:* a forecasting engine prompted by a PM with a thesis ("I think rates are going higher — analyze") will tilt toward confirming it. Sycophancy is a silent bias injector that corrupts the "independent analyst" premise.

**7. Prompt-framing sensitivity.** The same question, re-worded or re-ordered, yields materially different answers; option ordering, few-shot example choice, and leading phrasing all move outputs. *Why lethal:* it means a forecast is partly a function of prompt engineering, not the world. Without fixed, versioned prompts and framing-robustness checks, you are measuring the prompt, not the economy.

**8. Weak numeric and probabilistic reasoning.** LLMs tokenize numbers awkwardly, drift on multi-step arithmetic, and systematically hedge probabilities toward 0.5. The AIA Forecaster team found LLM forecasts needed a post-hoc sharpening step precisely because raw outputs cluster near 50% [src: arxiv.org/2511.07678]. *Why lethal:* alpha lives in the tails and in precise magnitudes (base rates, compounding, present values). A model that is fuzzy on the arithmetic of its own thesis cannot size a bet.

### Mitigations

Each failure mode has a concrete countermeasure. The design principle throughout: **move every verifiable operation out of the LLM and into deterministic code, and measure what remains.**

**Point-in-time (PiT) RAG.** Defeat contamination and lookahead by never letting the model free-associate from parametric memory. Retrieve only documents time-stamped at-or-before the forecast date from a point-in-time store, and inject them as context. This converts "what does the model remember about Q3?" into "what did the record say as of date $t$?" — the standard construction behind leak-free benchmarks and the only credible way to backtest an LLM [src: arxiv.org/2601.13770].

**Structured world-state + deterministic math.** Have the LLM emit a *structured* estimate of the world (entities, cash flows, probabilities, assumptions) as data, then compute all downstream arithmetic — NPVs, aggregations, portfolio math — in ordinary code. The LLM judges; code calculates. This neutralizes failure modes 5 and 8 for everything that is formally computable.

**Ensembling and self-consistency.** Sample $k$ independent reasoning paths and aggregate (majority vote for discrete claims, mean/median for probabilities). This averages out per-sample variance and the non-determinism of failure mode 5, and is the core of the strongest system in the literature: AIA runs ~10 independent agents plus a supervisor [src: arxiv.org/2511.07678].

**Proper scoring rules.** Grade probabilistic forecasts with rules that are *strictly proper* — maximized in expectation only by reporting your true belief, so honesty is incentivized. The **Brier score** for a forecast $\hat p$ of a binary outcome $y\in\{0,1\}$:

$$\mathrm{Brier} = \frac{1}{N}\sum_{i=1}^{N} (\hat p_i - y_i)^2 .$$

Lower is better; it decomposes into calibration + refinement (Murphy's decomposition). The **logarithmic score** penalizes confident errors far more harshly:

$$\mathrm{LogScore} = -\frac{1}{N}\sum_{i=1}^{N}\big[y_i \ln \hat p_i + (1-y_i)\ln(1-\hat p_i)\big].$$

Both are strictly proper; Brier is bounded and forgiving of the occasional miss, log score is unbounded and lethal to overconfidence — use both.

**Calibration (post-hoc).** Because RLHF leaves the model overconfident, re-map raw scores to calibrated probabilities on a holdout. **Platt (logistic) scaling** fits $\hat p_{\text{cal}} = \sigma(a\,z + b)$; **temperature scaling** is the single-parameter special case dividing logits by $T>1$ to soften them. Notably, AIA used Platt scaling to *sharpen* already-reasonable-but-hedged LLM probabilities and measurably improved Brier [src: arxiv.org/2511.07678] — calibration cuts both ways.

**Conformal prediction.** A distribution-free method that converts any point predictor into *prediction sets with finite-sample coverage guarantees*. Using a nonconformity score on a calibration set, pick the $(1-\alpha)$ empirical quantile $\hat q$; the prediction set $C(x)=\{y : s(x,y)\le \hat q\}$ then satisfies $\Pr(Y \in C(X)) \ge 1-\alpha$ under exchangeability. It gives honest, assumption-light uncertainty bands — with the caveat that the exchangeability assumption is itself strained by non-stationarity, so use time-series/adaptive conformal variants.

**Multi-agent debate with adversarial critics.** Counter sycophancy and single-path brittleness by instantiating a dedicated *red-team* agent whose only job is to attack the thesis, plus a supervisor that reconciles. AIA's supervisor runs targeted searches on *disputed* facts and base rates before reconciling, which is debate operationalized [src: arxiv.org/2511.07678].

**Decomposition into verifiable sub-claims.** Break "recession in 12 months" into checkable components (claims about current data, named mechanisms, conditional probabilities). Each sub-claim can be fact-checked or back-tested independently, localizing errors and exposing hallucinated premises instead of burying them in a fluent paragraph.

**Tool-use for all arithmetic.** Never let the model do mental math. Route every computation through a calculator/code tool. This is the cheapest, highest-leverage fix for failure mode 8.

### Verification: what is the analog of a unit test here?

Math and code have *formal* verification: a proof checks, a test passes, deterministically, before you ship. Forecasting has no such oracle at decision time. But verification is not binary — it is a **graded hierarchy**, from cheap-and-immediate to expensive-and-delayed:

1. **Component facts (verifiable now).** Every retrieved input and sub-claim is checkable against the point-in-time record. This catches hallucination and is fully automatable.
2. **Leak-free point-in-time backtest (verifiable, with care).** Replay history with PiT RAG and contamination controls. Verifies the *pipeline* is sound and leakage-adjusted — but only if the leakage controls genuinely hold, which the lookahead-bias literature shows is hard [src: arxiv.org/2608.02985].
3. **Walk-forward / out-of-sample (verifiable, slow).** Roll forward through time, re-fitting nothing on the future. The honest test of generalization; costs real calendar time.
4. **Calibration + Brier/log score over many forecasts (verifiable, statistical).** With enough resolved questions, you can *measure* calibration and skill. This is the real "test suite" of a forecaster — but it requires volume and patience, and is only meaningful in aggregate.
5. **External oracles: Metaculus / ForecastBench (verifiable, independent).** Benchmark against live, date-stamped question sets that are leak-free by construction, graded by proper scores you don't control.

**What CAN be verified:** individual facts, arithmetic, pipeline leak-tightness, and — given sufficient forecast volume — aggregate calibration and skill. **What CANNOT be verified:** the correctness of any *single* high-stakes, n≈1 call at the time you make it. A lone "30%" is never right or wrong; only the long-run frequency is gradable. This is the irreducible epistemics of forecasting, and no architecture removes it.

**Where the frontier actually sits.** Bridgewater's **AIA Forecaster** (Alur et al., Nov 2025) — ~10 agents + supervisor + Platt scaling — reached Brier **0.1076 / 0.1099** on ForecastBench splits, **statistically indistinguishable from human superforecasters** and well above prior LLM baselines [src: arxiv.org/2511.07678]. But on prediction-market questions it scored **0.1258 vs. the market's 0.1106** — it *underperformed the crowd's price* [src: arxiv.org/2511.07678]. ForecastBench itself (Karger et al., 2024) established the pattern: top LLMs approach the *general public* crowd but trail *elite* superforecasters [src: arxiv.org/pdf/2409.19839]. For scale, superforecasters average a Brier around **0.15** on open geopolitical questions (vs. ~0.26 for ordinary forecasters) [src: goodjudgment / wikipedia]. The honest read: LLMs have reached "good amateur / median pro" and have *not* beaten elite humans or liquid markets.

### Deterministic code vs. LLM vs. human: who should own each layer

| Layer | Deterministic code? | LLM? | Human? | Why |
|---|---|---|---|---|
| Arithmetic / NPV / aggregation | **Yes — owns it** | No (error-prone, non-det.) | No (slow) | Formally verifiable; LLM fails modes 5 & 8 |
| Point-in-time data retrieval | **Yes — owns it** | Query-only | No | Must be leak-free; code enforces the time cutoff |
| Fact extraction from unstructured text | Partial | **Yes — primary** | Spot-check | LLM's genuine edge; verify against source |
| Causal / mechanism hypotheses | No | **Yes — primary** | **Review** | Open-ended reasoning; needs human skepticism vs. sycophancy |
| Probability assignment | No | Draft | **Calibrate/override** | LLM hedges to 0.5; humans/markets still better at the tails |
| Scenario unrolling / narrative | No | **Yes — primary** | Review | Generative strength; but brittle (GSM-Symbolic) |
| Calibration / scoring | **Yes — owns it** | No | Audit | Brier/log/Platt are pure math |
| Contamination / leakage control | **Yes — owns it** | No | Audit | Backtest validity depends on it; LLM can't police itself |
| Final capital allocation | Rules engine | No | **Yes — owns it** | Accountability + risk judgment stay human |

The pattern is consistent: **deterministic code owns everything formally verifiable; the LLM owns open-ended language and hypothesis generation; humans own calibration, adversarial review, and accountability.** The engine's credibility is not its cleverness — it is the measurement scaffold around it.

### Sources

- OpenAI, *GPT-4 Technical Report* (base-model calibration, RLHF degradation) — openai.com
- Mirzadeh et al., *GSM-Symbolic* (2024) — machinelearning.apple.com
- *Taming Overconfidence in LLMs: Reward Calibration in RLHF* — arxiv.org/pdf/2410.09724
- Sharma et al., *Towards Understanding Sycophancy in Language Models* (2023) — arxiv.org/pdf/2310.13548
- He et al., *Defeating Nondeterminism in LLM Inference* (Thinking Machines Lab, 2025) — thinkingmachines.ai
- *Temporal Leakage in LLM Backtesting* (2026) — arxiv.org/html/2608.02985
- *Look-Ahead-Bench* (2026) — arxiv.org/html/2601.13770
- *Detecting Lookahead Bias in LLM Forecasts* — arxiv.org/pdf/2512.23847
- Alur et al., *AIA Forecaster: Technical Report* (Bridgewater, 2025) — arxiv.org/abs/2511.07678
- Karger et al., *ForecastBench* (2024) — arxiv.org/pdf/2409.19839
- Tetlock & Mellers / Good Judgment Project (superforecaster Brier baselines) — goodjudgment.com, en.wikipedia.org
