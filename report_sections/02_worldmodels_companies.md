### Company dossiers — World Models

*World models learn a predictive, controllable representation of an environment — generating the next frame/state conditioned on an action — so an agent (or a user) can navigate, plan, or train inside a simulation rather than against static data. The companies below attack this from three angles: generative 3D/interactive worlds (World Labs, Decart, Odyssey, Runway, Genie 3), embodied/physical AI simulation (Wayve, NVIDIA Cosmos, General Intuition), and spatial maps of the real world (Niantic Spatial). Every fact is sourced; "undisclosed" marks unknowns. Many 2026 round figures are tracker- or press-sourced and flagged low-confidence.*

#### World Labs — frontier "large world model" lab (Fei-Fei Li)

**What they build:** "Large World Models" (LWMs) that generate persistent, explorable 3D scenes from text, image, video, or coarse 3D layout. Their commercial product **Marble** outputs editable 3D environments exportable as **Gaussian splats** (.spz/.ply), meshes, or video — i.e. a true 3D asset, not just a video clip, which is the differentiator vs. video-based world models [src: worldlabs.ai; techcrunch.com].

**Funding:** $230M seed, Sept 2024, at a ~$1B valuation, led by a16z, NEA, and Radical Ventures [src: pymnts.com]. A reported ~$1B round in early 2026 with AMD, Autodesk, Nvidia, Fidelity, Emerson Collective, and Sea participating, at a valuation reported around $5B [src: finance.yahoo.com; siliconrepublic.com] *(low-confidence: tracker/press-sourced; valuation figures vary and some outlets ran an unverified AMD-acquisition story that appears false)*.

**Founders:** Fei-Fei Li (Stanford, "godmother of AI," created ImageNet); Justin Johnson (vision/graphics, U. Michigan); Ben Mildenhall (co-inventor of **NeRF**); Christoph Lassner (neural rendering). Unusually deep 3D-graphics pedigree [src: pymnts.com].

**Traction:** Marble went demo (Dec 2024) → beta (Sept 2025) → GA (Nov 12, 2025) → **World API** for developers (Jan 2026). Tiered pricing: Free, Standard $20/mo, Pro $35/mo, Max $95/mo [src: therundown.ai; invideo.io].

**Customers / partners:** AMD and Autodesk as strategic investors/advisers; targets game, film, VFX, and simulation developers [src: finance.yahoo.com].

**Bull case:** Best-in-class 3D-native output and unmatched research pedigree; "spatial intelligence" could be the next platform layer. **Bear case:** Generation count caps and compute cost; unproven that 3D-world generation has a large near-term paying market vs. video.

**Relevance to a 2-person team:** The World API lets a tiny team embed 3D-world generation without training anything — a build-on-top opportunity, not a compete-with target.

#### Decart — real-time, low-latency generative world models (Israel)

**What they build:** Real-time, playable world models plus an inference-optimization stack. Three products: **Oasis** (fully AI-generated, playable "Minecraft"-like open world — the first of its kind, generated frame-by-frame with no game engine), **Lucy** (immersive video world model), and **DOS**, an inference/training optimization layer that runs across chip architectures at reportedly up to ~8x industry speed [src: research.contrary.com; decart.ai]. Oasis 2.0 (Sept 2025) restyles live Minecraft worlds at 1080p/30fps [src: siliconangle.com].

**Funding:** $32M at $500M+ (Dec 2024) [src: techcrunch.com]; $100M Series B at **$3.1B** post-money (Aug 2025), led by Sequoia, Benchmark, Zeev Ventures, with Aleph [src: siliconangle.com]; **$300M at ~$4B** (May 2026), led by Radical Ventures with NVIDIA [src: calcalistech.com; thenextweb.com] *(2026 round low-confidence on exact valuation)*.

**Founders:** Dean Leitersdorf (CEO) — youngest-ever Technion PhD (CS, age 23); Moshe Shalev (CPO) — ~14 years in IDF Unit 8200 building large-scale AI infra; Orian Leitersdorf (Chief Scientist). Founded Sept 2023 [src: research.contrary.com; nextomoro.com].

