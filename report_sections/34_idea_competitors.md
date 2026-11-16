## The Idea — Chapter E: The Competitive Landscape

If you tell an investor you are "building an LLM world model for the economy," the first thing they will do — correctly — is ask who else is doing it and why you win. This chapter is the honest answer. The short version: a crowded, well-funded field is clustered around two activities (helping analysts read faster, and predicting events for curiosity/risk), and almost nobody is doing the thing that actually matters for a fund — forming **non-consensus, falsifiable, P&L-attributable views on specific tradable assets, with a leak-free live track record**. The one group that has proven the underlying capability (Bridgewater's AIA Labs) is a $100B+ incumbent pointing it inward at macro. That gap is the whole opportunity.

### A positioning framework: three tribes

The field only looks confusing until you sort it by **what the product actually commits to**. Everyone claims "AI for markets." The discriminating question is: *does the system output a view that can be marked right or wrong against reality, and can that view be attributed to profit or loss on a real asset?* That splits the market cleanly into three tribes.

**(a) Finance-workflow copilots.** These retrieve, summarize, and draft. They answer "what did the 10-K say about margins?" and "build me a comp sheet." They are enormously useful and enormously well-funded — but they take *no falsifiable view*. The output is a faster analyst, not a position. Willingness-to-pay is high because they sell into existing seat/research budgets, but there is no scoreboard: if the summary is good, nobody can tell you the tool was "wrong" about Q3. This tribe is AlphaSense, Hebbia, Rogo, Brightwave, Kensho, and Bloomberg's AI.

**(b) AI forecasting / prediction players.** These *do* take probabilistic, scored views — Brier scores, calibration, prediction-market P&L — which is exactly the muscle a superforecaster needs. But they overwhelmingly point it at **events** (elections, geopolitics, "will X happen by date Y"), not at tradable-asset returns, and they sell to governments, campaigns, research buyers, and curiosity. Willingness-to-pay is structurally low: a calibrated "62% chance of a ceasefire" is interesting but hard to monetize unless you also know how to turn it into a trade. This tribe is Aaru, Sooth Labs, Mantic, FutureSearch, Lightning Rod Labs, Metaculus, and Manifold.

**(c) Quant / AI investment engines.** These take views that are **P&L-attributable** — they run real money or generate signals a fund trades. This is where alpha lives, and it is the most defensible tribe, but it is also the hardest and most closed. Today it is essentially populated by one credible AI-native example operating at scale: **Bridgewater's AIA Macro Fund**. The classic quants (Two Sigma, Renaissance, DE Shaw) belong here too, but they are statistical/ML shops, not LLM-reasoning-first world models.

The open lane sits at the intersection the three tribes each decline to occupy: **verified, P&L-attributable, tradable-asset forecasting, sold as a view rather than a tool.** Copilots have the distribution but refuse to take a view (liability, positioning). Forecasters take a view but aim it at events with no trade attached. Bridgewater does the real thing but keeps it internal and macro. Nobody is pointing a first-principles reasoning engine at *specific, under-covered, tradable assets* with a *public, leak-free track record*.

---

### Deep dossiers

#### Bridgewater AIA Labs — the one that proved it's possible
This is the most important name on the page, because it is the existence proof. Bridgewater formed **AIA Labs** ("Artificial Investment Associate") in 2023 under Co-CIO Greg Jensen. Two outputs matter. First, the **AIA Macro Fund**: launched July 1, 2024 with ~$2B from a handful of clients, machine-learning as the *primary decision-maker* (humans handle risk, data buying, execution), using in-house tooling over OpenAI/Anthropic/Perplexity models. It returned **11.9% in 2025** and ~16.4% YTD through late September 2026; ~13.2% annualized since inception, now managing $4.5B+. CEO Nir Bar Dea has said it produces "unique alpha, uncorrelated" to the human book [src: bloomberg.com]. Second, the **AIA Forecaster** (technical report, Nov 2025): a multi-agent LLM system with agentic news search, a supervisor agent, and statistical calibration that hit Brier scores (~0.108) *statistically indistinguishable from human superforecasters* on ForecastBench, and added information to market consensus in an ensemble [src: arxiv.org]. Takeaway for the founder: **yes, LLM systems can forecast at superforecaster level and generate uncorrelated alpha — Bridgewater already demonstrated both.** Their constraint is that it is internal, macro-focused, and serves one LP base. They will not build a track-record product for under-covered SMID equities. That is your opening, not your obstacle.

#### AlphaSense — the market-intelligence giant (copilot)
The 800-pound gorilla of research tooling. Valued at **$7.5B** in a $350M round (June 2026, led by Vitruvian, Accenture Ventures, J.P. Morgan), >$1B raised total, **>$600M ARR** [src: fintech.global]. Its moat is content: the $930M **Tegus acquisition** (July 2024) added 200,000+ expert transcripts across 25,000 companies. Generative "Assistant" answers questions over filings, transcripts, broker research, and news with citations. **Does it take a falsifiable, tradable view? No.** It is the definitive retrieve-and-summarize layer — it makes an analyst faster and surfaces what others said, but it never says "buy this, I'm 70% it beats consensus." Its scale is a distribution threat (it could *host* a forecasting feature), but its DNA and liability posture are tool-vendor, not view-taker.

#### Hebbia — agentic document analysis (copilot)
NYC, ISD ("Information, Synthesis, Decomposition") multi-agent system that decomposes a query, runs agents in parallel over huge document sets, and returns cited answers. Valued **~$700–710M** after a $130M Series B (July 2024, led by a16z, with GV, Index, Peter Thiel); ~$161M raised; reportedly ~$13M ARR at raise (a rich ~54x multiple) [src: pitchbook.com, contrary.com]. Acquired FlashDocs (2025) to generate slide decks/memos. Sells to finance, legal, corporate research. **Falsifiable tradable view? No.** Hebbia is the deepest "read 10,000 docs and answer precisely" engine — diligence and synthesis, explicitly not position-taking.

#### Rogo — the investment-banking copilot (copilot)
NYC, founded 2022 by **Gabriel Stengel** (CEO). The banker-workflow leader: valuation models, precedent transactions, CIM drafting, fairness opinions, slide generation. Funding escalated fast — $50M Series B (Apr 2025, ~$350M, Thrive) → $75M Series C (Jan 2026, ~$750M) → ~$160M Series D (Kleiner Perkins, Sequoia, Thrive, Khosla, J.P. Morgan) at a reported **$2B valuation**, $300M+ total [src: pitchbook.com, sacra.com]. Customers include major investment banks. **Falsifiable tradable view? No.** Rogo automates sell-side/deal production — associate-to-VP output — but it has no P&L scoreboard and takes no asset view.

#### Brightwave — AI investment research (copilot, closest to views)
Launched early 2024 by **Mike Conover** (CEO; built Databricks' Dolly) and **Brandon Kotara** (ex-CTO of LedgerX). ~$21M raised: $6M seed (Decibel, Point72 Ventures, Moonfire) + $15M Series A (Oct 2024, with OMERS). Produces deep-research reports over business documents for public and private-market investors; Quartr partnership for transcripts [src: wealthmanagement.com]. Brightwave is the *closest* copilot to view-taking — it synthesizes a thesis-shaped narrative — but it still stops at "here is the analysis," not "here is my scored, tradable, attributable call." **Falsifiable tradable view? Not really** — it informs a human's view rather than committing its own to a scoreboard.

#### Kensho (S&P Global) — the AI data layer (copilot/infrastructure)
S&P Global's AI division. Strategy in 2025–26 is **LLM-ready APIs** and a "grounding agent" that pipes S&P datasets into ChatGPT, Anthropic, and Google with citations to reduce hallucination; LLM-API customers topped 500 (+70% QoQ), call volume up 5x [src: finance.yahoo.com, kensho.com]. Also runs S&P AI Benchmarks. **Falsifiable tradable view? No.** Kensho is becoming the *trusted-data-into-AI* plumbing — it wants to be the grounding layer under everyone's agents, not a forecaster. Relevant to you as a potential **data dependency and distribution channel**, not a head-to-head competitor.

#### Bloomberg AI — the incumbent terminal (copilot)
Bloomberg (BloombergGPT, 2023) rolled out **AI-powered Document Search & Analysis** across the Terminal through 2025: natural-language questions over 400M+ documents — filings, transcripts, Bloomberg News, analyst research — with source/analyst attribution [src: bloomberg.com, prnewswire.com]. Marketed explicitly to "streamline alpha-generating research." **Falsifiable tradable view? No.** Even when the language is "alpha-generating," the product surfaces and summarizes; it does not take a scored position. Bloomberg's threat is distribution (330k+ terminals) and its data moat — but its institutional incentive is to stay a neutral utility, not to publish directional calls it can be sued over.

#### Aaru — synthetic-population simulation (forecasting)
SF, founded 2024 by **Cameron Fink, Ned Koh, John Kessler** (famously young founders). Builds **multi-agent simulations of human populations** to predict consumer/voter behavior — model individuals, then aggregate to predict how a demographic or geography responds. Series A (Dec 2025) >$50M at a **$1B headline valuation** on <$10M ARR (Redpoint lead, General Catalyst, Felicis); Accenture, EY, IPG among customers [src: cryptorank.io, research-live.com]. **Falsifiable tradable view on assets? No.** Aaru takes scored views, but on *behavior/opinion* for market-research and campaigns — not asset returns, and not with a trading scoreboard. Architecturally adjacent (agent-based simulation), commercially elsewhere.

#### Sooth Labs — long-horizon event forecasting (forecasting)
Emerged from stealth with a ~$50M Series A (Apr 2026) at **~$335M** post (Felicis lead); founded by ex-Meta execs **Chuck Hoover, Yaser Sheikh, Ruslan Salakhutdinov**, backed by Yann LeCun and Jeff Dean, with Andrew Bosworth advising [src: dealroom.co, x.com/TradedVC]. Targets **geopolitical and market events** for finance, defense, insurance, real estate; plans multimodal (video/audio/text) long-horizon models. Heavy-hitter team. **Falsifiable tradable view? Partially aimed there** — "capital allocation and risk decision support" — but the framing is event/risk forecasting for institutions, not a self-attributing asset-level track record. One to watch most closely; closest in ambition, still event-first and early.

#### Mantic — superhuman judgmental forecasting (forecasting)
London, founded by **Ben Day** (Cambridge ML PhD) and **Toby Shevlane** (ex-DeepMind). Specializes frontier models for forecasting; **beat every human entrant** in the Fall 2025 Metaculus Cup. $4M pre-seed (Aug 2025) then **$25M** seed (Sept 2026, Radical Ventures, M12, Thinking Machines Lab, Balderton) [src: finance.yahoo.com]. Targets businesses/governments on disruptions — supply-chain, geopolitical shocks — and explicitly notes **hedge-fund and trading-firm interest**. **Falsifiable tradable view? Scored yes, tradable no (yet).** Mantic is the purest "superhuman event forecaster." The nearest competitor *if* it pivots to asset calls — but today it sells event foresight, not attributable alpha.

#### FutureSearch — autonomous forecasters-as-intelligence (forecasting)
Founded by **Dan Schwarz** and **Lawrence Phillips** (ex-Metaculus CTO/Head of AI; built Waymo's internal prediction market). $5.7M seed (Nov 2024, Metaplanet). Sold forecasting intelligence to **Google, Anthropic, OpenAI, xAI**; first to show an autonomous AI forecaster that net-won bets vs. humans on geopolitical questions [src: futuresearch.ai]. **Falsifiable tradable view? Scored yes, on events** — mostly geopolitics and AI-futurism reports, sold to AI labs and researchers. Deep forecasting credibility, no tradable-asset or fund focus.

#### Lightning Rod Labs — forecasting as an API (forecasting/infra)
NYC, founded by **Ben Turtel**. Product **Foresight**: an OpenAI-compatible forecasting API returning scored, calibrated forecasts; proprietary "Future-as-Label" training (ICML 2026 workshop spotlight). **Foresight-32B led all LLMs on live Polymarket** (Brier, ECE, profit); Foresight-v3 ranked #1 on UChicago's ProphetArena, beating GPT-5 and Gemini 3 Pro. Funded by **$1.6M in philanthropic grants** (Coefficient Giving, Longview) — notably *not* VC [src: blog.lightningrod.ai]. **Falsifiable tradable view? Scored yes; it even optimizes Polymarket profit** — but it's horizontal infrastructure ("predict anything"), not a fund or an asset-specific world model. A potential *component/benchmark rival*, not a go-to-market rival.

#### Metaculus — the forecasting commons (platform)
Non-profit-ish forecasting platform and the field's de-facto benchmark. Runs the **AI Forecasting Benchmark Tournament** (Q2 2025: 348 questions, 54 bot-makers, $30K prizes) and FutureEval. Human Pros still held a significant edge over bots through 2025 (p=0.00001), but Mantic's bots beat the community in the Fall 2025 Cup [src: metaculus.com]. **Falsifiable tradable view? It *hosts* scored views, mostly on events; takes none itself.** Value to you: the measurement infrastructure and talent pool, and proof that AI forecasting is crossing the human line — not a commercial competitor.

#### Manifold — play-money prediction market (platform)
Community prediction market using **play money**, covering everything from politics to AI timelines. It aggregates crowd/ bot probabilities and is a cultural hub of the forecasting scene. **Falsifiable tradable view? It produces crowd-scored probabilities, with no real capital and no asset-return focus** [src: manifold.markets]. Relevant as a signal source and sentiment feed, not a competitor.

---

### The positioning map

Two axes. **Axis 1 — Takes a falsifiable, scored view?** (Does it commit to a probability that reality grades?) **Axis 2 — Tradable-asset focused?** (Is the view about a specific tradable instrument's return, not an event or a document?) The money quadrant is top-right: scored *and* about tradable assets. It is nearly empty.

| Player | Takes a falsifiable, scored view? | Tradable-asset focused? | Quadrant |
|---|---|---|---|
| **Bridgewater AIA** | Yes | Yes (macro) | **Top-right — but internal, macro, one LP base** |
| AlphaSense | No | No (research) | Bottom-left (copilot) |
| Hebbia | No | No (docs) | Bottom-left (copilot) |
| Rogo | No | No (banking workflow) | Bottom-left (copilot) |
| Brightwave | Weak (informs view) | Partial (equities research) | Lower-middle |
| Kensho / S&P | No | No (data layer) | Bottom-left (infra) |
| Bloomberg AI | No | No (research) | Bottom-left (copilot) |
| Aaru | Yes (behavior) | No (consumer/voter) | Top-left |
| Sooth Labs | Partial | Partial (risk, multi-sector) | Upper-middle (watch) |
| Mantic | Yes | No (events) | Top-left (watch) |
| FutureSearch | Yes | No (geopolitics) | Top-left |
| Lightning Rod | Yes (even profit-scored) | No (horizontal API) | Top-left (infra) |
| Metaculus | Hosts, doesn't take | No (events) | Left edge (platform) |
| Manifold | Crowd-scored | No (events, play money) | Left edge (platform) |

Read the column totals. The "scored view" column has plenty of Yes's — forecasting is a solved-enough capability that many can do it. The "tradable-asset focused" column is almost all No's. **The scarce thing is not the ability to forecast; it is pointing a scored, self-attributing forecaster at specific tradable assets and keeping an honest live record.** Exactly one name sits unambiguously top-right, and it is a closed incumbent.

---

### The whitespace, stated precisely

Here is the gap, as sharply as it can be put: **no independent player is running a first-principles reasoning engine that forms non-consensus, P&L-attributable views on specific tradable assets, with a live, leak-free, publicly-scored track record.** Each word is load-bearing. *First-principles* (reasons from mechanism, not just pattern-matches prices). *Non-consensus* (a view identical to the market is worthless). *P&L-attributable* (every call maps to a gain or loss on a real instrument). *Live and leak-free* (scored forward in time, no hindsight, no training-data contamination — the thing every forecasting paper waves at and few operationalize). Put those together and the field empties out.

And within that lane, three beachheads are *specifically* unoccupied:

1. **Under-covered SMID equities.** The copilots and expert networks pile onto mega-caps where sell-side coverage is thick and edge is thin. Small/mid-caps — thin analyst coverage, sparse transcripts, more mispricing — are where a reasoning engine's edge is largest and where no AI-native forecaster is pointed.
2. **Single-commodity "world models."** A deeply-modeled causal simulation of one commodity complex (supply, inventories, weather, policy, substitution) is a tractable, falsifiable, tradable domain. Nobody is building it; the forecasters chase elections, the copilots summarize reports.
3. **Clinical-trial-outcome probability.** A binary, scoreable, enormously tradable (biotech single-name) event class — a perfect calibration domain — that sits outside both the event-forecasters' (geopolitics) and the copilots' (document-retrieval) focus.

**Why the incumbents will not come here.** This is the part that makes the whitespace durable rather than merely empty:

- **Bridgewater (AIA)** has the capability but is structurally *macro and internal*. It serves its own LP base, optimizes a macro book, and has no incentive to publish a public track record on SMID single-names or biotech binaries. Its edge is proprietary and its product is a fund, not a scored view for sale.
- **The copilots (AlphaSense, Hebbia, Rogo, Brightwave, Kensho, Bloomberg)** sell *tools, not views* — and they can't easily change that. Taking a falsifiable directional position creates liability, demands a track record they'd have to publish, and cannibalizes the neutral-utility positioning that lets them sell to every bank at once. Their incentive is to stay un-falsifiable. They will add "AI summaries," never "we are 72% this stock beats."
- **The forecasters (Aaru, Sooth, Mantic, FutureSearch, Lightning Rod, Metaculus, Manifold)** have the scored-view muscle but chase *events, not alpha*. Their buyers are governments, campaigns, research desks, and AI labs; their questions are elections and geopolitics; their monetization doesn't require knowing how to translate a probability into a trade and attribute P&L. Pointing the engine at specific tradable assets with an honest live record is a different product, a different buyer, and a different competency (markets, not just calibration) — most won't make that turn, and the one or two that might (Sooth, Mantic) are still event-first today.

That is the thesis in one line: **the capability is proven (Bridgewater), the forecasting tech is maturing fast (Mantic, Lightning Rod, FutureSearch), the distribution is being built by others (copilots) — but the specific product of a verified, P&L-attributable, tradable-asset superforecaster aimed at under-covered assets is unclaimed, and the incumbents' own incentives keep it that way.** That is where to build.
