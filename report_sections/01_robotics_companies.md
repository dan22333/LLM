### Company dossiers — Robotics

The robotics foundation-model cohort splits along a fault line worth holding in mind while reading: **"brain" companies** that build a generalist policy model and try to stay hardware-agnostic (Physical Intelligence, Skild AI, Generalist AI, Field AI, Covariant, Dyna), versus **vertically integrated humanoid OEMs** that build both the robot body and its AI (Figure, 1X, Apptronik). The brain companies are the more natural reference class for a tiny software-first founding team; the humanoid OEMs are capital sinks that only make sense with nine-figure checks. Fund sizes and valuations in the 2025–2026 mega-rounds moved faster than primary filings, so several numbers below are flagged low-confidence.

#### Physical Intelligence — the "robot foundation model" category leader

**What they build:** Physical Intelligence (styled "π") builds a single generalist vision-language-action (VLA) policy intended to run many different robots and tasks from one set of weights. Its flagship π0 ("pi-zero"), launched October 2024, is a flow-matching VLA built on top of a pretrained VLM backbone; the follow-on π0.5 adds open-world generalization (e.g., cleaning a kitchen it has never seen). It open-sourced the model and the `openpi` training/inference repo in February 2025, which made π0 a de-facto reference implementation that competitors and academics now fine-tune. The strategic bet is "one brain, any body" — explicitly not building hardware. [src: wikipedia.org] [src: sacra.com]

**Funding:** ~$1.07B raised across three rounds — $70M seed (March 2024); $400M Series A (Nov 2024, ~$2.4B valuation); $600M Series B (Nov 2025, led by CapitalG, $5.6B post-money). Backers include Jeff Bezos, OpenAI, Thrive Capital, Lux Capital, Bond. Reportedly in talks Oct 2026 to raise ~$1B at ~$20B (low-confidence, secondary trackers). [src: sacra.com] [src: humanoidsdaily.com]

**Founders:** Among the most-cited names in robot learning. Karol Hausman (CEO, ex-Google DeepMind staff scientist, Stanford adjunct, USC PhD); Sergey Levine (chief scientist, UC Berkeley professor); Chelsea Finn (Stanford, meta-learning pioneer); Brian Ichter and Quan Vuong (ex-Google Research/DeepMind); plus entrepreneur Lachy Groom and Anduril's Adnan Esmail on the business side. [src: wikipedia.org] [src: karolhausman.github.io]

**Traction:** Pre-revenue research-stage; moat is talent + the open model ecosystem rather than deployments.

**Customers / partners:** No disclosed commercial customers; influence runs through `openpi` adoption and research collaborations.

**Bull case / Bear case:** Bull — if one generalist policy really does transfer across bodies, π is the Android of robots and owns the layer everyone builds on. Bear — no hardware, no deployments, and open-sourcing the crown jewels means the moat is purely team and compute while better-capitalized integrators catch up.

**Relevance to a 2-person team:** The single best technical reference in the field — `openpi` is public, so you can study and fine-tune a frontier VLA without raising a dime. Compete on a vertical/data niche, never on building a better generalist than this team.

#### Skild AI — "omni-bodied" general-purpose robot brain

**What they build:** Skild builds a hardware-agnostic foundation model (the "Skild Brain") trained to control many robot morphologies — arms, humanoids, quadrupeds — from one model, branding the approach "omni-bodied." Its emphasis is on scaling internet-scale and simulation data to get emergent robustness (recovering from damage, novel objects). It shipped its flagship S1 model in August 2026 and, unlike Physical Intelligence, is pursuing commercial deployment aggressively rather than open research. [src: therobotreport.com] [src: businesswire.com]

