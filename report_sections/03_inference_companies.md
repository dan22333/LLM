### Company dossiers — Inference & Serving

> Confidence note: 2026 mega-round valuations and token-volume figures below are drawn largely from secondary trackers (Sacra, SiliconANGLE, revenuememo, CryptoBriefing) rather than first-party disclosures. Every such figure is flagged *(2026 round — low confidence)*. Where primary sources conflict, both numbers are shown.

---

#### Together AI — full-stack "acceleration cloud" for open models, FlashAttention lineage

**What they build.** Together runs an AI cloud for training, fine-tuning, and serving open-weight models (San Francisco, founded 2022) [src: together.ai]. Its moat is the **Together Inference Engine**, built under Chief Scientist Tri Dao on **FlashAttention-3/4 kernels** plus custom speculative decoding and quantization — a tight integration of kernels, scheduling, and serving that extracts more tokens per GPU-hour than generic stacks [src: chatforest.com][src: ai.engineer]. Tri Dao authored the original **FlashAttention** (IO-aware attention) and its successors, the single most-cited systems optimization in modern LLM serving [src: alphaxiv.org][src: en.wikipedia.org]. Together has committed to roughly 500 MW of compute and a planned ~36,000 NVIDIA GB200 GPUs [src: multiples.vc].

**Funding.** ~$1.33B total across five rounds [src: revenuememo.com]: Seed May 2023, $20M, led by Lux Capital [src: revenuememo.com]; Series A Nov 2023, $102.5M, led by Kleiner Perkins, >$500M valuation [src: revenuememo.com]; Series A2 Mar 2024, $106M, led by Salesforce Ventures, $1.25B [src: revenuememo.com]; Series B Feb 2025, $305M, led by General Catalyst (co-led Prosperity7), $3.3B, with NVIDIA participating [src: together.ai][src: datacenterdynamics.com]; Series C Jul 2026, $800M, led by Aramco Ventures, **$8.3B post-money** *(2026 round — low confidence)* [src: revenuememo.com].

**Founders.** CEO **Vipul Ved Prakash** (previously co-founded Cloudmark and Topsy, the latter acquired by Apple); CTO **Ce Zhang**; academic co-founders **Chris Ré** and **Percy Liang** (Stanford); **Tri Dao** joined 2023 as Chief Scientist [src: en.wikipedia.org][src: alphaxiv.org][src: ai.engineer].

**Traction.** ARR ~$30M (Feb 2024) → ~$100M (Feb 2025) → external estimates ~$618M end-2025 → ~$1B annualized in 2026 [src: together.ai][src: multiples.vc]. 450,000+ developers; monthly token volume scaling toward ~400T [src: multiples.vc].

**Customers / partners.** Salesforce, Zoom, SK Telecom, The Washington Post, DuckDuckGo, Mozilla, Cognition, Decagon, ElevenLabs, Cursor, Suno; NVIDIA is both investor and hardware partner [src: multiples.vc][src: chatforest.com][src: datacenterdynamics.com].

**Bull case.** Deepest research bench in the category (Dao/Ré/Liang), a defensible kernel lineage, and breadth across train + fine-tune + serve. **Bear case.** Hyperscalers and Fireworks compete directly on the same open-model serving; ~$8.3B on ~$1B revenue prices in flawless execution, and NVIDIA capacity commitments are capital-heavy.

**Relevance to a 2-person team.** A credible primary serving backend: pay-per-token access to the fastest open-model kernels with no infra to run, plus fine-tuning if you need a custom model.

---

#### Fireworks AI — developer-first fast inference, FireAttention + adaptive serving

**What they build.** Production-grade, cost-efficient inference for open models (founded 2022) [src: fireworks.ai]. The proprietary stack centers on **FireAttention** (a custom attention kernel), speculative decoding, and **FireOptimizer** — an adaptive engine that auto-trains per-customer draft models to propose tokens the main model verifies, tuning latency to each workload [src: sacra.com][src: fireworks.ai]. Positioned as a "compound AI systems" platform rather than a raw model host [src: fireworks.ai].

