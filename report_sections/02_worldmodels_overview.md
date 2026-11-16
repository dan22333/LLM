## 2. World Models

### 2.1 Thesis in a paragraph

A "world model" is a learned, interactive simulator: a neural network that, given the current state of a world and an action, predicts the next state — and does so fast enough to be steered in a loop. This is the quiet pivot of the 2024–2026 generative-AI cycle. Text and image models learned to *describe* the world; world models learn to *run* it. The commercial consequence is that three previously separate markets — autonomous-vehicle simulation, robotics training data, and interactive media/gaming — are collapsing onto one technical substrate (spatiotemporal tokenizer → causal dynamics transformer → diffusion/splat renderer, conditioned on actions). Capital has noticed: world-model startups absorbed on the order of **$3B+ in VC in H1 2026 alone** [src: lapaasvoice.com], Fei-Fei Li's World Labs raised **$1B at a $5.4B post-money** in February 2026 [src: valueaddvc.com], and NVIDIA shipped an open "physical-AI" world-model platform (Cosmos) adopted by Figure, 1X, Agility, Uber and others [src: nvidianews.nvidia.com]. The deep insight for a finance-oriented reader: the same machinery that lets a robot "dream" a corner case is structurally identical to an *economic* world model — a simulator you can roll forward under counterfactual actions. The frontier is interactivity and action-conditioning, not pixel beauty; and the two things that are still broken (long-horizon consistency and physical grounding) are exactly where a focused team can build.

### 2.2 Market size & growth

World models sit at the intersection of several adjacent markets rather than forming one clean line item. The table below assembles the relevant segments. Treat absolute sizes as **order-of-magnitude** — research-firm estimates for the AV-sim segment alone span $0.8B–$2.0B for 2026 depending on scope, which is a flag that these are modeled, not measured.

| Segment | 2026 size (est.) | Growth | Source |
|---|---|---|---|
| World-model startup VC inflow | ~$3B+ raised H1 2026 (flow, not stock) | Step-change from near-zero in 2023 | [src: lapaasvoice.com] |
| AV / autonomous-driving simulation | ~$1.3–1.4B (one scope); up to ~$2.0B (broader "simulator" scope) | ~15–19% CAGR to 2030–2035 | [src: gminsights.com], [src: 360iresearch.com] |
| Synthetic data for Physical AI | ~$2.0B (2025 base) → ~$64B by 2035 | ~41% CAGR 2026–2035 | [src: marketresearch.com / Kaiso] |
| Synthetic data for robotics | ~$2.48B (from $1.86B in 2025) | ~33% CAGR; ~$7.7B by 2030 | [src: thebusinessresearchcompany.com] |
| Overall synthetic-data generation | ~$2.45B | ~25% CAGR 2026–2036 | [src: meticulousresearch.com] |
| Gaming / interactive synthetic media | No clean figure; proxied by neural-game-engine demos + World Labs/Decart valuations ($5.4B, $3.1B) | N/A — nascent | [src: valueaddvc.com], [src: techcrunch.com] |

Two structural demand drivers justify the CAGRs. First, **data exhaustion**: the supply of high-quality human text is effectively tapped, and there is no internet-scale corpus of robot-manipulation or driving-edge-case trajectories — so the marginal training datum for physical AI must increasingly be *synthesized* [src: labelstud.io]. Second, **the safety-test asymmetry**: a generative driving world model can produce "infinitely more tests than can be done in the real world," and specifically the rare, dangerous, long-tail scenarios that are precisely the ones real fleets almost never log [src: wayve.ai]. That is why AV-sim and physical-AI synthetic data are the segments with real revenue today, while interactive-media world models are still valuation-driven rather than revenue-driven.

*Low-confidence flag:* the "$3B+ into world-model startups" figure is a press aggregate, not an audited dataset; and the reported **AMD acquisition of World Labs for ~$8.2B** (Sept 2026, close by year-end) comes from secondary VC commentary and should be treated as unconfirmed until primary filings appear [src: valueaddvc.com].

### 2.3 Segmentation / taxonomy

World models are not one architecture. Four families, distinguished by *how state is represented* and *what they are optimized to do*:

**(a) Autoregressive video world models.** State is a sequence of discrete visual tokens; a causal transformer predicts the next token/frame conditioned on history and an action. This is the Genie/Oasis lineage. **Genie** (DeepMind, 2024) was an 11B-parameter model trained on unlabeled 2D-platformer video; **Oasis** (Decart/Etched) scaled the idea to a playable Minecraft generated from keyboard/mouse input alone [src: arxiv.org]. Strength: native action-conditioning and controllability. Weakness: token-level error compounds over time (drift).

