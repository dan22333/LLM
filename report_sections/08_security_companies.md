### Company dossiers — AI Security

#### Lakera — GenAI runtime guardrail (acquired by Check Point)

**What they build:** A defensive guardrail layer for generative-AI and agentic apps. Lakera Guard inspects prompts and model outputs in real time through a single API, blocking jailbreaks, prompt injection, PII/data leakage and unsafe content across any LLM [src: securityweek.com]. Its detection models are trained on a proprietary threat database seeded by Gandalf, a viral "trick the LLM" education game played by 500k+ users that generated 50–80M+ attack data points [src: fintech.global; devopsdigest.com].

**Funding / outcome:** Raised ~$30M total, including a $20M Series A (July 2024) led by Atomico with Citi Ventures and Dropbox Ventures [src: techcrunch.com; startupticker.ch]. Acquired by Check Point, announced 2025, for a press-estimated ~$300M (low-confidence; terms officially undisclosed) [src: calcalistech.com; globes.co.il].

**Founders:** David Haber (CEO), Mateo Rojas-Carulla and Matthias Kraft; founded in Zurich with a San Francisco presence [src: securityweek.com].

**Traction:** Became a reference brand in GenAI security within ~2 years; one of the largest exits in the category to date [src: venturelab.swiss].

**Customers / partners:** Gandalf used in security training at Microsoft; thousands of organizations use it [src: fintech.global]. Now anchors Check Point's AI-security center in Zurich [src: securitybrief.co.uk].

**Bull case:** Category-defining brand, a data moat from Gandalf, and a clean strategic exit. **Bear case:** Guardrail APIs risk commoditization as model vendors ship native safety; moat is data, not deep tech.

**Relevance to a 2-person team:** The Gandalf playbook — a viral free game that doubles as a data-collection and lead-gen funnel — is the single most replicable move here for a lean team. Grinberg's AI-security interest maps directly onto this "distribution-as-moat" pattern.

#### Protect AI — ML/AI supply-chain security (acquired by Palo Alto Networks)

**What they build:** Defensive tooling for the AI/ML build pipeline (MLSecOps). Core products scan models and artifacts for malicious code (ModelScan), secure ML pipelines (AI Radar), and red-team LLM apps; they also run huntr, the first AI/ML bug-bounty community [src: siliconangle.com; constellationr.com]. The mechanism is supply-chain-style: treat models, notebooks and datasets as attackable artifacts and gate them in CI/CD.

**Funding / outcome:** Raised ~$108.5M (incl. a $60M Series B in 2024 at a reported ~$400M valuation), backed by Salesforce Ventures and Samsung [src: siliconangle.com]. Acquired by Palo Alto Networks, closed July 22, 2025, for $634.5M total consideration per PANW's 10-K ($607.4M cash + $27.1M replacement awards) — a rare hard, SEC-sourced number [src: sec.gov; siliconangle.com].

**Founders:** Ian Swanson (CEO), Daryan Dehghanpisheh and Badar Ahmed — ex-AWS/Oracle ML leaders [src: siliconangle.com].

**Traction:** huntr grew a large researcher community surfacing AI/ML CVEs; folded into Palo Alto's Prisma AIRS AI-security platform [src: geekwire.com].

**Customers / partners:** Salesforce and Samsung as strategic investors; now distributed through Palo Alto's enterprise channel [src: siliconangle.com].

**Bull case:** Owns the "AI supply chain" framing that incumbents needed; validated by a $600M+ exit. **Bear case:** Much value was community (huntr) and framing, not proprietary IP; defensible only inside a platform.

**Relevance to a 2-person team:** Shows an open-source tool + bug-bounty community can be bootstrapped into an acquihire. For a 2-person team, open-sourcing a scanner and cultivating researchers is a credible wedge.

#### HiddenLayer — Machine Learning Detection & Response

**What they build:** A defensive "security for AI" platform. Its flagship MLDR (Machine Learning Detection and Response) is a non-invasive, software-based monitor that watches the inputs and outputs of deployed models to detect adversarial attacks, model theft, evasion and prompt-based abuse — think EDR, but for ML models [src: venturebeat.com; govconwire.com]. Added model scanning and a genAI red-teaming/"AISec" platform.

