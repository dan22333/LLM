### Company dossiers — Bio/Protein AI

*Facts are sourced inline as [src: domain]. "Undisclosed" marks figures no primary source confirms. Low-confidence items (aggregator-only funding rounds, some 2026 figures) are flagged explicitly.*

---

#### EvolutionaryScale (now part of CZ Biohub) — the "GPT-for-proteins" lab, absorbed by a nonprofit

**What they build.** ESM3, a frontier protein *language* model (software-only, no wet lab) trained on nearly 4 billion natural protein sequences; it reasons jointly over sequence, structure, and function and can generate novel proteins that would take evolution millions of years to reach [src: pharmaphorum.com]. It is the direct lineage of the ESM/ESM-2/ESMFold models the team built at Meta FAIR. By May 2026 the team shipped a fourth-generation "world model" of protein biology under the Biohub banner [src: startuphub.ai].

**Funding.** $142M seed (June 2024) — one of the largest biotech seeds ever [src: pharmaphorum.com]; a reported $540M Series A (July 2025) at a ~$3.3B valuation [src: startuphub.ai] (valuation low-confidence, aggregator-sourced). Then acquired by Chan Zuckerberg Biohub in November 2025 for undisclosed terms [src: startuphub.ai].

**Founders.** Alex Rives (CEO), Tom Sercu, and Salvatore "Sal" Candido (CTO) — the ex-Meta AI/FAIR ESM team cut in Zuckerberg's 2023–24 reorg [src: tracxn.com, pharmaphorum.com].

**Traction.** ESM3 shipped and widely adopted in academia; Rives became CZI head of science post-acquisition, the ~50-person team folding into Biohub's open-science mission [src: startuphub.ai].

**Customers / partners.** Now institutionally tied to the Chan Zuckerberg Initiative / Biohub network (Stanford, UC Berkeley, UCSF) [src: startuphub.ai].

**Bull / Bear.** Bull: the strongest protein-LM pedigree in the field, now with effectively unlimited patient capital. Bear: absorption into a nonprofit removes the commercial flywheel — no revenue engine, and the open-science posture means less defensible IP.

**Relevance to a 2-person software team (no wet lab).** High. ESM/ESM-2 weights are open and runnable on modest GPUs; the entire approach proves a pure-software team can produce field-defining protein models.

---

#### Chai Discovery — AI antibody *design*, the fastest-scaling pure-software player

**What they build.** Chai-1 (structure prediction, an AlphaFold3-class all-atom model) and Chai-2, a de novo antibody-design model reporting a ~20% experimental hit rate designing custom antibodies from scratch — a step-change over prior ~0.1% baselines [src: genengnews.com, ddw-online.com]. Software-first, with wet-lab validation loops.

**Funding.** $30M seed (Sept 2024, Thrive Capital); $70M Series A (Aug 2025, Menlo Ventures); $130M Series B (Dec 2025, co-led General Catalyst and Oak HC/FT) at a $1.3B valuation [src: ddw-online.com, genengnews.com]; and a reported $400M Series C (July 2026, Index Ventures) at a $3.8B valuation [src: businesswire.com, synbiobeta.com] — **Series C figures are aggregator/press-release sourced, treat as low-confidence.**