**(b) Diffusion world models.** State is a continuous latent; each next frame is produced by a conditional diffusion model given past frames + action. **GameNGen** showed a diffusion model running DOOM at ~20 fps on a single TPU, stable over multi-minute sessions [src: arxiv.org]; **DIAMOND** showed diffusion world models matching discrete-token fidelity on Atari while *serving as the RL environment itself*. **Wayve's GAIA-2** moved driving to a continuous latent space for richer, more controllable multi-view video [src: alphaxiv.org]. Strength: visual fidelity and smoother dynamics. Weakness: compute per frame, and the same long-horizon error accumulation.

**(c) 3D-persistent / spatial world models.** State is an explicit 3D representation — typically **3D Gaussian splats** — not a frame buffer. **World Labs' Marble** turns a prompt/image/video into a *persistent, navigable* 3D world you can walk through, edit, and export as Gaussian splats plus collision/visual meshes [src: worldlabs.ai]. The distinguishing property is **persistence by construction**: because geometry is stored explicitly, the world doesn't "forget" what's behind you. Strength: hard spatial consistency, exportable to game/robotics pipelines. Weakness: less temporally dynamic — it models space more than it models *change over time*.

**(d) Driving / embodied (physical-AI) world models.** Purpose-built to generate training and evaluation data for policies. **NVIDIA Cosmos** is the platform play — Cosmos *Predict* (future-frame generation), *Transfer* (sim-to-real domain adaptation), and *Reason* (a reasoning world model that applies long chain-of-thought to physical common sense); Cosmos 3 fuses vision-reasoning, world-generation, and action-prediction into one mixture-of-transformers model [src: developer.nvidia.com]. **GAIA-2** is the vertically-integrated equivalent inside an AV company. Strength: directly plugged into robot/AV learning loops. Weakness: value is captured only if the simulated distribution matches reality (the sim-to-real gap).

The through-line: (a) and (b) differ by *renderer* (tokens vs. diffusion), (c) differs by *state representation* (explicit 3D), and (d) differs by *objective* (train a downstream policy, not entertain a human).

### 2.4 Technical deep-dive

**What makes a world model different from a text-to-video model.** A text-to-video model is a *function from a prompt to a finished clip* — it is non-interactive, non-causal (the future can influence the past during denoising), and offers no handle to intervene mid-rollout. A world model is a *transition function* `s_{t+1} = f(s_t, a_t)`: it is **action-conditioned** (you feed it a control at every step), **causal/autoregressive** (frame t+1 depends only on the past), and **closed-loop** (its own output becomes the next input). The crucial, concrete difference in the Genie-3 pipeline: at inference the model *replaces its learned latent action code with the user's chosen action*, generating the next frame from "world description + previous trajectory + incoming action" — that substitution is the entire ballgame [src: opencv.org]. Everything downstream — training RL policies, red-teaming an AV, exploring a counterfactual — requires that intervention point. A pretty video doesn't have one.

**The Genie-style pattern (tokenizer → dynamics → renderer).** The reference architecture has three learned components [src: emergentmind.com, ar5iv.labs.arxiv.org]:

1. **Spatiotemporal tokenizer.** A VQ-VAE/ST-transformer encoder compresses raw frames into a compact grid of discrete tokens. The "ST" matters: the transformer attends *within* a frame (spatial) and *across* frames (temporal), so tokens carry motion, not just appearance.
2. **Latent Action Model (LAM).** This is the clever, non-obvious piece. Internet video has no action labels — nobody annotated "the agent pressed jump." The LAM is an unsupervised VQ-VAE that *infers* a small discrete latent action between consecutive frames (the code that best explains frame t → t+1). This is what lets the model learn controllability from raw, unlabeled video, and why a tiny codebook (e.g. a handful of latent actions) can be mapped onto real controls at inference. The LAM is only needed at *training* time; at inference you swap in real actions.
3. **Dynamics model.** A causal decoder-only transformer (MaskGIT-style in Genie) autoregressively predicts next-frame tokens from past tokens + latent action; a decoder/renderer (discrete detokenizer, or a diffusion renderer in newer systems) turns tokens back into pixels. Genie 3 reportedly sustains 720p at 24 fps with consistency "over several minutes," a large jump from Genie 2's ~10–20 seconds [src: opencv.org].

**3D persistence via Gaussian splats (the World Labs branch).** Instead of regenerating pixels each step, the explicit-3D family stores the scene as **millions of 3D Gaussians** (position, covariance, color, opacity) that are rasterized in real time. Persistence is then a *property of the data structure*, not something the network must remember — walk away and walk back and the geometry is literally still there. Marble exports exactly these splats plus collider meshes, which is why it slots into game engines and robotics sims rather than being a closed video toy [src: worldlabs.ai]. The trade: splats nail *where things are* but are weaker at *how things change* (dynamics, interaction physics).