**Funding / outcome:** $6M seed (stealth exit), a $50M Series A (2023) co-led by M12 (Microsoft) and Moore Strategic Ventures, then a $100M Series B (Sept 2026) led by Delta-v Capital with Ten Eleven, Morgan Stanley, M12 and Booz Allen [src: securityweek.com; venturebeat.com]. Independent; no acquisition.

**Founders:** Chris Sestito (CEO), Tanner Burns (chief scientist), Jim Ballard — the team formed after an ML-model cyberattack at their prior employer, Cylance [src: govconwire.com].

**Traction:** Early mover on model-theft and adversarial-ML detection; frequent AI-security research publisher and NIST RFI contributor [src: nist.gov].

**Customers / partners:** Investor-customers span IBM, Capital One, Booz Allen and Microsoft (M12) — a defense/enterprise lean [src: prnewswire.com].

**Bull case:** Deep adversarial-ML expertise, strong defense/gov channel, well-capitalized and still independent. **Bear case:** "MLDR" demand has been slower than hype; much enterprise spend shifted to LLM-app guardrails Protect AI/Lakera own.

**Relevance to a 2-person team:** The origin story (got breached, built the fix) is the ideal founder-market-fit narrative. Hard to replicate without deep ML-security research chops, which is where Grinberg's interest would need genuine technical depth.

#### Robust Intelligence — AI firewall (acquired by Cisco)

**What they build:** An "AI firewall" that sits in front of models and inspects every input and output for prompt injection, jailbreaks, data poisoning, PII leakage and unintended outputs, plus continuous validation/stress-testing of models across their lifecycle (the AI Validation + Protection split) [src: calcalistech.com]. Defensive, runtime-plus-testing posture.

**Funding / outcome:** Founded 2019; raised ~$44M venture. Acquired by Cisco — announced Aug 27, 2024, closed Sept 24, 2024 — for a press-reported ~$400M (low-confidence; Cisco did not disclose, some reports say $300M+) [src: calcalistech.com; seedtable.com]. Folded into Cisco's Security Cloud under its $1B AI commitment [src: observenow.com].

**Founders:** Yaron Singer (CEO, Harvard CS professor) with Kojin Oshiba, Alexander Rilee and Eric Balkanski [src: en.wikipedia.org].

**Traction:** One of the earliest "AI firewall" brands; acquisition was reported at ~30x ARR, a signal of strategic scarcity more than scale [src: x.com/deedydas].

**Customers / partners:** Enterprise and finance deployments; now distributed via Cisco Security Cloud and AI Defense [src: observenow.com].

**Bull case:** First-mover on the firewall framing, academic credibility, timely exit near the top of the hype. **Bear case:** 30x ARR implies modest revenue; the independent product was effectively absorbed and rebranded.

**Relevance to a 2-person team:** Proof that a professor-plus-students lab can productize a sharp idea and exit fast. The lesson for a lean, Grinberg-style team: a crisp security primitive ("firewall for AI") sells even on thin revenue if the timing and pedigree are right.

#### Gray Swan AI — Frontier-lab red-teaming + guardrails

**What they build:** Both offense and defense. Gray Swan runs Arena, a crowdsourced jailbreaking platform where 15,000+ ethical hackers generate 1M+ real-world attack trajectories that continuously retrain its defenses; it also ships circuit-breaker-style model hardening and runtime guardrails [src: pulse2.com; forbes.com]. The loop — attack at scale, distill into defenses — is the core mechanism.

**Funding / outcome:** $40M Series A co-led by Wing VC and Madrona, with Obvious Ventures, Snowflake Ventures, Hudson River Trading and Samsung Next [src: natlawreview.com]. Independent.

**Founders:** Matt Fredrikson (CEO) and Zico Kolter (chief scientist), both from Carnegie Mellon; Kolter also chairs OpenAI's safety committee and co-authored foundational adversarial-robustness and LLM-attack research [src: en.wikipedia.org/wiki/Zico_Kolter].

**Traction:** Named as a security evaluator in 11 frontier-model system cards, including Anthropic, OpenAI and Meta — unusually strong third-party validation [src: natlawreview.com].