**Funding:** $2.2B+ across four rounds — $300M Series A (July 2024, ~$1.5B valuation); $500M Series B (May 2025, ~$4.7B); $1.4B Series C (Jan 2026, led by SoftBank, >$14B valuation) with NVIDIA NVentures, Bezos Expeditions, Samsung, LG, Schneider Electric, Salesforce Ventures. Valuation jumped ~9x in 18 months — treat the $14B as a frothy 2026 mega-round mark (low-confidence as a durable number). [src: businesswire.com] [src: valueaddvc.com]

**Founders:** Deepak Pathak (CEO) and Abhinav Gupta (president), both Carnegie Mellon robotics professors with deep RL/self-supervised-learning pedigrees; founded 2023. [src: siliconvalleyinvestclub.com]

**Traction:** Reported >$100M ARR as of ~Sept 2026, claimed ~10 months after first commercial deployment — a striking figure for the cohort if accurate (single-source, flag as low-confidence). [src: aimagazine.com]

**Customers / partners:** Strategic investors Samsung, LG, and Schneider Electric double as industrial channel partners; specific customer names undisclosed.

**Bull case / Bear case:** Bull — academic dream team plus the fastest reported revenue ramp and SoftBank-scale capital to buy data and deployments. Bear — $14B on a model barely a year into commercialization is a bet on a narrative; the $100M ARR claim is unverified and the valuation leaves no room for error.

**Relevance to a 2-person team:** Proof that "two professors + a focused data strategy" is a fundable archetype. The lesson is the revenue-first posture — ship into a paying use case fast rather than publish — not the capital scale, which you can't match.

#### Figure AI — vertically integrated humanoid, aiming for a home robot

**What they build:** Figure builds its own humanoid (Figure 02/03) and its own embodied-AI stack, Helix — a vision-language-action model that runs on-robot and can coordinate two robots at once. In 2025 it announced BotQ, an in-house factory targeting up to 12,000 humanoids/year, and pivoted messaging toward "human-level intelligence" and eventual home deployment. The thesis is full vertical integration: owning body, brain, and manufacturing so the data flywheel and unit economics stay in-house. [src: prnewswire.com] [src: wikipedia.org]

**Funding:** >$1B Series C (Sept 2025, led by Parkway Venture Capital, $39B post-money) — a ~15x step-up from the $2.6B Feb-2024 round. Investors: Brookfield, NVIDIA, Intel Capital, Microsoft, OpenAI Startup Fund, Bezos Expeditions. The $39B mark is widely cited but is a 2025 private valuation — treat as directional. [src: intelcapital.com] [src: prnewswire.com]

**Founders:** Brett Adcock (founder/CEO), serial entrepreneur who previously founded Vettery (HR marketplace, sold to Adecco) and Archer Aviation (eVTOL, went public via SPAC) — a credible builder-operator, though not a robotics researcher by training. [src: wikipedia.org]

**Traction:** BMW Spartanburg is the showcase — Figure logged 1,250+ runtime hours loading 90,000+ parts across 30,000 vehicles; in June 2026 BMW expanded Figure 03 into logistics in Plant Spartanburg's Hall 52. BotQ reportedly produced 350+ Figure 03 units by April 2026 (sales undisclosed). [src: ifactoryapp.com] [src: theaiinsider.tech]

**Customers / partners:** BMW (flagship automotive deployment); NVIDIA and Microsoft as compute/strategic partners.

**Bull case / Bear case:** Bull — real factory deployments, in-house manufacturing, and an operator-CEO who has scaled hard-tech twice. Bear — $39B is priced for a product that doesn't yet sell at volume; humanoid hardware burns enormous capital and the home-robot vision is years out.

**Relevance to a 2-person team:** Do not compete — this is a capital and manufacturing game. Study it as the benchmark for what "vertically integrated" costs, and as the enterprise customer (BMW-type) you might instead sell software or data into.

#### 1X Technologies — consumer humanoid for the home (NEO)