**Funding.** ~$1.83B total [src: revenuememo.com]: Series A 2022, $25M, led by Benchmark [src: revenuememo.com]; Series B Jul 2024, $52M, led by Sequoia, $552M valuation [src: fireworks.ai][src: revenuememo.com]; Series C Oct 2025, $250M ($230M primary + $20M secondary), co-led by Lightspeed, Index, Evantic, **$4B post-money** [src: businesswire.com][src: orrick.com]; Series D Jul 2026, **$1.505B**, co-led by Atreides, Index, TCV, **$17.5B post-money**, NVIDIA participating *(2026 round — low confidence)* [src: finance.yahoo.com][src: revenuememo.com]; plus a $132M employee tender Sep 2026 [src: revenuememo.com].

**Founders.** CEO **Lin Qiao** was Senior Director of Engineering at Meta (2015–2022), where she led PyTorch and Caffe2 across 300+ engineers; six co-founders from Meta PyTorch/ML-infra and Google Vertex AI backgrounds (Benny Chen, Chenyu Zhao, Dmytro Dzhulgakov, Dmytro Ivchenko, James Reed, Pawel Garbacki) [src: twimlai.com][src: sacra.com][src: scroll.media].

**Traction.** ARR ~$37M end-2024 → ~$305M end-2025 → $1B+ annualized by mid-2026 (~5x YoY) [src: sacra.com][src: aimagazine.com]. Customers ~1,000 (2024) → 10,000+ (late 2025) [src: contrary.com][src: sacra.com]. Token volume ~10T/day (Nov 2025) → 40T+/day (Jul 2026) [src: sacra.com][src: aimagazine.com].

**Customers / partners.** Uber, DoorDash, Notion, Samsung, Upwork, Cursor, Perplexity, Sourcegraph, Shopify [src: aimagazine.com][src: contrary.com]. Named results: Cursor ~1K tokens/sec (~13x faster than stock Llama 70B); Notion cut a feature from ~2s to 350ms [src: contrary.com].

**Bull case.** Best raw developer traction in the category (10,000+ customers, 40T tokens/day) and a strong PyTorch-core team. **Bear case.** $17.5B on ~$1B revenue is the richest multiple here; margins depend on staying ahead of commoditized open-model serving.

**Relevance to a 2-person team.** The default "fast, cheap, just works" open-model API — strongest when you want OpenAI-style latency on Llama/DeepSeek/Qwen without managing GPUs.

---

#### Baseten — model-deployment platform, Truss + multi-cloud capacity

**What they build.** A platform that turns any model into a production, autoscaling API, built on a purpose-built "Inference Stack" [src: finance.yahoo.com][src: ai.engineer]. Core open-source primitive is **Truss** (package/serve/deploy models as autoscaling APIs) [src: ai.engineer][src: sacra.com]. Serving infra uses **Firecracker micro-VMs** and **cold-start snapshots** (models up to ~20GB loaded in under 10 seconds), over a **multi-cloud capacity backbone spanning 15+ providers** [src: sacra.com]. Product surface spans dedicated GPU deployments, per-token Model APIs, Baseten Training, and the Chains SDK for multi-model workflows; revenue mix is ~60% dedicated GPU, ~30% Model APIs, ~10% enterprise [src: sacra.com][src: valueaddvc.com].

**Funding.** ~$2.08B total across ~7 rounds since 2021 [src: sacra.com][src: multiples.vc]: Seed 2021, $2.5M, First Round [src: sacra.com]; Series A $13.5M, Sequoia [src: sacra.com]; Series B (amount undisclosed; Greylock/Spark/IVP) [src: sacra.com]; Series C Feb 2025, $75M, ~$825M [src: sacra.com][src: aithority.com]; Series D Sep 2025, $150M, $2.15B, led by BOND [src: finance.yahoo.com]; Series E Jan 2026, $300M, $5B, led by IVP and CapitalG (NVIDIA ~$150M) *(2026 round — low confidence)* [src: sacra.com]; Series F Jun 2026, $1.5B, led by Altimeter, two tranches at $13B and $11B *(2026 round — low confidence)* [src: sacra.com][src: bitsminds.com].

**Founders.** CEO **Tuhin Srivastava**, CTO **Amir Haghighat**, Chief Scientist **Phil Howes**, and co-founder **Pankaj Gupta** — the team met at Gumroad; founded 2019 [src: finance.yahoo.com][src: ai.engineer].