**Customers / partners:** Works with OpenAI and every major frontier lab on red-teaming [src: forbes.com].

**Bull case:** Unmatched academic pedigree plus a direct pipeline to frontier labs; the Arena creates a renewable adversarial-data moat. **Bear case:** Revenue concentrated in a handful of labs; crowdsourced red-teaming is imitable, and frontier labs may internalize it.

**Relevance to a 2-person team:** The Arena is a crowdsourced-labor flywheel a tiny team can orchestrate without hiring hackers. Directly aligned with Grinberg's AI-security interest — a competition/leaderboard that produces both data and credibility.

#### Haize Labs — Automated adversarial testing ("haizing")

**What they build:** Offensive, automated red-teaming. Haize runs large-scale adversarial search ("haizing") to auto-discover the inputs that make an LLM or AI app misbehave — jailbreaks, unsafe content, hallucinations, policy violations — then packages them into evaluation and robustness suites [src: aisecurityandsafety.org; yespress.io]. Mechanism: fuzzing/optimization against model behavior rather than human pen-testers.

**Funding / outcome:** ~$12.5M seed (Aug 2024) led by General Catalyst at a ~$100M valuation; ~$25.5M total raised [src: caplight.com]. Acquired by Beacon Software (Toronto AI holding co.) on Sept 17, 2026 for undisclosed terms; the team became Beacon's Applied AI Research Group and Tang became VP of AI Research [src: beri.net].

**Founders:** Leonard Tang (CEO), Richard Liu and Steve Li — Harvard undergrads; Tang and Li were Berkeley AI Research student researchers [src: aisecurityandsafety.org].

**Traction:** Angel roster included founders of Okta, Hugging Face, Replit (Masad), Cognition (Wu) and Pika (Guo) — strong signal despite small size [src: caplight.com].

**Customers / partners:** Enterprise AI-reliability engagements; specifics largely undisclosed [src: aisecuritypodcast.com].

**Bull case:** Technically sharp, well-connected, rode the eval/red-team wave to an exit in ~3 years. **Bear case:** Small outcome, undisclosed price suggests a modest acquihire; "haizing" is a feature others can replicate.

**Relevance to a 2-person team:** The clearest template here for a Grinberg-style duo — 3 students, a catchy verb ("haizing"), a star angel list, and a sub-3-year exit. Automated red-teaming is buildable by a tiny technical team.

#### Prompt Security — GenAI firewall / enterprise AI governance (acquired by SentinelOne)

**What they build:** A defensive GenAI firewall governing employee and application AI use — inspecting prompts/responses across homegrown apps, third-party tools and browser-based AI to block prompt injection, data leakage, shadow-AI and unsafe outputs [src: appsecsanta.com; en.wikipedia.org]. Visibility-plus-enforcement over the enterprise AI surface.

**Funding / outcome:** ~$23M total, including an $18M Series A (Nov 2024) [src: cbinsights.com]. Acquired by SentinelOne, completed Sept 5, 2025, for $159.3M total consideration per SEC filing ($133.6M cash + $17.2M stock + options + holdback) — a hard, filed number [src: sec.gov; dealroom.co].

**Founders:** Itamar Golan (CEO) and Lior Drihem (CTO) [src: en.wikipedia.org].

**Traction:** Rapid ~2-year path from founding to a $159M exit; Golan is a prominent voice on LLM/OWASP risks [src: tipranks.com].

**Customers / partners:** Now embedded in SentinelOne's Purple AI / Singularity platform as its AI-security layer [src: tipranks.com].

**Bull case:** Clean, SEC-confirmed exit at a healthy multiple on modest funding; strong product-market timing for shadow-AI governance. **Bear case:** GenAI firewalls crowd together (Lakera, Protect AI, Harmonic); differentiation is thin outside distribution.

**Relevance to a 2-person team:** An efficient capital-to-exit ratio ($23M in, $159M out) is the benchmark a lean team should study. Shadow-AI governance is a concrete, sellable wedge well-aligned with Grinberg's AI-security interest.

#### Harmonic Security — Workforce AI data governance

