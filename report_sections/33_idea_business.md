## The Idea — Chapter D: Business Model, Economics & Roadmap

A world-model-for-the-economy is a research artifact until it is attached to a revenue mechanism. This chapter is about the attachment: who pays, how much, what it costs us to serve them, and in what order a two-person team (Daniel Nurieli on the reasoning/verification engine, Daniel Grinberg on OSINT/data/BD) should build. The thesis of the chapter is simple: the three ways to monetize a forecasting engine are not interchangeable, they trade off *proof burden* against *capital intensity*, and the right sequence is to be your own first customer, prove calibration out-of-sample, and only then decide whether to scale as a fund, a SaaS, or a data business.

### The three archetypes, compared

**(1) Proprietary trading / hedge fund — "be your own customer."** You trade the signal with your own (and eventually LPs') capital. Revenue is P&L: the spread between what the engine predicts and what the market priced. No sales cycle, no customer to convince — the market is the referee and settles in cash daily.

- *Who pays:* nobody, at first — you fund it. Later, LPs pay via management + performance fees. The classic structure has compressed from "2 and 20"; large quant managers now run roughly 1.0–1.5% management and 15–25% performance [src: alpha-maven.com], though the extreme outlier Renaissance Medallion charged 5% and 44% precisely because its Sharpe was absurd [src: navnoorbawaresearch.com].
- *Comps & economics:* Bridgewater (~$100B+ AUM, macro, discretionary-systematic blend) and Two Sigma (~$70B AUM at end-2025 [src: alpha-maven.com], pure quant) are the scale endpoints. The instructive comp is Medallion: ~66% gross / 39% net annualized 1988–2018, Sharpe historically >2.0 and spiking to 7.5 in 2004 [src: navnoorbawaresearch.com]. The lesson is not "we'll be Medallion" — it's that a *small-capacity, high-Sharpe* strategy is worth more per dollar than a large-capacity mediocre one, and a 2-person team is structurally in the small-capacity regime.
- *Pros for a 2-person team:* self-validating (no customer lies to you), self-funding if it works, keeps 100% of the alpha, no MiFID/SaaS go-to-market. *Cons:* alpha is brutally hard to prove and easy to fool yourself about; drawdowns can wipe the book before the edge is confirmed; capital-constrained unless you raise an actual fund (which carries regulatory load — see Risks).

**(2) B2B forecasting / intelligence SaaS — sell the engine to funds & corporates.** You never take market risk; you sell probabilistic forecasts, scenario analysis, and "what does this filing/satellite feed imply" answers as a subscription.

- *Who pays:* hedge funds, asset managers, corporate strategy/IR teams, consultancies. This is the AlphaSense / Hebbia / Rogo lane.
- *Comps & economics:* AlphaSense surpassed **$600M ARR** at a **$7.5B** valuation on its 2026 round, having crossed $400M ARR in March 2025 and $500M in Oct 2025 — ~50%/yr growth at scale [src: alpha-sense.com]. **Rogo** ("AI analyst for Wall Street") went ~$2M ARR (2024) → **~$15M (2025)** → past $50M (2026), and raised to a **$2B** valuation (~40x ARR) [src: sacra.com, cryptobriefing.com]. **Hebbia** (multi-agent document analysis) hit ~$17M ARR end-2024, was *profitable* while raising its a16z-led Series B at a **$700M** valuation (~54x), and reportedly ~$30M ARR end-2025 [src: sacra.com, research.contrary.com]. **Aaru** (multi-agent social/behavior simulation — the closest "world model" comp) raised a **>$50M Series A at a ~$1B headline valuation** in Dec 2025, selling predictions to Accenture, EY, IPG [src: finance.yahoo.com, theaiinsider.tech].
- *Pros for a 2-person team:* customer money validates demand and funds the build without diluting on a trading track record; recurring revenue is VC-financeable at high multiples (see the 40–54x ARR comps). *Cons:* real sales motion into a skeptical, compliance-heavy buyer; you must *prove* the forecasts are good *to someone else*, which is a higher bar than proving them to yourself; crowded lane (AlphaSense, Rogo, Hebbia, Bloomberg all adjacent).

**(3) Data / signal licensing — sell the derived signal, not the engine.** You package the engine's outputs (probability of event X, nowcast of metric Y, a scored feed) and license it to quants who plug it into *their* models.

- *Who pays:* systematic funds, data aggregators, and increasingly AI labs buying structured data. The alt-data market was ~$6–12B in 2025 depending on definition, with large ($1B+) funds spending **$15–60M/yr** on alt-data and the top-20 funds ~$40–60M each [src: imarcgroup.com, kadoa.com].
- *Comps & economics:* this is the "sell to the Two Sigmas" model — think of the derived-signal vendors sitting on top of satellite (Orbital Insight-style, $200K–$800K/yr per feed), AIS/shipping, and card-transaction data. Margins are high once the pipeline exists; the pitch is "our signal has incremental IC/Sharpe uncorrelated with your book."
- *Pros:* highest gross margin, no market risk, plays directly to Grinberg's OSINT edge. *Cons:* funds demand a *proven, backtested, point-in-time-clean* signal before they pay a cent — the longest proof cycle of the three; you capture a sliver of the value you create; and you're one line item in a $40M budget, easy to cut.

#### Which to start with

Start as **your own customer (Archetype 1) at tiny scale**, run it as a *proof engine* not a business, and keep Archetypes 2 and 3 as the monetization fork you take *after* the calibration gate. Rationale: the binding constraint for this idea is not demand or distribution — it's *epistemic*: does the engine actually forecast better than the market/consensus, out-of-sample, after the model's training cutoff? Archetype 1 answers that question fastest and most honestly, with the smallest apparatus, and with no one to sell to while the answer is still unknown. A live book of even $25–100K produces an un-fakeable Brier/calibration record. That record is simultaneously (a) the thing that makes a fund raise-able, (b) the proof a SaaS buyer demands, and (c) the track record a data licensee underwrites. One artifact unlocks all three paths — so build it first.

### Unit economics (rough, assumptions flagged)

**Archetype 1 — the fund.** The edge you need is modest in Sharpe terms but hard in practice. Medium-frequency statistical-arb targets Sharpe 1.5–3.0; longer-horizon macro/event 0.5–1.5 [src: quantt.co.uk]. Suppose we target a **Sharpe ~1.0–1.5** event/macro book — believable for a genuinely differentiated signal, below the quant-arb stars.

- *Capital:* a $25–100K personal proof book (phase 1) → a $1–5M friends-and-family / seed book → a $10–50M fund if the gate passes.
- *Costs (annual, at $1–5M book):* inference is now negligible — token prices fell ~1,000x in three years, frontier generation from ~$30/M tokens (GPT-4, 2023) to **<$0.50/M** in 2025 [src: theinnovationattorney.com, deploybase.ai]. Even 50M reasoning-tokens/day ≈ $25/day ≈ $9K/yr. Data is the real cost: a lean OSINT stack (filings APIs, one satellite/AIS feed, news) is plausibly **$50–250K/yr** vs. the $15–60M a big fund spends — our *entire* edge is extracting more from cheap public data. At a $5M book, 1.0 Sharpe ~ 10–15% net return ~ $500–750K P&L; data+compute+two founders' minimal draw is ~$0.4–0.6M, so the book must reach **~$5–10M to self-sustain**. Below that it's R&D funded by savings/pre-seed.
- *Key assumption:* that the edge survives capacity — a 2-person, small-book strategy that degrades at $50M is *fine* for us and a *dealbreaker* for Two Sigma, which is exactly why the niche is defensible.

**Archetype 2 — SaaS.** Model it on the comps. ACV for a fund-facing intelligence product is roughly **$25–150K/seat-or-team** (AlphaSense/Rogo territory; Rogo reports 50,000+ finance users). Assume:

- *ACV* $60K, *CAC* $30–60K (enterprise finance sales is expensive; realistic CAC:LTV only works if net revenue retention >120%, which the comps show is achievable — Rogo/Hebbia both ~15x'd revenue in 18 months).
- *Gross margin:* here's the "why now" kicker — because inference collapsed, the dominant COGS in a 2023 LLM SaaS is now a rounding error. Even a query-heavy user burning 100M tokens/mo costs ~$50/mo to serve against a $5K/mo seat → **>90% gross margin**, in line with the 40–54x ARR multiples investors are paying [src: sacra.com]. *Assumption:* support/data-licensing passthrough is the real COGS, not GPUs.

**Archetype 3 — data licensing.** Price per signal feed **$100–500K/yr** (benchmarked to the $200–800K satellite-derived feeds funds already buy [src: kadoa.com]). Near-zero marginal COGS, so ~95% gross margin, but *long* sales cycle and you need 5–10 fund logos to make it a business ($1–3M ARR). Capital-light, proof-heavy.

### Why now — the specific tailwinds

The idea was not buildable by two people in 2021. Six waves changed that:

1. **Long-context + reasoning LLMs.** Models now ingest entire 10-Ks, earnings transcripts, and multi-source dossiers in one context and *reason* over them (chain-of-thought, tool use) rather than pattern-match. The "world model" is partly latent in a frontier model's weights; our job is scaffolding and verification, not training a foundation model.
2. **Inference cost collapse.** ~1,000–1,200x drop in 3–5 years, to <$0.50/M tokens [src: theinnovationattorney.com, deploybase.ai]. This is the single biggest enabler: it makes *ensemble/Monte-Carlo-style simulation* — running the world forward thousands of times per forecast — economically trivial. A technique that cost $300 per forecast in 2023 costs $0.30 now.
3. **OSINT / alt-data commoditization.** Satellite, AIS ship-tracking, and filings/news APIs that were six-figure institutional-only feeds are now accessible à la carte. Grinberg's edge is assembling a *cheap* composite that approximates what a big fund pays $40M for. The alt-data market is $6–12B and growing ~20%/yr [src: imarcgroup.com].
4. **MiFID II coverage gaps.** Research unbundling cut analyst coverage ~12% on the LSE main market, hitting small/mid-caps hardest — entire SME names lost coverage [src: onlinelibrary.wiley.com, researchgate.net]. That is a structural *information vacuum* an automated analyst can fill where no human sell-side analyst is economically present.
5. **Agent frameworks.** Tool-using, multi-step agent harnesses (the kind documented in this project's harness chapters) are now standard engineering, not research. Orchestrating "gather → simulate → score → size" as an agent pipeline is a weekend's plumbing, not a PhD.
6. **Differentiable ABMs (AgentTorch).** Agent-based models you can backprop through let you *calibrate* a simulated economy to real data and get gradients/uncertainty, not just point outputs. This is the bridge from "LLM vibes a forecast" to "LLM-conditioned simulator with quantified uncertainty" — the thing that makes a calibration score meaningful.

Aaru's $1B Series A for exactly "multi-agent simulation of human behavior → predictions" [src: finance.yahoo.com] is the market voting that *this specific shape* is fundable right now.

### Fundraising — VC or bootstrap?

Honest answer: **bootstrap the proof, then it's VC-fundable as a SaaS — and arguably better bootstrapped as a fund.**

- *The fork is about what you're selling.* If you scale as **Archetype 2/3** (software/data), it is highly VC-fundable: the comps raised against ARR at 40–54x, and the *category* (AI-for-finance / synthetic research) is hot — AlphaSense $1.8B total raised, Rogo $344M, Hebbia $161M, Aaru >$50M Series A [src: sacra.com, finance.yahoo.com]. A pre-seed here is a story + a calibration track record; a seed is early ARR.
- *If you scale as **Archetype 1** (a fund), traditional VC is the wrong instrument* — you don't sell equity in a fund to VCs, you raise LP capital against a track record and GP commitment. That's a different motion (allocators, not Sand Hill), and it demands the regulatory apparatus (registration/compliance) and typically 12–24 months of audited performance.
- *Realistic path:* **Pre-seed ($0.5–1.5M)** on team + the calibration result (see gate below) to fund 12–18 months of two founders + data budget. **Seed ($4–8M)** once you have *either* a live-book Sharpe track record *or* 3–5 design-partner logos paying for forecasts. **The milestone that unlocks the raise is not an MVP — it's the out-of-sample Brier score.** No investor sophisticated enough to fund this will be moved by an in-sample backtest; they will be moved by a post-training-cutoff calibration curve on a live book. That is the asset.

*Low-confidence flag:* AI-finance valuations in 2025–26 are frothy (40–54x ARR); if the cycle turns, the SaaS path's raise-ability compresses faster than the fund path's, which depends only on P&L.

### Team & first hires

- **Daniel Nurieli — the engine & verification.** Owns the reasoning harness, the simulation/ensemble layer, the scoring/calibration loop, and risk sizing. This is the epistemically load-bearing role: whoever owns verification owns whether the thing is real.
- **Daniel Grinberg — OSINT, data & BD.** Owns the data pipeline (satellite/AIS/filings/news ingestion, point-in-time hygiene), vendor relationships, and — in the SaaS/data fork — the first customer conversations. The data moat and the go-to-market both live here.
- **First 2–3 hires (post-gate, post-seed):**
  1. **Quant/ML research engineer** — harden backtesting, point-in-time data correctness, and the sizing model. The first hire because "is the edge real and clean?" is the whole company.
  2. **Data engineer** — productionize and monitor the OSINT pipeline so it's not two founders babysitting feeds.
  3. **Fork-dependent third hire:** a *compliance/fund-ops* person if Archetype 1, or a *founder-led-sales / forward-deployed engineer* if Archetype 2 (the Hebbia/Rogo playbook is FDEs embedded in funds).

### Roadmap (0–18 months)

**0–3 months — Proof skeleton.** Build the end-to-end pipeline on a *narrow* domain (e.g. event forecasting on a basket of covered-by-nobody small/mid-caps, or macro-release nowcasts). Wire: OSINT ingest → LLM reasoning/simulation ensemble → probabilistic forecast → paper-trade ledger → Brier/log-loss/calibration scoring. *Milestone:* a running system emitting dated, probabilistic, scored predictions daily. No money at risk yet.

**3–6 months — Live micro-book + the GO/NO-GO GATE.** Put **$25–100K** of real capital behind the signal and run strictly **out-of-sample, after the model's training cutoff** (so there's zero leakage/memorization). *The gate:* a statistically meaningful **Brier score and calibration curve that beats the naive/consensus baseline on live, post-cutoff forecasts.** Concretely — well-calibrated (reliability diagram near diagonal) *and* a positive, cost-aware edge over ≥100+ independent forecasts. **If it passes, proceed. If it fails after honest iteration, stop or pivot the approach — do not raise money against a backtest.** This is the single most important line in the chapter.

**6–12 months — Scale the proof + choose the fork.** With a passing gate, (a) grow the book toward $1–5M and/or (b) onboard 2–3 *design-partner funds* who pay for the forecast feed. Use the 6 months of live track record to raise **pre-seed/seed**. Decide the archetype based on *where the pull is*: if LPs want the P&L, go fund; if funds want the signal/software, go SaaS/data. Make the first 1–2 hires.

**12–18 months — Institutionalize.** Fund path: audited track record, compliance/registration, $10–50M target. SaaS/data path: convert design partners to paying ARR, formalize product, and raise seed against early ARR + retention. Either way the north star is the same compounding asset: a *lengthening, un-fakeable, out-of-sample calibration record*.

### Risks & mitigations

- **Alpha is hard to prove / easy to fool yourself.** *Mitigation:* the whole roadmap is structured around one discipline — *post-training-cutoff, out-of-sample, live-money* scoring with pre-registered baselines. No in-sample backtest is ever treated as proof. The gate is deliberately brutal.
- **Regulatory load (fund path).** Running others' money triggers registration/compliance (jurisdiction-dependent). *Mitigation:* stay on personal capital through the gate; only take the regulatory hit *after* the edge is proven, and budget a compliance hire into the seed. The SaaS/data fork sidesteps this entirely — a strong reason to keep it open.
- **Reflexivity / signal decay.** If the edge comes from public OSINT, others can find it; and acting on it can move the price. *Mitigation:* stay small-capacity (our structural advantage), and compete on *reasoning/synthesis* over commodity data rather than on possessing unique data — the extraction is the moat, not the feed.
- **Key-person risk (two founders, deep specialization).** *Mitigation:* document the harness and data pipeline from day one (this project already does), and make the first two hires exactly the single-points-of-failure (research eng, data eng).
- **Moat durability.** Frontier models commoditize; today's scaffolding is tomorrow's API feature. *Mitigation:* the durable asset is not the prompt or the model — it's (a) the proprietary *calibration/track-record data flywheel* (every forecast scored becomes training/validation signal competitors lack) and (b) Grinberg's assembled cheap-OSINT composite. Bet the moat on the flywheel and the data assembly, not on a model advantage that erodes every six months.

**Bottom line:** be your own first customer, let the market grade the homework, and treat the out-of-sample Brier score as the one gate that converts a research idea into a fundable company — in whichever of the three business models the proof points you toward.