**Traction.** ARR ~$200M annualized (Dec 2025) → ~$600M annualized (Mar 2026), cited as ~1,900% YoY [src: sacra.com][src: clinkbill.com]; inference volume grew ~100x in 2025 [src: sacra.com].

**Customers / partners.** Cursor, Notion, Abridge, Clay, OpenEvidence, Writer, Descript, Gamma, World Labs, Mercor, HeyGen, Captions [src: finance.yahoo.com][src: chatforest.com]. OpenEvidence reportedly runs billions of LLM calls/week on Baseten [src: finance.yahoo.com]. Sep 2026: joined **OpenAI's B2B marketplace**, letting OpenAI enterprise customers spend existing commitments on open models served by Baseten [src: newmarketpitch.com].

**Bull case.** Strong at the hard part — reliable, low-cold-start dedicated deployments for companies running their own models; capacity-arbitrage across 15+ clouds is a real edge. **Bear case.** Lower-level than Fireworks/Together on pure per-token price; valuation (~$13B) outruns disclosed economics.

**Relevance to a 2-person team.** The pick when you have a *custom or fine-tuned* model to put in production and want autoscaling without building MLOps — Truss plus their GPU fleet.

---

#### Modal — serverless Python/GPU compute, Rust runtime with sub-second cold starts

**What they build.** A serverless platform that turns Python functions into autoscaling cloud/GPU workloads: import the library, decorate a function, call `.remote()` [src: sacra.com][src: softwareengineeringdaily.com]. Modal built **every layer from scratch in Rust** — custom container runtime, image builder, distributed file system, scheduler, and GPU memory snapshotting — yielding **sub-second cold starts**, its core differentiator [src: siliconvalleyinvestclub.com][src: sacra.com]. It brokers multi-cloud GPU capacity (AWS, GCP, Oracle) and automatically picks the cheapest. Product surface includes Functions, **Sandboxes** (isolated code execution for AI agents), web endpoints, and GPU notebooks [src: sacra.com].

**Funding.** ~$1.22B total [src: sacra.com][src: siliconangle.com]: Seed early 2022, $7M, Amplify [src: sacra.com]; Series A Oct 2023, $16M, Redpoint [src: sacra.com]; Series B Sep 2025, $87M, $1.1B, led by Lux Capital [src: sacra.com]; Series C May 2026, $355M, $4.65B, led by General Catalyst and Redpoint *(2026 round — low confidence)* [src: siliconangle.com][src: aitechconnect.in]; Series D Oct 2026, $750M, **$15.75B post-money** (reported lead Accel) *(2026 round — low confidence)* [src: cryptobriefing.com][src: sacra.com].

**Founders.** CEO **Erik Bernhardsson** — 7 years at Spotify (built its music recommender and the open-source **Luigi** scheduler), later CTO of Better.com, IOI gold medalist; co-founder **Akshat Bubna**; founded 2021 [src: sacra.com][src: siliconvalleyinvestclub.com].

**Traction.** Annualized revenue (Sacra estimates): ~$90M (mid-2025) → ~$545M (Jul 2026) → ~$1B run rate (Oct 2026) [src: sacra.com]. **Sandboxes** reached ~$300M ARR (~30% of revenue), ~3 billion sandboxes created [src: sacra.com][src: techtimes.com]. One customer reportedly served ~1 trillion tokens in its first three days [src: sacra.com].

**Customers / partners.** DoorDash, Cognition, Ramp, Runway, Physical Intelligence, 1X, Chai Discovery [src: sacra.com].

**Bull case.** The most developer-loved primitive — serverless GPU with near-instant cold starts covers inference, batch, training, and agent sandboxes from one API; Sandboxes rides the agent wave. **Bear case.** More general compute than pure inference, so it competes with both serving specialists and hyperscaler serverless; ~16x ARR multiple is steep.

**Relevance to a 2-person team.** Arguably the single best fit — run arbitrary GPU code (inference, batch jobs, agent sandboxes) from plain Python, scale to zero, pay per second, zero infra.

---

#### Groq — LPU inference chips, SRAM-based deterministic execution