**What they build:** 1X builds the NEO humanoid and its own VLA model, Redwood, which handles whole-body control. Its differentiator is an explicit consumer/home focus (vs. factory-first rivals) and a soft, lightweight, tendon-driven design meant to be safe around people. Every deployed NEO is framed as a "data factory" feeding Redwood — early units partly teleoperated to bootstrap the dataset. Founded 2014 in Norway as Halodi Robotics; earlier robot EVE targeted logistics/security. [src: wikipedia.org] [src: embodyvc.com]

**Funding:** ~$136.5M disclosed to date; $100M Series B (Jan 2024). Reportedly raising up to $1B at ~$10B+ (Sept 2025 talks, no confirmed close as of mid-2026 — low-confidence). Investors historically include OpenAI, EQT Ventures, Tiger Global. [src: sacra.com] [src: techstartups.com]

**Founders:** Bernt Øivind Børnich (CEO), Norwegian roboticist (U. Oslo, robotics/nanoelectronics); founded the company in 2014 and rebranded/refocused it on humanoids in 2023 — a long-arc hardware founder rather than an ML-research celebrity. [src: wikipedia.org]

**Traction:** NEO priced at $20,000 outright or $499/month rental; pre-orders opened Oct 28, 2025, and 1X said the first-year 10,000-unit allocation sold out in five days (deliveries late 2026). Signed EQT to deploy up to 10,000 NEO units across 300+ portfolio companies, 2026–2030. [src: blog.robozaps.com] [src: embodyvc.com]

**Customers / partners:** EQT (enterprise rollout); early-adopter consumer preorder cohort; OpenAI as investor/partner.

**Bull case / Bear case:** Bull — first-mover on a priced, orderable consumer humanoid with a splashy sell-out and an enterprise anchor. Bear — early NEO units lean on human teleoperators, so autonomy is unproven; home manipulation is the hardest domain and safety/liability risk is highest.

**Relevance to a 2-person team:** Watch the teleoperation-to-autonomy data flywheel — it's the clearest public example of using deployed units to bootstrap a dataset. Not a competitive target for a software team.

#### Covariant (Amazon) — warehouse manipulation pioneer, now largely absorbed

**What they build:** Covariant built the "Covariant Brain," a foundation model for robotic manipulation focused on warehouse bin-picking, and in March 2024 announced RFM-1 (Robotics Foundation Model 1) — pitched as "a large language model, but for robot language," trained on production picking data to generalize across objects. Historically the most commercially mature manipulation-AI company before the humanoid wave. [src: thebotscout.com] [src: wikipedia.org]

**Funding:** Raised ~$222M as an independent company (Index, Radical, others) before the Amazon deal. In August 2024 Amazon executed a reverse-acquihire: it hired co-founders Pieter Abbeel, Peter Chen, and Rocky Duan plus ~25% of staff, and took a non-exclusive license to Covariant's foundation models — a structure read as designed to sidestep antitrust review. [src: techcrunch.com] [src: the-decoder.com]

**Founders:** Pieter Abbeel (UC Berkeley professor, one of the most influential deep-RL researchers), Peter Chen, and Rocky Duan — all now at Amazon. The remaining company operates under CEO Ted Stinson (former COO). [src: wikipedia.org] [src: techcrunch.com]

**Traction:** Pre-deal, real deployments with warehouse/logistics integrators; post-deal, its frontier talent and tech flow into Amazon's robotics org while the rump entity continues with a licensed stack.

**Customers / partners:** Historically Knapp, Bastian Solutions, and other logistics integrators; now effectively Amazon.

**Bull case / Bear case:** Bull — the foundational manipulation IP and team live on inside the best-resourced robotics deployer on earth (Amazon). Bear — as an independent investable company it no longer really exists; the reverse-acquihire is a cautionary tale about where robotics startups exit.

**Relevance to a 2-person team:** The key lesson is the exit pattern — big-tech reverse-acquihires are a real outcome for robotics-AI teams. Also the clearest proof that narrow warehouse manipulation was commercially viable before "humanoid" hype.

#### Generalist AI — generalist manipulation from ex-DeepMind/Boston Dynamics talent