**How driving world models train and evaluate policies.** Two loops. (1) *Data augmentation*: GAIA-2/Cosmos generate controllable, multi-view, physically-plausible driving video — rain at dusk, a child emerging between parked cars — conditioned on ego-action and scene attributes, expanding the training set with the long tail that real fleets rarely capture [src: wayve.ai]. (2) *Closed-loop evaluation*: the world model becomes the environment, the policy acts, the model rolls the consequence forward, and you score the policy on scenarios that would be unethical or impossible to stage physically. NVIDIA's R²D² / Cosmos workflows package this for robot training; Cosmos *Transfer* then does sim-to-real domain adaptation to narrow the reality gap [src: developer.nvidia.com].

**The two unsolved problems — with benchmark evidence.**

- *Long-horizon consistency / drift.* Autoregressive and autoregressive-diffusion world models accumulate per-step error that compounds into "generative drift, structural collapse, and severe visual degradation" [src: arxiv.org/2607.11836]. New benchmarks make this quantitative: **WorldProbe** evaluates ~10 SOTA video world models in closed loop over extended spatial/temporal horizons and finds "systematic long-horizon failures"; **WorldOdysseyBench** (Alibaba AMAP) stress-tests 10–60s rollouts for action-following, visual drift, interaction physics, and trajectory memory [src: arxiv.org/2606.31672, 2610.39721]. Mitigations like **Cycle-World** (reverse-prediction cycle consistency) and self-corrective autoregression are 2026 research, not solved product.
- *Physical grounding.* Visual plausibility ≠ physical correctness. **PhyWorldBench** evaluates adherence to physical law across fundamental principles, multi-object interactions, and a novel **"Anti-Physics"** category (prompts that *instruct* violations, to test whether a model has internalized physics or merely memorized appearance) — and documents a "persistent gap between visual plausibility and genuine physical correctness" [src: emergentmind.com]. Companion work (PhyGround, Physion-Eval) and survey papers arguing current models "lack a persistent state core" reinforce that today's world models fake physics more than they compute it [src: arxiv.org/2606.20545]. This is the single biggest barrier to using them as trustworthy simulators — and the most defensible place to build evaluation IP.

### 2.5 Value chain — who captures value

- **Compute & foundation-model layer.** NVIDIA is positioned to win twice: it sells the GPUs *and* gives away Cosmos as open models to make physical AI GPU-hungry. Classic commoditize-the-complement. Hyperscalers (DeepMind/Genie, plus cloud hosts) hold the frontier interactive models.
- **Model/IP specialists.** World Labs (spatial/3D), Decart (real-time Oasis), Wayve (vertically-integrated driving). These capture value if their representation becomes the default export format (splats, latent actions) or if they own a proprietary data loop.
- **Data & simulation tooling.** The synthetic-data vendors and sim platforms (Foretellix-style scenario tooling, labeling/curation shops) — unglamorous but revenue-real today, riding the 33–41% CAGR physical-AI data curves.
- **Evaluation / trust layer.** Currently *underbuilt*. PhyWorldBench/WorldProbe are academic; there is no dominant commercial "are your world-model rollouts physically trustworthy?" vendor. Value is unclaimed here.
- **Application / policy owners.** AV companies, humanoid-robot firms, game studios — they capture end-value but depend on everything upstream.

The pattern: foundation layer is NVIDIA's to lose; application layer accrues to whoever owns proprietary real-world data; the **middle — eval, persistence, corner-case generation — is contestable** and is where a small team should look.

### 2.6 Trajectory 2024 → 2026 → what's next

- **2024 — proof it's possible.** GameNGen runs DOOM as a neural engine; Genie shows unsupervised action learning from raw video; DIAMOND shows diffusion world models as RL environments. Horizon: seconds. Everything is a demo.
- **2025 — verticalization and platforms.** Wayve ships GAIA-2 (continuous latent, multi-view, controllable) for driving; NVIDIA launches and then majorly expands Cosmos as an *open* physical-AI platform with named industrial adopters; World Labs previews Marble (persistent 3D) [src: nvidianews.nvidia.com, wayve.ai, bdtechtalks.com].
- **2026 — capital and consumer surface.** Genie 3 to public (24 fps, 720p, minutes of consistency); World Labs raises $1B at $5.4B and reportedly draws an AMD acquisition; Decart raises $300M; "$3B+" floods the category; Cosmos 3 unifies reason+generate+act. Benchmarks (WorldProbe, WorldOdysseyBench, PhyWorldBench) mature into the field's scoreboard [src: valueaddvc.com, lapaasvoice.com].
- **What's next (2027+).** (i) *Persistent-state cores* — hybrid architectures bolting explicit memory/3D onto generative dynamics to kill drift. (ii) *Physics as a learned-but-checked constraint* rather than an emergent accident. (iii) *Agentic world modeling* — world models used inside planning loops, including non-visual domains (code, economics). (iv) Consolidation: expect the foundation layer to concentrate (NVIDIA + 1–2 labs) while a long tail of vertical/data/eval startups gets acquired.

