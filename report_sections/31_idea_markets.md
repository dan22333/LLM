## The Idea — Chapter B: Where To Point It (Markets, Data & Worked Examples)

A world-model-for-the-economy is only as good as the arena you aim it at. Point a superforecasting engine at S&P 500 mega-caps and you are competing against ten thousand analysts, two dozen pod shops, and markets that price public information in milliseconds. Point it at a thinly-covered European power curve, an orphaned Nordic industrial small-cap, or a Phase 3 readout in a niche indication, and you are competing against a handful of overworked specialists and a lot of nobody. The edge is not the model. The edge is the *mismatch* between how much structured reasoning a question rewards and how little the incumbents bring to it. This chapter builds the selection framework, scores the candidate domains, and then goes deep on the three beachheads I would actually start with — with named data feeds and worked examples — before laying out the sequencing.

### The Selection Framework — Six Criteria

I score every candidate domain on six axes, 1–5. They are not equally weighted; one dominates, and I will explain why.

**1. Unmet need.** Is there money actively looking for this answer and failing to get it cheaply? A domain can be hard *and* ignored (good) or hard *and* saturated (bad). Unmet need is the gap between demand for a forecast and the supply of competent forecasters.

**2. Data / OSINT-addressability.** Can the decisive variables be observed from open or cheaply-licensed sources — filings, regulatory disclosures, satellite/AIS, weather models, trial registries — rather than from inside-the-tent private data? An LLM world-model's comparative advantage is *fusing many public streams into a judgment faster and more consistently than a human*. If the alpha lives in a Bloomberg terminal that everyone already has, you have no edge; if it lives in a proprietary dataset you cannot buy, you cannot play. The sweet spot is public-but-unintegrated.

**3. Verifiability & feedback speed.** How quickly and how unambiguously does reality grade your forecast? A power price settles every hour. A trial reads out on a known date with a binary answer. A 10-year geopolitical call grades... never, usefully.

**4. Competition / whitespace.** How many capable, well-resourced competitors are already here? Mega-cap equities and macro rates are crowded; EU SMID equities and single-complex commodities are not.

**5. Moat.** Once you build the pipeline and the track record, how defensible is it? Moats here come from (a) a compounding, timestamped forecast record that is expensive to replicate, (b) assembled-and-cleaned data pipelines, and (c) domain-specific scaffolding/prompts that encode hard-won structure.

**6. Willingness-to-pay.** Even with edge, can you monetize — via a fund, a research subscription, a signal feed, or sponsored coverage? Some truths are valuable but unsellable.

**Why feedback speed dominates for a self-improving engine.** The entire thesis rests on *compounding* — an engine that forecasts, gets graded, and updates. That loop's clock-rate is set by criterion 3. A domain that grades you hourly (power) or on scheduled binary dates (trials, PDUFA) lets you run thousands of scored forecasts per year; a domain that grades you once a decade (secular geopolitics) gives you almost no gradient to learn from, and no track record to sell inside a fundable horizon. Fast, clean feedback is what converts "a clever model" into "a measurably-calibrated model," which is the only thing an allocator or subscriber will pay for. State-of-the-art LLM forecasters are improving at roughly 0.9 Metaculus Elo points per month and are projected to reach human-superforecaster parity in late 2026 [src: lesswrong.com] — but that trajectory only helps *you* if your chosen arena produces enough graded questions to measure and harvest the improvement. So I weight feedback speed roughly double any other single criterion.

### The Scored Ranking Table

Scores are 1–5 (5 = best). "WTP" = willingness-to-pay. The total is a simple sum (feedback speed counts once in the table, but note the tie-breaking rule above).