**What they build:** Defensive data-loss prevention purpose-built for the AI era. Harmonic classifies every AI "task" across browser-based AI, desktop tools and agentic workflows, then applies real-time controls to stop sensitive data flowing into ChatGPT/Copilot-style tools — claiming 96% fewer false positives than legacy DLP by using small language models to understand context rather than regex [src: securityweek.com; dlptest.com].

**Funding / outcome:** $50M Series B led by Crosspoint Capital Partners, bringing total to ~$76M [src: securityweek.com; citybiz.co]. Independent.

**Founders:** Alastair Paterson (CEO) and Bryan Woolgar-O'Neil; founded 2023. Paterson previously co-founded Digital Shadows and scaled it to 500 customers before its $160M sale to ReliaQuest/KKR in 2022 — a proven repeat security founder [src: gbxglobal.org; therecord.media].

**Traction:** RSAC 2025 Innovation Sandbox finalist; oversubscribed Series B signals demand for AI-DLP [src: tech.yahoo.com].

**Customers / partners:** Enterprise AI-adoption buyers; Crosspoint (ex-Symantec/McAfee operators) as strategic lead [src: techfundingnews.com].

**Bull case:** Repeat founder with a security exit, a hot category (shadow-AI/DLP), and a real false-positive technical edge. **Bear case:** DLP-for-AI is contested by Prompt/Palo Alto/Microsoft Purview; "better DLP" can be absorbed by incumbents.

**Relevance to a 2-person team:** Mainly a cautionary contrast — repeat-founder pedigree and $76M are what it takes to win the crowded enterprise-DLP lane. A 2-person team should pick a narrower niche than this head-on fight.

#### XBOW — Fully autonomous offensive security

**What they build:** An autonomous AI pentester. XBOW runs nonstop, using LLM-driven agents to discover and actually exploit web-app vulnerabilities at the speed and depth of a top red team — no human in the loop for the core attack [src: helpnetsecurity.com; northzone.com]. Pure offense, continuous rather than point-in-time.

**Funding / outcome:** $75M round (June 2025) then a $120M Series C (2026) led by DFJ Growth and Northzone at a $1B+ valuation; ~$235M total, with Sequoia, Altimeter, Sofina and NFDG participating [src: pulse2.com; securityweek.com]. Independent unicorn.

**Founders:** Oege de Moor (CEO) — creator of GitHub Copilot and GitHub Advanced Security (and founder of Semmle/CodeQL) — with core engineers from the Copilot team; Nico Waisman (ex-Lyft/Immunity) leads security [src: siliconvalleyinvestclub.com].

**Traction:** The headline benchmark of the category — XBOW became the #1 ranked hacker on HackerOne's US leaderboard, then #1 globally, the first non-human ever to do so [src: helpnetsecurity.com].

**Customers / partners:** Enterprise app-security buyers; validated via public HackerOne bug bounties [src: dfjgrowth.com].

**Bull case:** Best-in-class proof point, A-tier founder, enormous TAM if autonomous pentesting replaces manual engagements. **Bear case:** $1B valuation on early revenue; autonomous offense raises dual-use and liability questions, and labs/clouds could fast-follow.

**Relevance to a 2-person team:** XBOW shows HackerOne leaderboards are a public, objective proving ground — a tiny team can benchmark an autonomous agent against humans and generate undeniable credibility. The most direct expression of Grinberg's offensive-AI-security interest.

#### Horizon3.ai — Autonomous pentesting SaaS (NodeZero)

**What they build:** Self-service autonomous penetration testing. NodeZero thinks and acts like an attacker across production networks — chaining real exploits to prove impact — and collects training data from every attack it runs to improve, with web-app pentesting, continuous posture and "precision defense" added [src: securityweek.com; businesswire.com]. Offense productized as safe, repeatable SaaS.

**Funding / outcome:** $100M Series D (June 2025) led by NEA at a ~$650M valuation (~$178.5M total), then a reported $250M round at a $2B+ valuation in 2026 [src: securityweek.com; siliconangle.com]. Independent.

**Founders:** Snehal Antani (co-founder/CEO) — ex-CTO of Splunk and former CTO of US Joint Special Operations Command — a strong enterprise-plus-defense pedigree [src: fintech.global].