### 2.7 Whitespace for a 2-person team

The lesson from the value chain: do **not** try to train a frontier interactive renderer. Build in the contestable middle. Five concrete concepts:

**1. World-model evaluation & red-teaming SaaS.**
- *Wedge:* a hosted "PhyWorldBench-as-a-service" — physical-consistency, drift, and action-faithfulness scoring for any team shipping a world/robotics/AV model. Start where academia stopped.
- *Why now:* benchmarks exist (WorldProbe, WorldOdysseyBench, PhyWorldBench) but no commercial, continuously-updated, CI-integrated product; buyers (AV/robot teams) are regulated and need defensible eval.
- *First customer:* mid-tier AV or humanoid-robot companies without DeepMind-scale eval teams.
- *Moat:* a proprietary, growing scenario/violation library + the reputation of being the neutral scoreboard.
- *Tailwinds:* the 2025–2026 wave of open benchmarks (PhyWorldBench Jul 2025, WorldProbe and WorldOdysseyBench 2026) gives you a published methodology to productize; the "$3B+" funding surge means dozens of newly-funded world-model teams now need third-party eval to prove progress to boards and regulators; AV safety scrutiny makes neutral scoring a procurement requirement, not a nicety [src: emergentmind.com, lapaasvoice.com].
- *Risk:* NVIDIA or a lab bundles "good-enough" eval for free; must stay ahead on hard, adversarial cases.

**2. Vertical robotics sim on proprietary data.**
- *Wedge:* pick one narrow embodiment (e.g. warehouse picking, orchard robots, a specific surgical tool) and build the best corner-case world model for *that*, trained on data you lock up.
- *Why now:* Cosmos gives you a free foundation to post-train; the bottleneck is domain data, not base model [src: developer.nvidia.com].
- *First customer:* a single robotics OEM in that vertical who'll trade data access for cheaper training.
- *Moat:* the proprietary trajectory dataset + domain sim fidelity; narrowness is the defense.
- *Tailwinds:* NVIDIA Cosmos shipped as *open* post-trainable world foundation models (Predict/Transfer/Reason, Cosmos 3 in 2026) — you no longer pretrain a base, you fine-tune one for ~free; the robotics synthetic-data market is compounding ~33% and physical-AI data ~41% CAGR, so OEM budgets for exactly this are opening now; humanoid capital (Figure, 1X, Agility all named Cosmos adopters) has created buyers who've already accepted "train in sim" as doctrine [src: developer.nvidia.com, thebusinessresearchcompany.com, nvidianews.nvidia.com].
- *Risk:* the OEM in-sources once it sees the value; mitigate with exclusivity + eval tooling lock-in.

**3. Synthetic corner-case generation.**
- *Wedge:* a controllable generator for the rare-dangerous long tail (AV near-misses, robot failure modes) with precise scene-attribute control — the GAIA-2 value prop sold as a tool, not locked inside one AV company [src: wayve.ai].
- *Why now:* data-exhaustion + safety-test asymmetry are the two hardest, best-documented demand drivers [src: labelstud.io].
- *First customer:* AV simulation teams and insurers/regulators needing scenario coverage evidence.
- *Moat:* a taxonomy of edge cases + controllability others can't match.
- *Tailwinds:* GAIA-2's continuous-latent, attribute-controllable multi-view generation (Mar 2025) proved fine-grained scene control is now feasible, turning "generate a specific near-miss" from research into a spec; the documented exhaustion of real-world long-tail data makes synthesis the *only* source of coverage; Cosmos Transfer provides off-the-shelf sim-to-real domain adaptation so a small team isn't solving the realism gap from scratch [src: wayve.ai, labelstud.io, developer.nvidia.com].
- *Risk:* sim-to-real gap credibility; must pair generation with the eval layer (so concepts 1 and 3 reinforce).