| Domain | Unmet need | Data/OSINT | Feedback speed | Whitespace | Moat | WTP | **Total** |
|---|---|---|---|---|---|---|---|
| **European power / gas complex** | 4 | 5 | 5 | 4 | 4 | 4 | **26** |
| **Under-covered EU/global SMID equities** | 5 | 4 | 3 | 5 | 4 | 4 | **25** |
| **Biotech clinical-trial catalysts** | 4 | 5 | 4 | 3 | 3 | 4 | **23** |
| Shipping / freight & commodity flows | 4 | 5 | 4 | 3 | 3 | 3 | **22** |
| Corporate credit / distressed | 4 | 3 | 3 | 3 | 4 | 4 | **21** |
| Insurance / catastrophe | 4 | 4 | 3 | 4 | 3 | 3 | **21** |
| M&A / event-driven | 3 | 4 | 4 | 2 | 3 | 4 | **20** |
| Macro / rates | 3 | 4 | 4 | 1 | 2 | 4 | **18** |
| Geopolitics / sovereign risk | 4 | 3 | 2 | 4 | 2 | 2 | **17** |

The top three — European power/gas, EU/global SMID equities, and biotech catalysts — separate cleanly. Each wins on a different axis (power on feedback speed, SMID on whitespace+unmet-need, biotech on clean-binary verifiability), and together they let you sequence from fast-feedback training ground to self-funding product. The deep dives follow.

---

### Deep Dive 1 — The European Power & Gas Complex (the training ground)

**The inefficiency and its size.** European short-term power is the richest fast-feedback arena in the world right now, because the system is being flooded with weather-driven, hard-to-forecast renewable supply while retaining physical, hourly settlement. There are 190+ GW of intermittent capacity on the system, "where even small weather shifts leave gaps between expected and actual generation that must be closed before delivery" [src: arxiv.org]. Those gaps are literally forecast errors turned into price moves: the intraday market exists to correct day-ahead forecast errors, and renewable forecast errors directly drive intraday prices with asymmetric effects for over- vs under-supply [src: arxiv.org]. The volatility hierarchy is explicit and exploitable — "the imbalance price exhibits the highest volatility, the day-ahead price is the smoothest, and the intraday price lies in between," measured over 2023–September 2025 [src: arxiv.org]. The volume is enormous: in 2025, 918 TWh traded on EPEX SPOT spot markets and 12,574 TWh on power derivatives; EEX Group power totalled 13,494 TWh [src: epexspot.com, eex.com]. November 2025 alone saw 59,147 GWh day-ahead and 20,774 GWh intraday on EPEX [src: epexspot.com]. A model that shaves even a few percent off the consensus forecast error on the intraday/imbalance leg is monetizable directly (proprietary trading) or indirectly (a forecast feed to utilities and traders).