**Traction:** Large self-service deployment base and heavy federal-agency adoption; one of the most commercially scaled autonomous-pentest vendors [src: securityweek.com].

**Customers / partners:** US federal agencies and a global partner/MSSP ecosystem [src: horizon3.ai].

**Bull case:** Proven revenue scale, defense/federal moat, and the clearest path to replacing periodic manual pentests. **Bear case:** $2B+ valuation sets a high bar; XBOW and others crowd autonomous offense; federal sales cycles are slow.

**Relevance to a 2-person team:** Demonstrates the autonomous-pentest category can reach real scale, not just demos — but the moat here is a defense/federal go-to-market a 2-person team can't easily access. Better as a category-validation signal for a Grinberg-style offensive-AI bet.

#### Terra Security — Agentic AI continuous pentesting

**What they build:** A "swarm" of specialized AI agents that continuously run thousands of advanced penetration tests, pairing AI scale with human-in-the-loop precision — positioned as continuous, context-aware pentesting rather than annual engagements [src: techtime.news; calcalistech.com]. Offense, with humans supervising to cut false positives and give "leverage."

**Funding / outcome:** $8M seed (led by SYN Ventures and FXP Ventures) then a $30M Series A (Sept 2025) led by Felicis with Dell Technology Capital and SVCI; ~$38M total [src: finsmes.com; calcalistech.com].

**Founders:** Shahar Peled (CEO) and Gal Malachi (CTO); founded 2024 in Tel Aviv, ~25 staff across Israel and the US [src: calcalistech.com].

**Traction:** Already serving Fortune 100 clients within ~1 year; seed backers include former Google CISO Gerhard Eschelbeck and the Talon Security founders [src: techtime.news].

**Customers / partners:** Named Fortune 100 deployments (unnamed publicly); Dell Technology Capital as a strategic partner [src: calcalistech.com].

**Bull case:** Fast enterprise traction, credible Israeli cyber pedigree, and a human-supervised model that de-risks autonomous offense. **Bear case:** Crowded against XBOW and Horizon3 with less capital; "agent swarm" is a marketing frame more than a durable moat.

**Relevance to a 2-person team:** The most realistic recent template for a small offensive-AI-security team — founded 2024, tiny headcount, Fortune 100 logos, $38M in under two years. Closely matches a lean, Grinberg-style agentic-pentest build.

#### Pillar Security — End-to-end AI application / agent security (acquired by Vanta)

**What they build:** Defensive, lifecycle AI-app protection: discover and map AI/agent usage, red-team models pre-deployment, and enforce runtime guardrails that police AI agents' actions (prompt injection, data leakage, unsafe tool use) [src: securityweek.com; runtimewire.com]. Mechanism spans design-time testing through runtime agent monitoring.

**Funding / outcome:** $9M seed led by Shield Capital with Golden Ventures and Ground Up Ventures [src: securityweek.com]. Acquired by Vanta — definitive agreement Nov 9, 2026 — for a reported ~$150M in cash and shares (low-confidence; reported, not filed) [src: runtimewire.com].

**Founders:** Dor Sarig (CEO) and Ziv Karliner (CTO); founded Oct 2023, Tel Aviv/Miami. Sarig did offensive-security work for Fortune 500s and Israel's MoD (ex-Perimeter81, Cymulate); Karliner came from IBM Trusteer and Aqua Security after Israeli intelligence [src: calcalistech.com; nhigovernance.com].

**Traction:** Reached a ~$150M reported exit on just $9M seed — an exceptional capital-efficiency outcome if the price holds [src: runtimewire.com].

**Customers / partners:** Enterprise AI builders; now to be embedded in Vanta's trust/compliance platform for runtime agent governance [src: runtimewire.com].

**Bull case:** ~16x-on-seed reported exit, strong offensive-security founders, timely "secure the agents" thesis. **Bear case:** Price is press-estimated and early; runtime agent security is unproven at scale and quickly crowding.

**Relevance to a 2-person team:** The standout capital efficiency story — two offensive-security founders, $9M in, a reported $150M exit in ~3 years. The single closest analog to what a 2-person team with Grinberg's AI-security interest could plausibly aim for.