**4. Memory/persistence middleware.**
- *Wedge:* a library that bolts an explicit persistent-state core (splat/scene-graph memory) onto *someone else's* generative dynamics model to kill long-horizon drift — the "persistent state core" that current models demonstrably lack [src: arxiv.org/2606.20545].
- *Why now:* drift is the #1 documented failure; World Labs proved explicit 3D persistence works, but as a closed product, not infrastructure.
- *First customer:* game/interactive-media startups building on open world models who need consistency over minutes.
- *Moat:* the hard systems engineering of fusing explicit memory with learned dynamics in real time.
- *Tailwinds:* real-time 3D Gaussian splatting matured into an exportable, engine-compatible format (World Labs Marble ships splats + collider meshes in 2025–2026), giving you a persistence substrate off the shelf; drift is now *named and benchmarked* as the field's #1 failure (WorldProbe, Cycle-World 2026), so the pain is legible to buyers; a cohort of startups building on open world models (Genie-3-class, Oasis) needs minutes-long consistency they can't get alone [src: worldlabs.ai, arxiv.org/2607.11836].
- *Risk:* frontier models internalize persistence and obviate the middleware.

**5. Economic / financial world model (the thesis connection).**
- *Wedge:* apply the *exact* world-model pattern — state, action-conditioning, closed-loop rollout — to markets and economies instead of pixels. The LLM-agent-based market simulators (FCLAgent, EconSimulacra, AgentSociety) and the explicit **"economic world models"** framing are emerging in 2025–2026 literature [src: arxiv.org/2510.12189, 2608.06020]. Build a simulator you can roll forward under counterfactual policies/shocks to generate alpha or stress-test strategies.
- *Why now:* the conceptual machinery (action-conditioned, causal, intervenable simulators) and the LLM-agent substrate both just matured; nobody has fused "world model" rigor (eval, drift, grounding) with financial ABM.
- *First customer:* a quant desk or your own book; secondarily risk/policy teams needing scenario generation.
- *Moat:* proprietary market data + the discipline of treating it as a *grounded, evaluated* world model (importing concepts 1 and 4) rather than a vibes-based LLM sandbox.
- *Tailwinds:* 2025–2026 produced both the substrate and the vocabulary — large-scale LLM-agent simulation platforms (AgentSociety, OASIS, AgentScope) now run thousands-to-millions of interacting agents, and the explicit "economic world models" / "agentic economies" framing arrived in the literature (2026), legitimizing the category; falling inference cost makes running millions of agent-rollouts economically viable where it wasn't in 2023; the same action-conditioning discipline the visual field just standardized transfers directly [src: arxiv.org/2502.08691, 2608.06020, 2510.12189].
- *Risk:* financial systems may be irreducibly less predictable than physics — the "physical grounding" problem has an even harder cousin in markets (reflexivity, non-stationarity). This is the honest, central risk of the whole finance thesis.

**Connection to the finance thesis, explicitly:** everything above is the same primitive — a simulator you can *intervene on and roll forward*. A driving world model dreams a crash so a policy can learn without dying; an economic world model dreams a rate shock or a liquidity cascade so a strategy can be tested without losing money. The transferable assets from the visual-world-model field are not the pixels but the *disciplines*: action-conditioning as the design center, benchmark-driven eval of drift and grounding, and explicit persistent state. The right move is to steal those disciplines into finance, not to recreate them.

### 2.8 Founder-fit verdict

For a two-person, finance-literate, ML-capable team, the frontier-renderer game is closed — it is a capital contest (World Labs $1B, Decart $400M+, NVIDIA's balance sheet). But the **middle layer is wide open**, and it rewards exactly the skills a quant/engineer pair has: rigorous evaluation, data discipline, and systems thinking about *grounding and consistency* rather than GPU-scale generative art. The highest-conviction path is a wedge in **evaluation/corner-case generation** (real revenue, real buyers, a proven demand driver in data-exhaustion and safety asymmetry) that doubles as the R&D foundation for the **economic world model** — the team's actual thesis. That sequencing is the fit: earn credibility and cash flow building the trust/eval layer for physical-AI world models, while using the identical primitives to build the finance simulator that is the real prize. *Caveat to that verdict:* the finance application carries a grounding risk strictly worse than physics (reflexivity, non-stationarity), so the eval-first discipline is not optional — it is what separates this from the long graveyard of "LLM picks stocks" projects.

*Sources:* worldlabs.ai, nvidianews.nvidia.com, developer.nvidia.com, wayve.ai, alphaxiv.org, opencv.org, emergentmind.com, arxiv.org, valueaddvc.com, lapaasvoice.com, techcrunch.com, bdtechtalks.com, gminsights.com, 360iresearch.com, meticulousresearch.com, marketresearch.com, thebusinessresearchcompany.com, labelstud.io.