**What they build:** Generalist builds general-purpose robot foundation models aimed at dexterous manipulation across many robot types, in the same "one brain" lineage as Physical Intelligence but with a team drawn from Google DeepMind robotics and Boston Dynamics. The pitch is scaling real-world manipulation data to reach broadly capable, deployable policies; it stays relatively stealthy on model specifics. [src: roboticscenter.ai] [src: bloomberg.com]

**Funding:** ~$740M total. First round March 2025. $400M led by Radical Ventures at a $2B valuation (8VC, Union Square Ventures, Norwest, Hanabi, plus existing backers NVIDIA and Bezos Expeditions). August 2026 $200M Series B extension led by 8VC took it to a $3B valuation (Series B total ~$600M). [src: bloomberg.com] [src: intelligentliving.co]

**Founders:** Pete Florence and Andy Zeng (both former Google DeepMind research scientists, well known for manipulation and language-conditioned robotics work) and Andy Barry (former Boston Dynamics engineer) — a blend of frontier ML research and hard-robotics engineering. [src: bloomberg.com] [src: qz.com]

**Traction:** Early-stage/stealth; value is in the team and NVIDIA/Bezos backing rather than disclosed revenue or deployments.

**Customers / partners:** NVIDIA (strategic/compute); no named commercial customers disclosed.

**Bull case / Bear case:** Bull — a credible "second Physical Intelligence" with elite pedigree, a reasonable (vs. peers) valuation, and NVIDIA in the cap table. Bear — crowded generalist-brain thesis, no disclosed traction, and it must differentiate against a better-known, better-funded π.

**Relevance to a 2-person team:** The most "copyable" archetype on this list — small elite team, big raise on pedigree + thesis, no hardware. If you have comparable research credibility, this is the template; if not, it shows how high the pedigree bar for that path is.

#### Field AI — physics-first foundation models for field robots (no GPS, no maps)

**What they build:** Field AI builds "physical AI" foundation models (branded Field Foundation Models) that let robots navigate and operate autonomously in unstructured, GPS-denied, unmapped environments — construction sites, mines, oil-and-gas, disaster zones. The differentiation is domain: outdoor/industrial field robotics where SLAM and GPS fail, rather than tabletop manipulation. The models are hardware-agnostic and the company emphasizes safe, risk-aware autonomy. [src: cnbc.com] [src: fast.io]

**Funding:** ~$405M Series A (Aug 2025, $2B valuation) backed by Bezos Expeditions, Gates Frontier, NVIDIA NVentures, Khosla, Temasek, Intel Capital, Prysm, BHP Ventures. A further ~$700M undisclosed-stage round (Oct 2026) reportedly took it to ~$10B — a 5x step-up in 14 months; treat the $10B as a 2026 mega-round mark (low-confidence, secondary trackers). [src: cnbc.com] [src: multiples.vc]

**Founders:** Ali Agha (CEO), Shayegan Omidshafiei, and David Fan — NASA JPL veterans whose team roots trace to winning DARPA's Subterranean Challenge, giving them genuine authority in GPS-denied autonomy. [src: multiples.vc] [src: sacra.com]

**Traction:** Revenue undisclosed; BHP Ventures (mining) in the cap table signals real industrial pilots. Positioned around paying heavy-industry use cases rather than research.

**Customers / partners:** Industrial strategics BHP (mining) and Emerson among backers; specific deployment customers undisclosed.

**Bull case / Bear case:** Bull — owns a defensible, less-crowded niche (field/industrial autonomy) with deep-pocketed industrial customers and uniquely credentialed founders. Bear — the $10B mark badly outruns disclosed revenue, and field robotics has a long history of slow, hard-to-scale industrial sales cycles.

**Relevance to a 2-person team:** The strongest case study in niche selection — they avoided the manipulation bloodbath by picking a domain where their DARPA pedigree is a moat. For a small team, "pick a vertical the giants ignore" is the takeaway.