**Named data sources / OSINT feeds I would ingest:**
- **ENTSO-E Transparency Platform** — free, pan-European, continuous: load, generation by type, cross-border flows, balancing, and crucially *outages and congestion* [src: entsoe.eu]. This is the backbone.
- **REMIT urgent market messages (UMMs)** — mandatory producer disclosures of generation/transmission outages. REMIT II and its new Implementing Regulation enter into force 29 April 2026, "significantly expanding" the transparency regime and centralizing submission via ENTSO-E/ENTSO-G [src: bakermckenzie.com]. More structured disclosure = more machine-ingestible OSINT exactly as you scale.
- **Weather**: ECMWF (incl. ensemble/EPS) and NOAA GFS for temperature, wind, and solar irradiance — the true independent variables behind renewable supply.
- **Gas / LNG**: EIA for US balances, plus vessel-flow intelligence (Kpler — which now owns MarineTraffic, FleetMon, and Spire Maritime after its $241M April 2025 Spire deal, tracking 661,000+ vessels/day [src: maritime-executive.com, kalkine.com], and Vortexa) for LNG cargoes redirected to Europe. European power and gas are coupled through gas-fired marginal plants.
- **Prices**: EEX / EPEX SPOT / ICE for day-ahead, intraday-continuous, and imbalance settlement — your grading ground-truth.
- **Grid/battery behavior**: BESS bidding is now compressing intraday spikes (e.g., Modo Energy's German intraday research), a structural signal to model [src: modoenergy.com].

**Worked example — a German intraday wind-ramp forecast, end to end.**
*Inputs (D-1, 14:00 CET):* ECMWF 00Z + 12Z ensembles show a faster-than-consensus cold front crossing northern Germany on delivery-day afternoon; ensemble spread on hub-height wind is wide (high uncertainty). ENTSO-E day-ahead wind forecast (published by TSOs) looks stale relative to the 12Z run. REMIT UMMs flag a 1.1 GW nuclear-equivalent thermal unit returning from outage in France, loosening cross-border supply. Gas (TTF) is soft; Kpler shows two extra LNG cargoes diverting to NW Europe.
*Reasoning (the world-model's job):* The engine fuses these into a coherent physical story — actual afternoon wind likely to come in 2–4 GW *below* the TSO day-ahead forecast as the front stalls, while the day-ahead price was set on the higher wind number. That implies the intraday afternoon blocks are under-priced relative to likely imbalance. It cross-checks against BESS compression (spikes will be blunted, so size the move, don't assume a 2022-style blowout) and against the French import loosening (a partial offset).
*Probabilistic output:* "P(German intraday hours 16–19 settle ≥ €X above day-ahead) = 0.68; expected magnitude €18/MWh; 80% interval €4–€41/MWh." Flag: **wind-ensemble spread is high → confidence capped**.
*How it's scored:* Delivery happens the next afternoon. Intraday-continuous and imbalance prints settle within hours. The forecast is graded by Brier/CRPS against realized prices *the same day*. You get a clean, timestamped grade on a forecast you made ~24–36 hours earlier. Run this across 24 hourly products × multiple bidding zones × 365 days and you generate tens of thousands of scored forecasts a year — the densest training signal available.

**Tailwinds (why winnable NOW):** (1) Renewable penetration keeps *rising*, so forecast-error-driven volatility structurally grows — "the most pronounced volatility spikes occur during 2024 and early 2025" [src: arxiv.org]. (2) REMIT II (April 2026) mandates *more* standardized, centralized, machine-readable outage/transparency disclosure [src: bakermckenzie.com] — OSINT-addressability improving by regulation. (3) Long-context reasoning LLMs can now hold ENTSO-E tables + weather ensembles + REMIT text in one reasoning pass; cheap inference makes hourly, multi-zone forecasting economically trivial. (4) Open academic literature on probabilistic power forecasting is exploding (multiple 2025–2026 reviews), so the methodological frontier is public [src: arxiv.org].

**Competitors & whitespace.** The incumbents are quant power shops (specialist trading desks at utilities and merchants) and statistical/deep-learning forecasters. They are good at narrow numerical forecasting but *weak at fusing qualitative OSINT* — REMIT outage text, geopolitical gas headlines, policy changes — into the numerical view. That fusion is exactly an LLM world-model's edge. Whitespace: a reasoning engine that reads the outage notices, the weather narrative, and the flow data *together* and explains its forecast, rather than a black-box regressor. Score rationale: feedback speed 5, data 5 — the best place to *train and prove calibration cheaply*, even if you never trade a megawatt.

---

### Deep Dive 2 — Under-Covered EU & Global SMID Equities (the self-funding product)

**The inefficiency and its size.** This is the largest structurally-abandoned alpha pool in developed markets, and it was created by regulation. MiFID II's research unbundling (2018) forced asset managers to pay for research explicitly; coverage collapsed where no one would pay — the small end. Studies document a 10–15% drop in analyst coverage of EU firms versus US controls [src: sciencedirect.com], 334 European firms lost coverage entirely, and European brokerage analyst headcount fell 11%+ post-MiFID II [src: evaluate.com]. The structural gap is stark: European stocks average 24 analysts (market-cap-weighted) vs 44 in the US, and median quarterly coverage among MSCI Europe stocks has fallen ~40% since 2015 [src: evaluate.com]. Small-caps get ~5.7 analysts vs 16.4 for large-caps [src: integrity-research.com], and thousands of smaller firms have *zero* — e.g., FactSet counts 1,564 listed healthcare companies globally with no analyst coverage as of 2026 [src: evaluate.com]. Less coverage mechanically widened small-cap spreads and left prices stale relative to fundamentals [src: onlinelibrary.wiley.com]. This is the textbook "unmet need + whitespace" combination: demand for the answer exists (every small-cap PM wants an edge), but the supply of analysts evaporated.

**Named data sources / OSINT feeds I would ingest:**
- **Primary filings & transcripts**: national registries and exchange feeds (e.g., Companies House UK, Bundesanzeiger DE, Euronext/Borsa Italiana disclosures), annual/interim reports, and earnings-call transcripts — the base layer most humans no longer read for orphan names.
- **Local-language press & trade media**: the decisive edge in SMID is reading the *German, Italian, Nordic, French* regional business press that English-only desks skip. Long-context multilingual LLMs read all of it cheaply.
- **Channel / supplier / alternative data**: job postings, app-download and web-traffic proxies, import/export records, local procurement/tender databases, and — for industrials — the same AIS/customs flow data used in commodities.
- **Regulatory & ownership**: insider-transaction disclosures (a documented signal in the 2025 European small-cap screens [src: finance.yahoo.com]), short-interest registers, and shareholder filings.
- **Peer/comp anchoring**: using the (better-covered) large-cap in the same value chain to triangulate the orphan small-cap's fundamentals.

**Worked example — an orphaned Nordic industrial supplier, end to end.**
*Inputs:* A €300M-cap Swedish components maker, one sleepy local broker, no English coverage. The world-model ingests: the latest Swedish-language interim report (margins quietly inflecting as a raw-material cost rolls off), three regional-press pieces about a new plant ramp, LinkedIn/job-posting data showing a 20% engineering-headcount jump, insider buying filed in the registry, and — critically — the earnings transcript of the firm's *large-cap customer* (well-covered) guiding to a capex acceleration that flows directly to this supplier.
*Reasoning:* The engine connects the customer's capex guide to the supplier's order book, times it against the margin inflection and the hiring, and flags that consensus (one stale broker note) has not updated. It builds a fundamentals bridge: revenue +X%, margin +Y bps, and a re-rating case as coverage/liquidity normalizes.
*Probabilistic output:* "P(next-quarter revenue beats the single stale estimate by >8%) = 0.63; P(positive 6-month relative return vs sector) = 0.60; base-case fair value +35%." Flag: **thin float → execution and timing risk; downgrade conviction accordingly**.
*How it's scored:* Graded on the quarterly print (fast, binary-ish: beat/miss vs the stale number) and on 3/6/12-month relative return. Slower than power — quarters, not hours — but every covered name produces 4 scored fundamental forecasts/year plus continuous price grading. Across a universe of hundreds of orphans, that is a healthy, sellable track record.

**Tailwinds (why winnable NOW):** (1) The coverage vacuum is *still open* — even as the EU Listing Act (2024–25) and ESMA reforms try to revive SME research by unwinding unbundling and exempting sub-€1bn issuers [src: stibbe.com, esma.europa.eu], re-building human coverage is slow and expensive, so the gap persists for years. (2) Regulators are explicitly blessing a *new category* — issuer-sponsored research with an EU code of conduct (ESMA final report, 22 Oct 2025) — which is a direct, named monetization channel for an AI research house [src: esma.europa.eu]. (3) Long-context + multilingual reasoning LLMs can read thousands of pages of filings and non-English press per name, the exact bottleneck that killed human coverage economics. (4) Cheap inference makes covering 1,000 orphan names at near-zero marginal cost feasible — impossible for a human desk.

**Competitors & whitespace.** Incumbents: independent research houses — Edison (300+ companies, free-to-read, issuer-funded model [src: edisongroup.com]), AlphaValue (458 European securities, mid-to-large-cap focus [src: alphavalue.com]), Baader, and regional brokers. They are human-bandwidth-limited and skew to mid/large-cap where someone pays. The whitespace is the *true long tail* — the sub-€500M names with zero or one analyst, in non-English markets, that no human house can cover profitably. An AI research engine's cost structure inverts the economics: the marginal name is cheap, so the uncovered tail becomes addressable for the first time. Score rationale: unmet need 5, whitespace 5 — this is the self-funding *product*, sellable as a research subscription, a signal feed, *or* sponsored coverage under the new ESMA code.

---

### Deep Dive 3 — Biotech Clinical-Trial Catalysts (the clean-binary proving ground)

**The inefficiency and its size.** Biotech catalysts are the cleanest binary-feedback events in equities: scheduled, high-stakes, and probabilistic by nature — exactly the shape a superforecaster is built for. "PDUFA dates are among the most impactful binary events in biotech — stocks can move 50%+ in either direction" [src: biotechsign.com]; an approval can add 50–200% and a rejection can cut 40–80% [src: biopharmawatch.com]. The base rates are knowable and stable — Phase 3 success is ~50–55% overall (Citeline 2014–2023: 55.0%), varying sharply by therapeutic area (oncology Phase 3 ~37%→58% across windows) [src: sciencedirect.com, ncbi.nlm.nih.gov]. And the market is *not* efficient around these events: positive-trial stocks rose 13.7% on average in the 120 days *before* announcement while negative-trial stocks fell only 0.7% [src: nature.com] — evidence that the market partially anticipates but systematically mis-prices outcomes, leaving a calibrated forecaster room. Event cadence is high: 2026 sees roughly 8–15 PDUFA dates and 4–8 advisory-committee meetings per month [src: biotechsign.com]. That is a steady stream of scheduled, gradable binaries.

**Named data sources / OSINT feeds I would ingest:**
- **ClinicalTrials.gov** — the registry: enrollment status, primary-completion-date estimates, endpoints, arms, protocol amendments (amendments and slipping completion dates are leading signals). Catalyst dates are explicitly sourced from these completion estimates [src: catalystalert.io].
- **FDA calendars & dockets** — PDUFA dates, AdCom schedules and *briefing documents* (the briefing-doc release is itself a tradable sub-event), Complete Response Letter patterns.
- **Prior-phase readouts & scientific literature** — PubMed, conference abstracts (ASCO, AHA, AACR), the Phase 1/2 data that conditions Phase 3 priors; mechanism read-across from competitor programs.
- **Enrollment & site trackers** — site counts, geographic spread, and enrollment pace as proxies for trial health.
- **Company disclosures** — 8-Ks, cash-runway from 10-Qs (a cash-strapped sponsor's incentives shape timing), and earnings-call guidance.
- **Aggregators as scaffolding** — CatalystAlert (1,200+ companies, confidence-rated, source-linked), BiopharmaWatch, BioPharmaCatalyst — useful as a calendar spine, not as the edge.

**Worked example — a Phase 3 oncology readout, end to end.**
*Inputs:* A mid-cap's Phase 3 in a solid-tumor indication, primary completion estimated next quarter per ClinicalTrials.gov. The engine ingests: the Phase 2 ORR and PFS data (strong but small-n), the mechanism's read-across from two competitor trials (one hit, one missed on the same endpoint), a protocol amendment that *widened* the eligibility criteria (ambiguous — could dilute effect size), enrollment completed on time (healthy), and a cash runway that pressures the sponsor toward an on-time readout.
*Reasoning:* Start from the base rate (oncology Phase 3 ~55% [src: sciencedirect.com]), then update: strong-but-small Phase 2 (+), favorable mechanism read-across net of the competitor miss (slightly +), eligibility-widening amendment (−, effect-size dilution risk), clean enrollment (+). The engine also models the *pre-event drift*: given the 13.7% average pre-announcement run in eventual winners [src: nature.com], it checks whether the stock has already moved (if it's up 40% into the print, much of the good news is priced).
*Probabilistic output:* "P(trial meets primary endpoint) = 0.58 vs base rate 0.55; P(stock up on readout) = 0.47 after accounting for pre-event drift already realized; recommended stance: no directional edge post-run-up — fade the binary or size small." Flag: **small Phase 2 n and amendment → wide uncertainty; confidence low**.
*How it's scored:* The readout lands on a scheduled date with an unambiguous, public, binary answer. Brier-score the P(endpoint-met) call and the P(stock-up) call the same day. This is the *gold standard* for calibration measurement — scheduled, binary, public — which is precisely why it is the best proving ground for demonstrating a track record to allocators, even though absolute event frequency (dozens/month) is lower than power (thousands/day).

**Tailwinds (why winnable NOW):** (1) Trial registration and FDA transparency are mandated and increasingly structured — ClinicalTrials.gov and FDA dockets are machine-readable OSINT by law. (2) Reasoning LLMs can now read full protocols, briefing documents, and primary literature and reason over endpoints — the task was previously gated on scarce MD/PhD analyst time. (3) Published base rates by phase and therapeutic area give a rigorous Bayesian prior to anchor on [src: sciencedirect.com]. (4) Cheap inference lets you cover the *entire* catalyst calendar (every PDUFA, every Phase 3) rather than the handful a human team can track.

**Competitors & whitespace.** Incumbents: specialist healthcare hedge funds (deep but narrow, concentrated on large catalysts), sell-side biotech analysts, and calendar aggregators (CatalystAlert, BioPharmaCatalyst) that tell you *when* but not *what-probability*. The whitespace is calibrated, *probabilistic* coverage of the *long tail* of small-cap catalysts the specialist funds ignore, fused with the systematic base-rate discipline that human analysts notoriously abandon under narrative pressure. Score rationale: feedback speed 4, data 5 — unbeatable for *proving calibration publicly*; moat only 3 because the aggregator layer is commoditizing and the biggest catalysts are contested.

---

### Honorable Mention — Shipping / Freight & Commodity Flows (score 22)

Just below the top three, and a natural *extension* of the power/gas pipeline. AIS data has commoditized — but consolidated: Kpler now owns MarineTraffic, FleetMon, and Spire, tracking 661,000+ vessels/day and fusing AIS with cargo manifests, port-agent reports, and refinery throughput [src: maritime-executive.com, kalkine.com]. "War is making shipping data a hot commodity" [src: kalkine.com]. The edge for a world-model is turning raw vessel positions into *forecasts* — port congestion, inventory builds, freight-rate direction, commodity-arrival timing — which the data vendors sell as data, not judgment. Fast-ish feedback (cargoes arrive on knowable timelines), excellent OSINT-addressability. It scores just below the leaders because Kpler's consolidation raises data-cost and moat risk, and the best signals increasingly sit behind its paywall. Treat it as beachhead #4 once the power pipeline exists.

---

### Recommended Sequencing

**Phase 1 — Start with European power/gas as the training ground (months 0–9).** Not because it is the easiest to monetize, but because it has the fastest, cleanest feedback loop in the entire candidate set — tens of thousands of scored forecasts per year against hourly settlement. This is where you *prove the engine is calibrated* and harvest the ~0.9 Elo/month improvement curve [src: lesswrong.com] fastest. The data is almost entirely free/public (ENTSO-E, REMIT, weather), so the build cost is low and the learning signal is dense. You may never trade a megawatt; the point is to forge and measure the engine cheaply. Monetization optionality: a forecast feed to utilities/traders.

**Phase 2 — Graduate into EU/global SMID equities as the self-funding product (months 6–18, overlapping).** Once calibration is proven, point the same engine at the largest structurally-abandoned alpha pool, where the *unmet need and whitespace both score 5*. This is where the money is, via three named monetization paths: a research subscription, a signal feed to small-cap PMs, and — newly blessed — issuer-sponsored research under ESMA's 2025 code of conduct [src: esma.europa.eu]. The multilingual-filing-reading edge is exactly what long-context LLMs unlock and what killed human coverage economics. This phase self-funds the operation.

**Phase 3 — Add biotech catalysts as the credibility / track-record engine (months 12–24).** Use the clean, public, scheduled binaries to build a *showcase calibration record* that allocators and subscribers can verify independently — the Brier scores write your marketing. It is the best place to *demonstrate* the thesis externally, even if its absolute event frequency is lower than power.

**Phase 4 — Extend into shipping/freight flows (months 18+)**, reusing the power/gas OSINT pipeline (weather, AIS, flows) and broadening the commodity world-model.

The through-line: **train where feedback is fastest (power), earn where whitespace is widest (SMID), prove where verification is cleanest (biotech).** Each beachhead feeds the next — the same engine, the same OSINT-fusion edge, pointed at progressively more monetizable arenas as its calibration record compounds.

---

*Low-confidence flags inline above (wind-ensemble spread, thin-float timing, small-n trial priors) mark where the engine must self-report reduced conviction. Dollar-sizing of each alpha pool is deliberately framed in volume/coverage/base-rate terms rather than a single "$X of alpha" number, because no credible public figure isolates the recoverable alpha per domain — that is a function of your own edge, which only the Phase-1 calibration record will reveal.*