**What they build.** A custom inference accelerator, the **LPU (Language Processing Unit)**, that uses on-chip **SRAM (~230MB) instead of HBM/DRAM** with fully deterministic, statically scheduled "clockwork" execution [src: hackernoon.com][src: neuraplus-ai.github.io]. On-chip bandwidth exceeds ~80 TB/s vs ~8 TB/s for GPU HBM — roughly 10x — which is why it wins on low-latency token generation [src: hackernoon.com]. Records include Llama 3 70B at 1,660+ tokens/sec; it powers Meta's official Llama API at up to ~625 t/s [src: neuraplus-ai.github.io][src: groq.com].

**Funding.** ~$2.8–3B total [src: multiples.vc]: Series D Aug 2024, $640M, led by BlackRock, $2.8B [src: techcrunch.com][src: datacenterdynamics.com]; round Sep 2025, $750M, led by Disruptive, **$6.9B post-money**, with BlackRock, Samsung, Cisco, Deutsche Telekom Capital, Altimeter *(2025 round)* [src: techcrunch.com][src: datacenterdynamics.com]; plus a $1.5B Saudi infrastructure commitment [src: groq.com].

**Founder.** CEO **Jonathan Ross** initiated and helped build Google's **TPU** (reportedly as a "20% project") before founding Groq [src: techcrunch.com][src: en.wikipedia.org].

**Traction.** Revenue ~$500M in 2025 per one source; another cites $172.5M ARR — figures conflict (likely total/committed vs ARR) [src: en.wikipedia.org][src: getlatka.com]. ~2 million developers on GroqCloud [src: cnbc.com].

**Customers / partners.** Meta (official Llama API acceleration, 2025); Aramco Digital / Saudi Arabia (building a very large inference data center, $1.5B commitment) [src: rdworldonline.com][src: futurumgroup.com][src: groq.com].

**2025–2026 news.** *(developing / low confidence)* Dec 2025: NVIDIA reported to acquire Groq's assets or license its inference IP for ~$20B; sources differ on acquisition vs non-exclusive license, with Ross reportedly moving to NVIDIA while GroqCloud continues [src: cnbc.com][src: intuitionlabs.ai].

**Bull case.** Genuine architectural lead on latency and a TPU-pedigree founder; the (reported) NVIDIA deal validates the IP. **Bear case.** SRAM-only means tiny per-chip memory, so large models need many chips — capital-intensive; a NVIDIA tie-up could end its independence.

**Relevance to a 2-person team.** Reachable today via GroqCloud's pay-per-token API when ultra-low latency is the product; you consume it as an endpoint, not hardware.

---

#### Cerebras Systems — wafer-scale engine, fastest single-user token speeds

**What they build.** The **Wafer-Scale Engine (WSE-3)** — a dinner-plate-sized chip with 4 trillion transistors, 900,000 cores, **44GB on-chip SRAM, and 21 PB/s on-chip bandwidth**, sold in CS-3 systems and via an inference cloud [src: introl.com][src: datacenterdynamics.com]. Keeping the whole model on-wafer eliminates inter-GPU networking, the basis of its speed claims: Llama 4 Maverick at ~2,500 tokens/sec/user (claimed 2x+ a DGX B200) [src: introl.com][src: slowbeam.dev].

**Funding / IPO.** Series G Sep 2025, ~$1.1B, co-led by Fidelity and Atreides, $8.1B [src: sacra.com]; *(low confidence)* Series H Feb 2026, ~$1B, led by Tiger Global, $23B [src: cerebras.ai][src: sacra.com]; *(low confidence)* IPO May 2026 on Nasdaq "CBRS", priced $185, raised ~$5.5B, closed day one near a ~$66B valuation [src: techcrunch.com][src: trendingtopics.eu].

**Founder.** CEO **Andrew Feldman** previously co-founded SeaMicro (energy-efficient microservers), acquired by AMD for ~$357M; Stanford BA/MBA [src: en.wikipedia.org].

**Traction.** 2025 revenue ~$510M (up ~76% YoY), swinging to net income ~$237.8M from a prior loss [src: techcrunch.com][src: tech-insider.org].