**Founders.** Joshua Meier (CEO, ex-OpenAI, Absci, Facebook AI; helped pioneer protein language models); Jack Dent (ex-Stripe engineer, Meier's Harvard classmate); Matt McPartlon (CTO, ex-VantAI, Absci); Jacques Boitreaud (ex-Aqemia) [src: thepharmaletter.com]. Incubated in OpenAI's SF office [src: thepharmaletter.com].

**Traction.** Two flagship models shipped in ~18 months; pivoting from a prediction tool toward turning AI-designed antibodies into actual medicines [src: aiworld.eu].

**Customers / partners.** Partner roster largely undisclosed; positioned as a platform/tooling provider to pharma.

**Bull / Bear.** Bull: elite ML talent, blistering model cadence, de novo antibody design is a multi-billion-dollar wedge. Bear: valuation ($3.8B) far outruns disclosed revenue; the ~20% hit-rate claim needs independent replication.

**Relevance to a 2-person software team.** Very high — the canonical example of a tiny ML team shipping frontier bio models with no owned wet lab.

---

#### Latent Labs — browser-based protein design from an AlphaFold2 co-lead

**What they build.** Latent-X, an all-atom generative model for de novo protein binders delivered as a *no-code web app and API* (software-only). Latent-X1 (July 2025) reported 91–100% macrocycle and 10–64% mini-binder experimental hit rates across seven targets; Latent-X2 (Dec 2025) designs drug-like antibodies (VHH, scFv, macrocyclic peptides) with picomolar–nanomolar affinity, low ex-vivo immunogenicity, needing only 4–24 designs per target [src: latentlabs.com, biopharmatrend.com].

**Funding.** $50M total disclosed, anchored by a $40M Series A co-led by Radical Ventures and Sofinnova Partners, with 8VC, Kindred, Pillar, Flying Fish, and Isomer; emerged from stealth Feb 2025 [src: sofinnovapartners.com, tech.eu].

**Founders.** Dr. Simon Kohl (CEO) — former co-lead of DeepMind's protein-design team and a senior research scientist on AlphaFold2, the Nobel-winning project [src: tech.eu, pharmaphorum.com].

**Traction.** Two model generations shipped in under a year; publicly accessible platform lowering the barrier to protein design; peer-reviewed/preprint validation (arXiv 2512.20263) [src: arxiv.org].

**Customers / partners.** Platform offered to "selected partners" via API/browser; specific pharma names largely undisclosed [src: latentlabs.com].

**Bull / Bear.** Bull: top-tier AlphaFold pedigree, a genuinely productized web interface (rare in this field), strong published hit rates. Bear: thinly capitalized relative to US rivals ($50M vs. Chai's hundreds of millions); monetization path for a self-serve tool is unproven.

**Relevance to a 2-person software team.** Extremely high — Latent Labs is the clearest proof that a software team can ship a *usable web product* for protein design; a model to emulate both technically and as go-to-market.

---

#### Profluent — "writing biology" with protein language models, OpenCRISPR as proof

**What they build.** ProGen-lineage protein LLMs; ProGen3 scales to 46B parameters trained on ~1.5T tokens over 100B+ proteins, invoking AI scaling laws for protein design [src: thehealthcaretechnologyreport.com, fortune.com]. Famous for OpenCRISPR-1, an open-source, AI-designed gene editor now used by thousands of researchers and some large pharma [src: airstreet.com]. Software-first with validation partners.

**Funding.** $9M early round, then $35M (March 2024, led by Spark Capital; Insight Partners, Air Street, plus angels incl. Google DeepMind's Jeff Dean) [src: finsmes.com, pulse2.com]; then a $106M Series B (announced Nov/Dec 2025, co-led Altimeter Capital and Bezos Expeditions, with Spark, Insight, Air Street) [src: finsmes.com, tbpndigest.com]. Reported totals vary — Profluent/press cite ~$150M, aggregators cite up to $295M [src: finsmes.com, startupintros.com] — **treat total as low-confidence.**

**Founders.** Ali Madani (founder/CEO) — led ML research at Salesforce, where he first applied large-scale generative models to controllable protein design (the original ProGen) [src: airstreet.com].

**Traction.** OpenCRISPR-1 released openly and adopted broadly; a "Protein Atlas" of 115B+ AI-designed proteins [src: fortune.com].

**Customers / partners.** OpenCRISPR users across academia and pharma (unnamed); angel/strategic backing from Google DeepMind leadership.

**Bull / Bear.** Bull: scaling-laws thesis for proteins, credible gene-editing wedge, marquee investors (Bezos). Bear: open-sourcing the flagship editor complicates monetization; gene-editing IP/licensing is a crowded, litigious space.

**Relevance to a 2-person software team.** High — ProGen is a documented software-only protein-LM recipe, and open weights/editors are directly reusable.

---

#### Arc Institute (nonprofit) — the genomic foundation model lab behind Evo 2

**What they build.** Evo 2, a DNA foundation model trained on 9.3 trillion base pairs spanning all domains of life — it predicts effects of both coding and noncoding mutations and generates genome-scale sequences, and autonomously learns features like exon–intron boundaries and transcription-factor binding sites [src: eurekalert.org, genengnews.com]. Fully open: weights, training/inference code, and the OpenGenome2 dataset [src: eurekalert.org]. Built with NVIDIA. Software-plus-wet-lab (Arc runs real biology labs).

**Funding.** Not a startup — a nonprofit launched Dec 2021 with a $650M endowment from Patrick Collison, Vitalik Buterin, Dustin Moskovitz & Cari Tuna (Good Ventures), Ron Conway, and others [src: wikipedia.org, time.com].

**Founders.** Silvana Konermann (Stanford biochemist, exec director), Patrick Hsu (UC Berkeley bioengineer; co-developer of CRISPR tools), and Patrick Collison (Stripe co-founder) [src: wikipedia.org].

**Traction.** Evo 1 and Evo 2 shipped and published in *Nature*; broad academic uptake; core-partner universities Stanford, UC Berkeley, UCSF [src: eurekalert.org, ucsf.edu].

**Customers / partners.** NVIDIA (co-development/compute), and its university network; no commercial customers by design.

**Bull / Bear.** Bull: the leading open DNA foundation model, no-strings funding, elite scientific leadership. Bear: nonprofit with no revenue model; value accrues to the ecosystem, not equity holders.

**Relevance to a 2-person software team.** Very high indirectly — Evo 2 weights and OpenGenome2 are free to build on, making Arc a foundational dependency rather than a competitor for a small team.

---

#### Cradle — protein-engineering *software* sold to big pharma, the clearest SaaS model

**What they build.** An AI-powered protein-engineering platform (software + managed wet-lab loop) that lets drug/biotech teams optimize proteins — stability, expression, binding — via generative models in a design-build-test cycle [src: cradle.bio]. Positioned as tooling pharma buys, not a drug pipeline.

**Funding.** $5.5M pre-seed, $24M Series A (2023, Index Ventures) [src: indexventures.com, pharmaphorum.com]; $73M Series B (led by IVP, with Index and Kindred), bringing total to $100M+ [src: iamsterdam.com, futuremedicine.com]. **No Series C confirmed as of this writing — the task's "Series C" framing appears premature; latest round is the Series B.**

**Founders.** Stef van Grieken (co-founder/CEO; ex-Google, worked on Google's AI/translation efforts) [src: wikipedia.org, cradle.bio].

**Traction.** 50+ active projects; powering drug-discovery programs for six of the top 25 big pharma companies [src: cradle.bio]. 2025 partnership with Novo Nordisk on next-gen GLP-1 therapeutics (the Wegovy/Ozempic class) [src: cradle.bio].

**Customers / partners.** Named: Johnson & Johnson and Novo Nordisk; "six of top 25 pharma" more broadly [src: cradle.bio].

**Bull / Bear.** Bull: a real, repeatable B2B SaaS revenue model with marquee pharma logos — the most financially legible company on this list. Bear: as a tooling vendor it captures a sliver of the value its customers' drugs create; competition from in-house pharma AI and rivals (Chai, Latent) is intensifying.

**Relevance to a 2-person software team.** Highest commercial relevance — Cradle is the template for *selling protein-AI software to pharma* without owning a drug pipeline, exactly the shape a small software team can aspire to.

---

#### Basecamp Research — proprietary biodiversity data as the moat ("the data company")

**What they build.** Foundation protein/DNA models (the EDEN family, plus BaseFold for structure prediction, reported to beat AlphaFold2 on large/complex proteins and small-molecule interactions) — but the real asset is BaseData, a proprietary evolutionary genomic dataset of ~10 billion protein sequences / 100B+ novel genes from 1M+ newly discovered species, collected via partnerships in 30+ countries across all seven continents [src: the-decoder.com, hpcwire.com].

**Funding.** $20M seed (2022), ~$60M Series B (2024), and a $140M Series C (Sept 2026, led by S32, with NVentures/NVIDIA, Anthropic's Anthology Fund, Catalio, NATO Innovation Fund, Rockefeller, UK Sovereign AI Fund) — total ~$225M [src: forbes.com, finance.yahoo.com, lqventures.com]. **2026 Series C details are aggregator/brief-sourced — moderate confidence.**

**Founders.** Dr. Glen Gowers (biochemist, synthetic genomics; first to sequence DNA off-grid on an ice-cap expedition) and Dr. Oliver Vince (computer scientist/engineer, cancer-drug PhD); met as Oxford undergraduates [src: glexsummit.com, forbes.com].

**Traction.** EDEN/BaseFold shipped; a "nature-equity" model sharing royalties with indigenous communities and source countries [src: forbes.com]. Strategic tie with the Broad Institute (David Liu) on programmable genetic medicines [src: biopharmadive.com].

**Customers / partners.** Broad Institute / David Liu lab; NVIDIA; data licensing to model builders [src: biopharmadive.com].

**Bull / Bear.** Bull: a genuinely differentiated, hard-to-replicate *data* moat in a field where everyone else trains on the same public databases. Bear: data-licensing economics and the legal/ethical complexity of cross-border bioprospecting are unproven at scale.

**Relevance to a 2-person software team.** Instructive but hard to copy — the lesson is that *proprietary data*, not just model architecture, can be the moat; a small team can't replicate global sample collection but can think hard about unique data sources.

---

#### Inceptive — "biological software," RNA medicines designed by deep learning

**What they build.** AI-designed RNA molecules (mRNA and beyond), using large-scale deep learning in a tight loop with high-throughput wet-lab experiments to engineer RNA with desired properties — framed as writing "biological software" [src: crazystupidtech.com]. Software + substantial owned experimental capacity.

**Funding.** ~$20M seed (2021) and a $100M Series A (2023); backers include Andreessen Horowitz, NVIDIA, S32, and Obvious Ventures [src: pharmaphorum.com, crunchbase.com].

**Founders.** Jakob Uszkoreit (CEO) — co-author of "Attention Is All You Need," the 2017 Transformer paper, formerly at Google; co-founded with Rhiju Das (Stanford RNA-structure scientist, Eterna creator) [src: crazystupidtech.com, cnbc.com].

**Traction.** Model/platform work ongoing; a June 2026 strategic collaboration with Alnylam pairing 20+ years of RNAi data with Inceptive's models — $30M upfront and up to a $2B conditional ceiling [src: investors.alnylam.com, cnbc.com] (deal-ceiling figures are headline/biobucks — low-confidence on realized value).

**Customers / partners.** Alnylam (named, RNAi); NVIDIA as investor/compute partner [src: investors.alnylam.com].

**Bull / Bear.** Bull: a literal Transformer co-inventor applying frontier ML to RNA — the modality behind the COVID vaccines and a large emerging drug class; strong first pharma deal. Bear: RNA design is wet-lab-intensive and capital-hungry; longer to clinical proof than antibody/protein peers, and only one major partnership disclosed.

**Relevance to a 2-person software team.** Moderate — the ML ideas (sequence models for RNA) are learnable, but Inceptive's edge depends heavily on owned high-throughput biology a software-only team cannot match.

---

#### Isomorphic Labs — the DeepMind spin-out industrializing AlphaFold 3 for drug design

**What they build.** An AI drug-design engine built on AlphaFold 3 (co-developed with Google DeepMind; predicts structures and interactions of proteins, DNA/RNA, ligands) plus proprietary downstream models to design candidate small-molecule drugs [src: isomorphiclabs.com, intuitionlabs.ai]. Software-first, aiming to run its own clinical programs. Spun out of Google DeepMind, 2021.

**Funding.** $600M Series A (March/April 2025, led by Thrive Capital with GV/Alphabet) [src: biostock.se, synbiobeta.com]; then a $2.1B Series B (announced May 2026, led by Thrive, with Alphabet, GV, and new investors MGX, Temasek, CapitalG, UK Sovereign AI Fund) [src: isomorphiclabs.com, fiercebiotech.com]. Post-money valuation undisclosed (press speculation ran from ~$10B to reported later talks near $40B) — **valuation low-confidence.**

**Founders.** Demis Hassabis (founder/CEO; DeepMind co-founder, Nobel laureate in Chemistry 2024 for AlphaFold) [src: wikipedia.org].

**Traction.** AlphaFold 3 shipped (May 2024); first AI-designed drug candidates advancing toward clinical trials [src: clinicaltrialsarena.com].

**Customers / partners.** Eli Lilly and Novartis (named; deals worth up to ~$3B combined, Jan 2024); Novartis expanded from three to six projects; also a J&J research collaboration [src: intuitionlabs.ai, fiercebiotech.com].

**Bull / Bear.** Bull: the strongest brand, capital base, and science in AI drug discovery, with real pharma revenue and a Nobel-winning core. Bear: eye-watering valuation versus zero approved drugs; drug development timelines mean a decade-plus to validate the thesis.

**Relevance to a 2-person software team.** Low as a competitor (unreachable scale), but high as a benchmark — AlphaFold 3's methods are published, and the ecosystem it created (open-weight AF3-class models like Chai-1, Boltz) is what a small team actually builds on.