**Traction:** Oasis (built with Etched's transformer-ASIC) drew millions of players free; Oasis 3 (June 2026) positioned toward physical-AI/robotics simulation [src: dataconomy.com].

**Customers / partners:** NVIDIA and Amazon chips as compute partners; Etched for the original Oasis silicon [src: calcalistech.com].

**Bull case:** Latency leadership — real-time interactivity is the hard constraint for games and robotics sim, and DOS gives a defensible efficiency moat. **Bear case:** Oasis is still a tech demo; "forgetting what you build" (no long-term memory) limits real products.

**Relevance to a 2-person team:** Decart shows a small, elite team can reach the frontier on real-time inference — the efficiency angle, not raw scale, is where a lean team competes.

#### Wayve — embodied AI for autonomous driving (UK)

**What they build:** **AV2.0** — an end-to-end deep-learning driving stack ("Embodied AI") that learns directly from raw sensor inputs and is sensor-agnostic (camera/radar/LiDAR), rather than relying on HD maps and hand-coded rules. Research models **GAIA** (generative world model for driving scenes/synthetic data) and **LINGO** (vision-language for explainable driving) [src: wayve.ai; eclipse.capital].

**Funding:** **$1.05B Series C** (May 2024), led by SoftBank with NVIDIA and Microsoft — the largest AI round in European history at the time [src: cnbc.com; pitchbook.com]. A reported **$1.2B Series D** in early 2026 [src: tech.eu] *(low-confidence)*. Founded 2017.

**Founders:** Alex Kendall (CEO) and Amar Shah — Cambridge ML PhDs; pioneered end-to-end learned driving on public roads [src: en.wikipedia.org].

**Traction:** 8 years of SAE L2 road testing (concluded UK, March 2025); Nissan prototype demo (Sept 2025) [src: autonomousvehicleinternational.com].

**Customers / partners:** **Nissan** — definitive agreement (Dec 2025) to embed Wayve in next-gen ProPILOT ADAS, mass production for Japan from FY2027, becoming the first automaker to deploy Wayve at scale. **Uber + Nissan** Tokyo robotaxi pilot planned late 2026 (Nissan LEAF) [src: automotiveworld.com; counterpointresearch.com].

**Bull case:** A production automaker deal validates the embodied-AI thesis at scale; GAIA is a genuine driving world model. **Bear case:** Capital-intensive, long automotive timelines, and fierce competition (Tesla, Waymo, Mobileye).

**Relevance to a 2-person team:** Mostly a cautionary benchmark — this is a capital- and regulatory-heavy domain. The transferable lesson is using a world model (GAIA) to generate synthetic edge-case data cheaply.

#### Odyssey — streaming interactive "video world" models (UK/US)

**What they build:** A world model that **streams interactive 3D video** — generating a fresh video frame every ~40ms that a user navigates in real time with keyboard/controller/phone, like a learned video game with no engine. Claims spatial consistency and coherent output over 5+ minutes. Earlier tool **Explorer** turns text/images into 3D scenes [src: etcentric.org; dataconomy.com].

**Funding:** ~$27M early (incl. Pixar co-founder Ed Catmull) [src: techcrunch.com]; **$310M Series B at $1.45B** (June 2026), led by Natural Capital, with Amazon, AMD Ventures, GV; ~$337M total to date [src: techcrunch.com; valueaddvc.com] *(2026 round low-confidence on exact figures)*.

**Founders:** Oliver Cameron (CEO) — ex-VP Product at Cruise, former CEO of self-driving startup Voyage; Jeff Hawke — founding engineer at Wayve, Oxford AI PhD. Founded late 2023 [src: nzherald.co.nz].

**Traction:** Public interactive streaming demos (2025); positioning toward entertainment and "explorable" media [src: dig.watch].

**Customers / partners:** Amazon and AMD as strategic/compute backers [src: techcrunch.com].

**Bull case:** Real-time streaming world model from an AV-pedigree team; backing from Amazon hints at distribution. **Bear case:** Unclear product-market fit between "game" and "film"; consistency over long horizons is still the unsolved research problem.

**Relevance to a 2-person team:** Demonstrates that a research-led team can raise at >$1B on demos alone — narrative and team pedigree carry enormous weight in this category.

#### Runway — generative video with "general world models" framing (US)

**What they build:** AI video-generation models. **Gen-4** (2025) is explicitly pitched for "media generation and **world consistency**" — persistent characters, locations, and objects across shots — Runway's bridge from video generation toward world models. Earlier co-created Stable Diffusion [src: en.wikipedia.org].

**Funding:** **$308M Series D at $3B** (April 2025), led by General Atlantic, with Fidelity, Baillie Gifford, NVIDIA, SoftBank Vision Fund 2 [src: deadline.com]. Reported **$315M Series E at $5.3B** (Feb 2026) [src: aibusinessweekly.net] *(low-confidence)*. ~$200M ARR reported; +$40M ARR in Q2 2026 alone [src: morphed.app].

**Founders:** Cristóbal Valenzuela (CEO), Anastasis Germanidis, Alejandro Matamala — met at NYU's ITP; research-driven from inception [src: en.wikipedia.org].

**Traction:** Among the most-used pro AI-video tools; strongest revenue traction of any company in this list.

**Customers / partners:** **Lionsgate** — custom model trained on its 20,000+ title catalog (2024), expanded in 2026 to an equity stake and a joint IP/series development program; **AMC Networks** (2025) for marketing and pre-visualization [src: investors.lionsgate.com; variety.com].

**Bull case:** Real revenue, real Hollywood customers, and a credible path from video to controllable world models. **Bear case:** "World model" framing is partly marketing — Gen-4 is still 2D video, not a navigable 3D state — and the video-gen space is brutally competitive (OpenAI Sora, Google Veo).

**Relevance to a 2-person team:** The clearest proof that world-model-adjacent tech can generate real B2B revenue now; the enterprise-services + custom-model wedge is replicable at small scale.

#### General Intuition — world models/agents trained on gameplay video (US)

**What they build:** Foundation models and agents for **spatial-temporal reasoning**, trained on billions of **action-labeled gameplay clips**. The bet: the spatial reasoning humans use in games transfers to robots and AVs. Core asset is parent Medal's dataset — ~2B clips/year from 10M+ monthly users across thousands of games [src: thenextweb.com; mlq.ai].

**Funding:** **$133.7M seed** (Oct 2025) — unusually large for a seed [src: investgame.net]; **$320M Series A at $2.3B** (June 2026), led by Khosla Ventures; ~$454M total disclosed [src: mlq.ai]. Most capital earmarked for compute via a CoreWeave pre-training deal *(2026 round low-confidence)*.

**Founders:** Pim de Witte (CEO) — co-founder/ex-CEO of Medal (largest game-clip platform, 10M MAU); as a teen ran the largest RuneScape private server (3M accounts). Moritz Baier-Lentz — Lightspeed partner (head of gaming), ex-Goldman VP, ex-BITKRAFT, Stanford MBA [src: slush.org; en.wikipedia.org].

**Traction:** Spun out of Medal in 2025; early-stage research lab, product undisclosed.

**Customers / partners:** CoreWeave (compute); no named end customers yet [src: mlq.ai].

**Bull case:** A proprietary, hard-to-replicate action-labeled video dataset — the data moat OpenAI reportedly tried to buy — is the scarcest input for action-conditioned world models. **Bear case:** Transfer from games to physical robots is unproven; pre-revenue at a $2.3B valuation.

**Relevance to a 2-person team:** The key lesson is **proprietary data as moat** — a small team sitting on unique action-labeled data can be worth more than one with more compute.

#### Niantic Spatial — real-world geospatial model (US)

**What they build:** A **Large Geospatial Model (LGM)** — an AI map of the physical world trained on 30B+ posed images from years of consumer scanning. Products: **Scaniverse** (leading mobile Gaussian-splatting capture app), a **Visual Positioning System** (centimeter-level device localization), and the LGM, which aims to give LLMs spatial grounding — not just where things are, but what they are and how they relate [src: nianticspatial.com; radiancefields.com].

**Funding:** Spun out of Niantic May 2025 with **$250M**: $200M from Niantic's balance sheet plus a $50M strategic investment from Scopely [src: en.wikipedia.org].

**Founders:** Led by John Hanke (Niantic founder, ex-Google Earth/Keyhole), carrying the AR/mapping DNA of Pokémon GO into an enterprise spatial-AI company [src: nianticspatial.com].

**Traction:** Processes ~1M new scans/week; usable spatial data for 10M locations; 1M+ fully VPS-activated locations [src: startuply.vc].

**Customers / partners:** **Snap** — multi-year strategic partnership and investment to build an AI-powered map [src: nianticspatial.com]. Targets AR, robotics, and logistics developers.

**Bull case:** A genuine, data-rich map of the real world is a scarce asset for embodied AI and AR; real-world grounding is complementary to generative world models. **Bear case:** Monetizing a spatial map outside of games is unproven; the spun-out business must find a new enterprise customer base.

**Relevance to a 2-person team:** Reinforces the data-moat thesis in the physical domain — but the capture network effect (millions of scanners) is near-impossible for a small team to bootstrap, so treat as infrastructure to consume, not replicate.

#### NVIDIA Cosmos — world-foundation-model platform / base models (US)

**What they build:** **Cosmos** is a platform of open **World Foundation Models (WFMs)** for physical AI — autonomous vehicles and robots. It generates photoreal, physics-based synthetic video/sensor data for training and evaluation, and ships tokenizers, guardrails, a video-curation pipeline, and post-training workflows. **Cosmos-Predict2.5** unifies Text2World, Image2World, and Video2World in one flow-based model [src: nvidianews.nvidia.com; arxiv.org/abs/2501.03575]. Launched at CES January 2025.

**Funding:** N/A — a product line of NVIDIA (public, multi-trillion-dollar market cap). Strategically, Cosmos pulls developers deeper into NVIDIA's compute + Omniverse stack.

**Founders:** N/A (NVIDIA, Jensen Huang CEO). Developed by NVIDIA Research.

**Traction:** Open models released on GitHub/Hugging Face with permissive licensing; major release of models + physical-AI data tools in 2025; adopted across robotics and AV developers [src: github.com/nvidia-cosmos].

**Customers / partners:** Positioned as the base layer many others build on; AV and robotics firms use Cosmos for synthetic data and RL. (Several companies in this report — Decart, Odyssey, World Labs — count NVIDIA as investor or compute partner.)

**Bull case:** Distribution + compute + open weights make Cosmos the default substrate for physical-AI world models — a classic "sell the picks" platform play. **Bear case:** NVIDIA optimizes for selling GPUs, not winning any single application; the open models commoditize exactly the layer startups hope to charge for.

**Relevance to a 2-person team:** The single most important enabler here — open, pre-trained WFMs a two-person team can fine-tune for a vertical instead of training from scratch. Build *on* Cosmos; don't try to rebuild it.

#### Google DeepMind Genie 3 — the frontier benchmark (US/UK)

**What they build:** **Genie 3**, a general-purpose world model that generates **real-time, navigable, interactive environments** from a text prompt — 720p at 24fps, with multi-minute consistency and "**promptable world events**" (change weather, add animals, trigger events via natural language mid-stream). The technical leap: an autoregressive pipeline that re-reads the entire action trajectory each frame, so the world stays consistent even when a user backtracks. Integrates DeepMind's **SIMA** agent to pursue goals inside generated worlds [src: deepmind.google; rdworldonline.com]. Released August 2025; later surfaced as "Project Genie" for Gemini Ultra users [src: blog.google].

**Funding:** N/A — a research program inside Alphabet/Google DeepMind.

**Founders:** N/A. Led by DeepMind's world-models and SIMA research teams.

**Traction:** Not a commercial product; the state-of-the-art reference others are measured against. Jumped the "real-time barrier" and the multi-minute-consistency barrier that competitors (Decart, Odyssey) are still chasing.

**Customers / partners:** Internal — used for agent training, robotics, and research; a path to monetization via Gemini.

**Bull case:** The clear technical frontier — resolution, consistency horizon, and controllability all lead the field, backed by effectively unlimited compute. **Bear case:** Research-gated and not openly available; DeepMind rarely productizes fast, leaving commercial whitespace for startups.

**Relevance to a 2-person team:** The **benchmark to position against**, not to beat. Frame any small-team effort as "Genie-3-class interactivity for a specific vertical/dataset that DeepMind won't ship" — pick a niche the frontier lab has no incentive to serve.