**Customers / partners.** Concentration risk: ~86% of 2025 revenue from two UAE entities — **MBZUAI ~62%** and **G42 ~24%** — flagged in the IPO filing [src: startupfortune.com][src: fwdstart.me]. *(low confidence)* reported OpenAI deal "north of $20B" and an AWS deployment agreement [src: trendingtopics.eu][src: tech-insider.org].

**Bull case.** The clear leader on single-user token speed, now public with real revenue and (newly) profitable. **Bear case.** Extreme customer concentration (86% from two UAE-linked buyers) and a huge, hard-to-cool chip; 2026 valuation is frothy.

**Relevance to a 2-person team.** Mostly relevant as a fast hosted-inference endpoint (Cerebras Cloud); the hardware itself is enterprise/sovereign scale, not for a small team to own.

---

#### SambaNova Systems — reconfigurable dataflow, many-model serving

**What they build.** The **RDU (Reconfigurable Dataflow Unit)** maps a model's compute graph directly onto a dataflow fabric instead of issuing instructions one at a time, cutting memory-wall stalls [src: alphaxiv.org]. The **SN40L** uses a three-tier memory system — on-chip SRAM + on-package HBM (~64 GiB) + off-package DDR (up to 1.5 TiB) — so very large models and many experts stay resident [src: alphaxiv.org]. **Composition of Experts (Samba-1)** runs up to ~150 experts / ~1T total params, swapping experts across memory tiers without host interference — a differentiator for cheaply serving many models at once [src: alphaxiv.org][src: sambanova.ai].

**Funding.** ~$982M–$1.1B+ total pre-2026 [src: getlatka.com]; Series D Apr 2021, led by SoftBank Vision Fund 2 (with Temasek, GIC, BlackRock, Intel Capital, GV) at a ~$5B valuation [src: sacra.com]. *(low confidence — sources conflict)* 2026 reports range from a Series E ~$350M at $2.2B (Vista/Cambium) to a ~$1B first close at $11B (General Atlantic) — treat valuations as unconfirmed [src: sacra.com][src: sourcery.vc].

**Founders.** CEO **Rodrigo Liang** (former SVP engineering at Oracle); **Kunle Olukotun** (Stanford, multicore-processor pioneer); **Chris Ré** (Stanford, MacArthur Fellow) [src: startupfox.in][src: ai.miraheze.org].

**Traction.** Revenue ~$100M as of mid-2025 — materially smaller than Groq/Cerebras [src: getlatka.com].

**Customers / partners.** Sovereign-AI focus: SCX (Australia), Infercom (Europe), Argyll (UK); Fugaku-LLM (Japan) integrated into Samba-1 [src: sambanova.ai][src: businesswire.com].

**2025–2026 news.** Reportedly abandoned an Intel acquisition attempt in favor of raising more capital [src: eetimes.com].

**Bull case.** The three-tier-memory + CoE design is genuinely suited to serving many large models cheaply; strong academic founders. **Bear case.** Smallest revenue of the three chip players, contradictory 2026 funding data, and a softer competitive position vs Groq/Cerebras.

**Relevance to a 2-person team.** Least directly usable — enterprise/sovereign appliance sales dominate; accessible mainly as a hosted API (SambaNova Cloud) if you want its fast open-model endpoints.

---

#### DeepInfra — lowest-cost pay-per-token API, vertically integrated GPUs

**What they build.** A low-cost inference cloud serving 190+ open-weight models (Llama, DeepSeek, Mistral, Qwen, Google, plus Claude via API) on pure pay-per-token pricing [src: deepinfra.com][src: pitchbook.com]. Vertically integrated — "from GPU hardware to API layer" — owning GPU infrastructure across **8 U.S. data centers** rather than renting cloud [src: deepinfra.com][src: datacenterdynamics.com]. Postpaid usage-based pricing with no contracts (e.g. Llama 3.1 8B ~$0.02/1M input tokens); dedicated GPU rental (H100 ~$2.20/hr) and a "DeepCluster" product for 256–5,000-GPU Blackwell clusters [src: morphllm.com][src: sacra.com]. Cited as 25–33% cheaper per token than Fireworks [src: morphllm.com]. NVIDIA relationship includes early Blackwell plus support for Nemotron models and NVIDIA Dynamo [src: hpcwire.com][src: sacra.com].

