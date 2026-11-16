### Company dossiers — Interpretability

Mechanistic interpretability (MI) — reverse-engineering the internal "features" and circuits of neural networks — has moved from a pure safety research agenda into a small but real commercial category. The dossiers below cover the pure-play startups (Goodfire, Transluce, Leap Labs), the open-source anchor (EleutherAI), the lab context that sets the research frontier (Anthropic, Google DeepMind), and the most concrete adjacent market: interpretability for biology. A recurring caveat runs through all of it: almost none of these organizations have proven that enterprises will pay for *standalone* interpretability as a product, as opposed to interpretability bundled into a safer/better model or into scientific discovery.

#### Goodfire — the commercial pure-play, now a unicorn

**What they build.** Goodfire sells interpretability as a product. Its flagship, **Ember**, launched December 2024 as (per the company) the first hosted API/SDK for mechanistic interpretability: it exposes a model's internal "features" so users can read, steer, and reprogram behavior directly, rather than only prompting [src: goodfire.com; stradslater.medium.com]. The Series B thesis extends this into a "model design environment" for building models that are interpretable by construction [src: goodfire.com].

**Funding.** ~$207M total across three rounds [src: tracxn.com]: a **$7M seed** (Aug 2024, led by Lightspeed) [src: businesswire.com]; a **$50M Series A** (April 2025, led by Menlo Ventures at ~$250M valuation; Anthropic, Lightspeed, B Capital, Wing, South Park Commons participating) [src: goodfire.com; prnewswire.com]; and a **$150M Series B** (Feb 2026, led by B Capital at a **$1.25B valuation**; Salesforce Ventures, Eric Schmidt, DFJ Growth, Menlo, Lightspeed) [src: pulse2.com; theaiinsider.tech]. Anthropic investing in a third-party interpretability lab is a notable signal.