#### Dyna Robotics — focused, deployable manipulation for commercial tasks

**What they build:** Dyna builds robotic foundation models (DYNA-1) aimed at reliable, economically useful single-task manipulation deployed in real commercial settings, framed as a path to "physical AGI." Rather than chasing full generality, it emphasizes reliability — reporting a 99%+ success rate over 24-hour continuous operation on real tasks — and fast commercial proof. The strategy is narrow, dependable, revenue-generating deployments first. [src: prnewswire.com] [src: embodyvc.com]

**Funding:** ~$143.5M total — $23.5M seed (March 2025, CRV and First Round) and $120M Series A (Sept 2025, >$600M post-money) with NVIDIA NVentures, Amazon Industrial Innovation Fund, Samsung Next, LG Technology Ventures, Salesforce Ventures, CRV, First Round. [src: prnewswire.com] [src: sacra.com]

**Founders:** Lindon Gao and York Yang — repeat founders who built and sold Caper AI (AI shopping carts) to Instacart for ~$350M — paired with Jason Ma, a former DeepMind research scientist. The mix of a proven commercial exit plus frontier research pedigree is unusually balanced for this cohort. [src: embodyvc.com]

**Traction:** DYNA-1 shipped in year one with the 99%+/24-hour reliability claim and early paying customer deployments cited; concrete revenue figures undisclosed. [src: finance.yahoo.com]

**Customers / partners:** Strategic investors Amazon, Samsung, LG, Salesforce as likely channels; named end customers undisclosed.

**Bull case / Bear case:** Bull — the most capital-efficient, commercially grounded team here, with a founder who has already turned robotics-adjacent AI into a real exit. Bear — narrow-task reliability may not generalize, and it's far smaller/less-funded than the generalist-brain giants it will eventually collide with.

**Relevance to a 2-person team:** The single most relevant model on this list — small team, modest raise, reliability-and-revenue-first, narrow deployable task. This is roughly what a disciplined two-person robotics-AI company should aspire to look like at Series A.

#### Apptronik (bonus) — humanoid OEM anchored to Google DeepMind's models

**What they build:** Apptronik builds the Apollo humanoid for industrial logistics and manufacturing, and — unlike Figure or 1X — does not build its own frontier brain, instead partnering with Google DeepMind to run Gemini Robotics models on Apollo. It spun out of the University of Texas Human Centered Robotics Lab and has a long hardware lineage (including NASA Valkyrie work). The bet is best-in-class humanoid hardware plus the best external AI, rather than owning both. [src: cnbc.com] [src: interestingengineering.com]

**Funding:** Series A reopened and expanded to ~$935M total; latest raise ~$520M (some reports ~$1B including commitments) at a ~$5–5.5B valuation (Feb 2026), extending a $415M Feb-2025 round. Investors include Google and Mercedes-Benz. Valuation figures vary by source — treat $5–5.5B as approximate. [src: cnbc.com] [src: forbes.com]

**Founders:** Jeff Cardenas (CEO) and team out of UT Austin's robotics lab; grounded in academic humanoid hardware rather than ML research. [src: cnbc.com]

**Traction:** Apollo in pilots with Mercedes-Benz (automotive manufacturing logistics) and GXO Logistics (warehouse), pre-full-deployment evaluation. [src: ifactoryapp.com]

**Customers / partners:** Mercedes-Benz and GXO (pilots and investors); Google DeepMind (AI brain partner).

**Bull case / Bear case:** Bull — strong hardware plus Google's frontier models and blue-chip industrial pilots, at a fraction of Figure's valuation. Bear — outsourcing the brain to Google cedes the most valuable layer; it's one of several humanoid OEMs competing for the same automotive/logistics pilots.

**Relevance to a 2-person team:** Illustrates the opposite integration choice from Figure — buy the brain, build the body. For a software team, the read is that even well-funded OEMs will pay for external AI, which is where a focused model company can sell in.