**Funding.** ~$125M+ disclosed [src: sacra.com]: Seed (undisclosed) [src: dealroom.co]; **Series A ~$18M** (company figure; some aggregators show ~$20.6M / ~$73M post), ~Nov 2024, led by Felicis with Georges Harik [src: deepinfra.com][src: pitchbook.com]; **Series B $107M**, closed May 2026, co-led by 500 Global and Georges Harik, with NVIDIA, Samsung Next, Supermicro, Felicis, valuation undisclosed [src: hpcwire.com][src: siliconangle.com].

**Founders.** CEO **Nikola Borisov** (ex-Engineering Director at imo.im, ex-Microsoft backend SWE); co-founders **Georgios Papoutsis** and **Yessenzhar Kanapin**; founded Sep 2022 by the team behind **imo messenger** (1B+ downloads, 200M MAU). Advisors include imo/early-Google figures Georges and Ralph Harik [src: tracxn.com][src: deepinfra.com]. *(Correction: no Cloudflare pedigree could be verified; the real lineage is imo/Microsoft, with Google on the advisory side.)*

**Traction.** Processes ~5 trillion tokens/week; ~25x token growth since Series A; revenue reportedly tripled since early 2026 (absolute ARR undisclosed) [src: dealroom.co][src: hpcwire.com][src: datacenterdynamics.com].

**Customers / partners.** humans& (1,000-GPU B300 DeepCluster, Sep 2026); listed users include Vercel, Adobe, Ubisoft; hardware partners NVIDIA, Supermicro, Dell, HPE, Lenovo [src: hpcwire.com][src: ai-market-watch.com].

**Bull case.** Genuine price leadership from owning the metal; lean, capital-efficient team with real token volume. **Bear case.** Price-leadership is the thinnest moat — a race to the bottom against better-funded Fireworks/Together; owning GPUs is capital-heavy and undisclosed economics make margins unclear.

**Relevance to a 2-person team.** The cost-minimizer's API — when per-token price dominates and you can tolerate a smaller company, DeepInfra is typically the cheapest drop-in endpoint for open models.

---

### Consolidation notes

#### Replicate → Cloudflare — model-hosting via Cog, acqui-folded into Workers AI

Replicate (founded 2019 by **Ben Firshman** and **Andreas Jansson**) built an AI model-hosting platform around **Cog**, an open-source tool that packages a model and its dependencies into a Docker container and auto-generates a validated inference API from Python I/O definitions [src: siliconangle.com][src: cloudflare.com]. It raised ~$58M total, topped by a **$40M Series B led by a16z (Dec 2023) at a ~$350M valuation**, with NVentures, Sequoia, and angels including Dylan Field and Guillermo Rauch [src: sacra.com][src: forbes.com]. **Cloudflare announced the acquisition Nov 17, 2025**, closing Dec 1, 2025 for **~$57.4M cash** — folding Replicate into **Workers AI** and integrating Cog for custom-model deployment [src: siliconangle.com][src: cloudflare.com]. The signal: an independent model-host that couldn't reach escape velocity got absorbed into an edge platform's AI stack at roughly its last private valuation — a modest outcome that marks how hard neutral model-hosting is as a standalone business.

#### Neural Magic / vLLM → Red Hat (IBM) — sparsity + stewardship of the open inference standard

Neural Magic (founded 2018 by MIT's **Nir Shavit** and **Alexander Matveev**) built software-defined inference acceleration via **sparsity** — pruning/quantizing models to run fast on commodity CPUs and GPUs — shipping DeepSparse, nm-vllm, and LLM Compressor, and becoming a leading steward of **vLLM**, the de facto open-source LLM serving engine [src: redhat.com][src: aiwire.net]. It raised ~$50–55M, topped by a **$30M Series A led by NEA (Oct 2021)**, under CEO **Brian Stevens** (ex-Red Hat CTO, ex-Google Cloud) [src: finsmes.com][src: prweb.com]. **Red Hat announced the acquisition Nov 12, 2024; it closed Jan 13, 2025, terms undisclosed** [src: businesswire.com][src: redhat.com]. The strategic point: IBM/Red Hat is building its enterprise inference strategy around **vLLM** as the open standard — the same engine most of the companies above build on or compete with — making the open-source serving layer itself a contested, consolidating asset.