**Founders.** CEO **Eric Ho** (Yale CS; previously founded RippleMatch, a Series B AI recruiting startup); Chief Scientist **Tom McGrath** (PhD Stanford; founded DeepMind's mechanistic interpretability team); CTO **Dan Balsam** (RippleMatch founding engineer). Research scientist **Nick Cammarata** co-authored the original OpenAI superposition/polysemanticity work [src: longtermwiki.com; research.contrary.com].

**Traction & customers.** Publicly named: **Rakuten** (a PII-detection guardrail built on Ember, deployed to Rakuten's agent platform), **Arc Institute** (extracting biological concepts from the Evo 2 DNA model — published in Nature), **Prima Mente** (a novel class of Alzheimer's biomarkers from an epigenetic model), plus **Mayo Clinic, Apollo Research, and Haize Labs** [src: research.contrary.com; goodfire.com]. Revenue undisclosed and likely modest relative to valuation.

**Bull case.** Best-funded, best-credentialed pure-play; a genuine product (not just papers); two wedge markets (AI-agent guardrails and life-sciences discovery) where interpretability produces outputs a buyer values. **Bear case.** A $1.25B valuation on undisclosed/thin revenue; the core open question — will anyone pay for standalone MI? — is unproven; frontier labs (Anthropic, DeepMind) do this in-house and could commoditize it.

**Relevance to a 2-person team.** The template for "interpretability as alpha": don't sell interpretability, sell the *discovery* it produces (a biomarker, a guardrail, a trading signal). Ember is a usable third-party tool a tiny team could build on rather than reimplement.

#### Transluce — nonprofit "AI observability," the anti-Goodfire

**What they build.** A nonprofit building open-source tools to understand and steer AI systems "in the public interest." Products include **Monitor** (an AI-driven observability interface over a model's internal activations), **Docent** (accelerates analysis of agent transcripts — surfacing corrupted tasks, scaffolding bugs, and unexpected behaviors in minutes), and automated red-teaming / eval tooling [src: transluce.org]. Positioning is oversight and evaluation, not a steer-the-model product.

**Funding.** Structurally donation-funded, not VC. Backers include **Schmidt Sciences** (Eric and Wendy Schmidt) [src: transluce.org; science.org]. Co-founder Jacob Steinhardt separately received **$2.59M (May 2025) from Coefficient Giving** for compute [src: trace.manifund.org]. A 2025 end-of-year public fundraiser targeted ~$2M; early tallies were small (tens of thousands reported mid-campaign) [src: manifund.org]. Total budget undisclosed; low-confidence on scale.

**Founders.** **Jacob Steinhardt** (CEO; UC Berkeley AI-safety group lead; author of "Concrete Problems in AI Safety"; designed MMLU) and **Sarah Schwettmann** (MIT CSAIL; built MAIA, an early interpretability-agent pipeline) [src: statistics.berkeley.edu; x.com/TransluceAI].

**Traction & customers.** Strong adoption for a young nonprofit: **Docent reportedly used by 25+ organizations**, including frontier labs (**Anthropic, Google DeepMind, Thinking Machines**), safety orgs (**METR, Redwood, Apollo, Palisade**), government evaluators, an enterprise (**Bridgewater Associates**), and academic labs (Princeton, UIUC) [src: transluce.org]. This is distribution, not revenue — the nonprofit model means little-to-no commercial monetization.

**Bull case.** Elite research pedigree, genuine real-world pickup among exactly the orgs that matter, and open-source tools a small team can use for free. **Bear case.** No revenue model; dependent on philanthropy that could dry up; "observability/evals" is crowded and partly overlaps with commercial eval vendors.

**Relevance to a 2-person team.** Docent is a free, battle-tested way to audit agent transcripts — directly useful if you run agentic pipelines. Transluce also shows the nonprofit/open path is viable for credibility without raising VC.

#### Leap Labs — the thin-traction pivot to scientific discovery

**What they build.** Founded as a **model-agnostic interpretability engine** — feed in a model and its training data, get back human-readable explanations of what it "knows" [src: lesswrong.com]. By 2025 the company **pivoted toward scientific discovery**, positioning interpretability as a tool to accelerate R&D breakthroughs; it reports "2 novel discoveries" and "11 ongoing collaborations" across sciences [src: tracxn.com; startuphub.ai]. Detail on named outputs is thin.

**Funding.** **Undisclosed (low-confidence).** Described as a "VC-funded deep-tech startup," but no round size, date, lead, or valuation is public in the sources found [src: linkedin.com/company/leap-labs-inc; aiconference.com]. Treat as early-stage/seed with no verified figures.

**Founders.** **Jessica Rumbelow** (Founder & CEO) — PhD in machine learning focused on model-agnostic interpretability, MATS program alumna, known in the alignment community (notably early work on anomalous "SolidGoldMagikarp" GPT tokens) [src: matsprogram.org; greaterwrong.com].

**Traction & customers.** Weakest of the cohort on verifiable traction. No named paying customers surfaced; claims of discoveries and collaborations are self-reported and unquantified [src: tracxn.com]. Effectively pre-revenue / unproven commercially, as far as public sources show.

**Bull case.** Credible, respected founder; the "interpretability → scientific discovery" framing is the same wedge Goodfire is validating with real partners, and Leap was early to it. A small, focused team can move fast. **Bear case.** No disclosed funding, no named customers, vague metrics; competing against a now-unicorn (Goodfire) and well-funded bio-AI labs for the same discovery use case; risk of being sub-scale.

**Relevance to a 2-person team.** The closest structural analog to a tiny shop: one strong technical founder, model-agnostic methods, selling discoveries rather than software. Also a cautionary tale about how hard it is to show traction without a flagship partner.

#### EleutherAI — the open-source anchor

**What they build.** A nonprofit research institute and the de-facto commons for open interpretability. Famous for **The Pile**, **GPT-NeoX-20B**, the **Pythia** model suite (explicitly designed for studying models across training/scale — the standard testbed for interpretability), and the **LM Evaluation Harness** [src: eleuther.ai; latent.space]. On formal incorporation as a nonprofit, it broadened from training large models toward **interpretability, alignment, and evaluation**, including substantial sparse-autoencoder (SAE) research on Pythia [src: latent.space; arxiv.org].

**Funding.** Grant- and donor-funded, not venture. Formation was supported by **Stability AI, Hugging Face, CoreWeave, Nat Friedman, Lambda Labs, and Canva** [src: latent.space]. Specific 2025 budget figures undisclosed.

**Founders / leadership.** **Stella Biderman** (Executive Director & Head of Research; Pythia co-author), with Curtis Huebner (Alignment) and Shiv Purohit (Engineering) [src: latent.space].

**Traction.** Not commercial — EleutherAI's "traction" is ubiquity: Pythia and the eval harness are used across academic and industry interpretability work, and it runs open research programs (e.g., "Summer of Open AI Research") that funnel SAE and interpretability contributions into the commons [src: eleuther.ai].

**Bull / Bear.** Bull: unmatched reach, trusted neutrality, free infrastructure that every small interpretability effort stands on. Bear: no revenue model and no intent to have one; depends on donated compute and goodwill.

**Relevance to a 2-person team.** This is the free foundation — Pythia models, open SAEs, and the eval harness let a two-person team do serious interpretability without training anything from scratch. If you build in this space, you build *on* EleutherAI.

#### Lab context — Anthropic and Google DeepMind

**Anthropic (interpretability team).** The research frontier and the reason the category exists commercially. Led out of work by **Chris Olah** with **Jack Lindsey, Joshua Batson** and ~27 collaborators, Anthropic's March 2025 "**circuit tracing**" and "**On the Biology of a Large Language Model**" papers applied **attribution graphs** to Claude 3.5 Haiku, producing prompt-specific evidence on multi-step reasoning, hallucinations, refusals, and jailbreaks; it open-sourced an interactive attribution-graph tool in May 2025 [src: transformer-circuits.pub]. Anthropic also *invested* in Goodfire — both validating the category and signalling it would rather partner than wall off the research. For a small team, Anthropic's open tooling and published methods are the primary free curriculum.

**Google DeepMind (Gemma Scope + reported deprioritization).** DeepMind shipped **Gemma Scope**, a comprehensive open set of SAEs/transcoders on Gemma models — and **Gemma Scope 2** (Dec 2025) extending coverage to every layer of every Gemma 3 model, base and chat [src: x.com/NeelNanda5]. But in **March 2025, Neel Nanda's mechanistic interpretability team publicly deprioritized its leading SAE approach** after negative results on downstream tasks, with Nanda growing more pessimistic about "ambitious" MI and leaning pragmatic [src: x.com/NeelNanda5; the-decoder.com]. The signal for a 2-person team: even the best-resourced lab found SAEs don't yet reliably pay off on real tasks — temper expectations, and treat open artifacts (Gemma Scope) as the valuable output rather than the end-to-end promise.

#### Interpretability for biology — the most concrete adjacent market

This is where MI has its clearest "produces something a buyer values" story. Two threads:

**Protein/genomic foundation models.** The academic flagship is **InterPLM** (Nature Methods, 2025): sparse autoencoders trained on **ESM-2** protein-language-model embeddings recover thousands of interpretable features mapping to **binding sites, structural motifs, and functional domains** — expanding ESM-2's 320 neurons to ~10,420 latent features and finding significantly more known biological concepts than raw neurons, with pretrained SAEs released for ESM-2 (8M/650M) and a public dashboard (InterPLM.ai) [src: nature.com; github.com/ElanaPearl]. Follow-on 2026 work extends this to **ESMC** for enzyme-function prediction across the microbial protein universe [src: arxiv.org].

**Commercial pull.** Goodfire's life-sciences partnerships are the monetizable version of the same idea: interpreting **Arc Institute's Evo 2** DNA model (Nature) and **Prima Mente's** epigenetic model (a novel Alzheimer's-biomarker class), with **Mayo Clinic** named as a partner [src: research.contrary.com; goodfire.com]. 

**Why it matters / caveat.** Biology is the setting where interpretability output = a candidate drug target, biomarker, or annotation — things pharma and research institutes already pay for. That sidesteps the unsolved "will anyone buy standalone MI?" problem. Caveat: these are still mostly research collaborations and papers, not recurring revenue, and the methods (SAEs on bio-foundation-models) inherit the same reliability doubts DeepMind flagged for language models. **Relevance to a 2-person team:** the highest-signal domain to apply interpretability — open models (ESM, Evo), open SAE tooling (InterPLM), and buyers who value discoveries over dashboards.
