## YC's Last Year, Bucketed by Theme

Over the last ~12 months Y Combinator ran four batches under its new quad-annual cadence: **Winter 2025 (W25)**, the first-ever **Spring 2025 (X25)**, **Summer 2025 (S25)**, and **Fall 2025 (F25)**. Headcounts vary by source because YC keeps adding and quietly removing companies from the public directory, but the batches land in a tight band: W25 ≈ 160 companies, X25 = 144, S25 ≈ 160–169, F25 ≈ 146–178 (most trackers converge near ~148) [src: cbinsights.com; extruct.ai; roundfunded.com].

The single most important trend is the near-total saturation of the batch by AI. The AI-agent share climbed almost monotonically across the year: W25 was roughly 36–50% AI-agent companies (PitchBook headlined "nearly 50%"), X25 reached ~46% agents with 66% AI-related overall, S25 hit ~50% agents and 60%+ AI in the one-liner, and F25 topped out with **92% of companies building AI into the core product** [src: pitchbook.com; cbinsights.com; extruct.ai]. By Fall, YC's own partners had begun saying the quiet part out loud: AI is no longer a differentiator, it is the substrate. The thesis that emerges from a year of batches is explicit and repeated in every CB Insights teardown — **the winners will own the deployment layer (infrastructure, workflow, data, hardware), not the model.** Each batch surfaced a dedicated cluster of "agent infrastructure" companies (14 in S25, 13 in F25) precisely because early enterprise agent deployments exposed gaps in memory, evaluation, observability, and payments [src: cbinsights.com]. Below, the year bucketed into ten themes, with verified batch members and a read on each.

### Coding / Dev Agents

- **Browser Use** (W25) — open web-automation infrastructure letting agents navigate browsers; raised a $17M seed led by Felicis, with users at Airbnb, Amazon, and Anthropic [src: techcrunch.com].
- **Mastra** (W25) — TypeScript framework for building AI applications and agents.
- **QualGent** (W25) — autonomous agents for mobile-app QA.
- **Cubic** (X25) — reduces code-review bottlenecks with AI.
- **Jazzberry** (X25) — automated bug-finding / debugging.
- **stagewise** (S25) — open-source agentic IDE with frontend-focused coding agents.
- **Omnara** (S25) — command center for managing coding agents across devices.
- **Interfere** (S25) — autonomous debugging.
- **Zag** (F25) — AI review agents for code PRs.
- **Sourcebot** (F25) — self-hosted code-understanding platform.

**Insight.** Coding is the most proven, most crowded, and most revenue-dense bucket in the batch — CB Insights flagged software development as the *largest* category in both S25 (20 companies) and F25 (21 companies), and noted coding agents show "the strongest revenue traction among all AI agent types" [src: cbinsights.com]. The telling pattern is *fragmentation*: YC is no longer funding "a better code generator" against Cursor/Copilot/Claude Code, it is funding the surrounding workflow — review (Cubic, Zag), debugging (Jazzberry, Interfere), QA (QualGent), code comprehension (Sourcebot), and *agent-management* meta-tools (Omnara, which manages other coding agents). Browser Use is the breakout: by selling the browser-navigation primitive rather than an app, it became picks-and-shovels for the entire agent economy and priced accordingly. The whitespace is no longer greenfield generation — that is a knife-fight with the frontier labs — but the unglamorous lifecycle work around agents that already write most of the code.

### Vertical AI Agents

- **Tejas AI** (W25) — AI risk decisioning for banks.
- **Combinely** (X25) — AI coworker for accountants (ex-Google/Deloitte founders).
- **Magnetic** / **Veritus** (S25) — tax prep for accounting firms / CPA automation.
- **Fleetline** (S25) — AI dispatch engine for trucking fleets.
- **Skope** (S25) — legal document analysis for law firms.
- **Certus AI** (S25) — restaurant voice system for phone orders.
- **Casey** (F25) — AI for insurance brokers, automating admin tasks.
- **Lexi** (F25) — AI associates for legal workflow automation.
- **Clicks Health** (F25) — agents for healthcare revenue-cycle automation.
- **AutoAce** (F25) — AI call handling for car dealerships.

**Insight.** This is YC's single biggest bet of the year and the purest expression of the "workflow is the moat" thesis. The playbook is identical across companies: pick one regulated, paperwork-heavy, labor-constrained vertical (trucking dispatch, CPA tax prep, insurance brokerage, legal associate work, dealership phones), and replace a seat rather than sell a tool. The attraction is that incumbents are weak, data is proprietary, and buyers measure ROI in headcount. The risk — and the reason this bucket is quietly *over-seeded* — is that most of these are thin wrappers whose defensibility rests entirely on distribution and domain trust, not technology; a dozen "AI for accountants" and "AI for law firms" now exist across batches. The companies breaking out are the ones in verticals with a hard data asset or a compliance gate (banking risk at Tejas, healthcare RCM at Clicks), where the regulatory moat does the defending the model cannot.

### AI Infra & Agent Ops

- **Luminal** (S25) — high-speed model-inference compilation.
- **Kernel** (S25) — browser infrastructure for web automation.
- **TraceRoot.AI** (S25) — self-healing observability for agents.
- **Metis** / **Mohi** / **AgentHub** (S25) — agent evaluation, testing, and monitoring.
- **Hyperspell** (F25) — context and memory layer for AI agents.
- **Metorial** (F25) — open-source integration platform (MCP-style) for agentic AI.
- **The Context Company** (F25) — failure monitoring for AI agents.
- **Castari** (F25) — sandboxed agents for safe production deployment.
- **Locus Technologies** (F25) — a payment layer for AI agents.

**Insight.** If one bucket captures YC's actual 2025 thesis, it is this one: dedicated agent-infrastructure clusters appeared in *both* S25 (14 companies) and F25 (13 companies), built explicitly to patch "gaps exposed by early enterprise deployments" [src: cbinsights.com]. The sub-categories map neatly to the agent failure modes operators hit in 2025 — agents forget (memory: Hyperspell), can't be trusted in prod (sandboxing: Castari), fail silently (observability: TraceRoot, The Context Company), can't be scored (eval: Metis, Mohi, AgentHub), can't reach tools (integration: Metorial), and can't pay for anything (agent payments: Locus). The CB Insights framing — "deployment constraints, not model performance, are now the primary barrier" — is the whole investment case. This is the highest-conviction, most *technically* defensible bucket, but it is also racing a clock: much of agent-ops is exactly what the frontier labs (and MCP as an open standard) are absorbing into their platforms, so the survivors will be the ones that become a standard or own a hard latency/cost edge (Luminal's compiler).

### Robotics & Physical AI

- **Red Barn Robotics** (W25) — autonomous weeding robots for agriculture.
- **General Trajectory** (W25) — vision-language-action (VLA) models for physical tasks.
- **Pave Robotics** (W25) — road-maintenance automation.
- **Flywheel AI** (S25) — remote excavator operation.
- **Verne Robotics** (S25) — physical robots for warehouse automation.
- **Albacore** (S25) — autonomous underwater drones.
- **Forge Robotics** (F25) — AI-native automation for manufacturing.
- **Piggy Robotics** (F25) — humanoid robots for the home.
- **Cortex AI** (F25) — real-world data for embodied AI.
- **Null Labs** (F25) — next-generation simulation for autonomy testing.

**Insight.** Physical AI went from a sprinkling in W25 to a named F25 focus area, and the telling shift is *what* YC funded. Rather than betting only on robot bodies, the Fall batch funded the **training stack for robots** — simulation (Null Labs), and real-world/embodied datasets (Cortex AI, "Spatial AI") — on the explicit thesis that data generation and sim environments are the bottleneck to getting robots out of controlled settings [src: cbinsights.com]. This is the single bucket most adjacent to a world-simulator thesis: Null Labs (autonomy simulation) and X25's **Godela** (an "AI physics engine" for simulation, robotics, and digital twins) are, in effect, selling the simulator-as-product. The bucket is under-crowded relative to coding and vertical agents (hardware is hard, capital-intensive, and slow), which is exactly why it is attractive whitespace — but the center of gravity is moving from mechanical cleverness toward **owning the physics/data layer that trains the policies**, which is a software-shaped moat inside a hardware-shaped industry.

### Bio & Health AI

- **Bindwell** / **Exin Therapeutics** / **Uncommon Therapeutics** (W25) — biotech / therapeutics discovery.
- **Convexia** (S25) — AI-driven drug sourcing and evaluation.
- **Blank Bio** (S25) — RNA modeling for precision oncology.
- **Perspectives Health** (S25) — behavioral-health documentation.
- **Phases** (S25) — clinical-trial monitoring agents.
- **Exonic** (F25) — AI-native drug-discovery platform.
- **Anto Biosciences** (F25) — a foundation model for microbial communities.
- **Nucleo** (F25) — AI body-composition and tumor analysis.
- **Kaigo Health** (F25) — Medicare outpatient monitoring.
- **Norra** (F25) — AI operations platform for skilled-nursing facilities.

**Insight.** This bucket splits cleanly into two very different bets. One is **deep bio** — foundation models for biology (Anto's microbial model, Blank Bio's RNA, Exonic's drug discovery) — which is high-risk, long-horizon, technically formidable, and genuinely defensible if the science works. The other, larger, cluster is **health-ops AI**: documentation (Perspectives), trial monitoring (Phases), Medicare monitoring (Kaigo), nursing-facility operations (Norra), revenue cycle. The ops cluster is really the Vertical-Agents playbook pointed at healthcare, and it inherits both the strength (regulatory moat, labor shortage, clear ROI) and the weakness (thin tech, crowded). YC is clearly comfortable funding both ends because the moats are *non-model* in each case — wet-lab data and IP on the deep-bio side, HIPAA/payer integration and clinical trust on the ops side. The whitespace is the messy middle: companies like Nucleo that pair a genuine model (tumor/body-composition vision) with a billable clinical workflow.

### Security & AI Security

- **SubImage** / **Haleum** (W25) — cybersecurity platforms.
- **GhostEye** (S25) — social-engineering simulation.
- **Riverbank Security** (S25) — continuous penetration testing.
- **Tecto** (S25) — AI governance and compliance monitoring.
- **Veria Labs** (F25) — automated offensive security for high-stakes industries.
- **Antigen** (F25) — AI pen-testing with nightly red teams.
- **Terrain** (F25) — AI security agent for continuous monitoring.
- **LogosGuard** (F25) — frontier-AI risk-management platform for enterprises.
- **Multifactor** (F25) — trustless authentication and authorization.

**Insight.** Security is bifurcating along the same fault line as the rest of AI: **using AI to do security** versus **securing AI itself.** The first group automates the expensive human parts of the security program — offensive security and pen-testing on a continuous/nightly cadence (Riverbank, Antigen, Veria), red-team social engineering (GhostEye), and always-on monitoring (Terrain). The thesis here is clean: pen-testing is scarce, expensive, and point-in-time, and agents can make it continuous. The second, newer group — Tecto (AI governance), LogosGuard (frontier-AI risk) — is a direct bet that enterprises deploying agents will be forced to buy a compliance/guardrail layer, which rhymes exactly with the agent-ops bucket. This is a moderately crowded space where the moat is trust and sales motion into security buyers, not algorithmic novelty; the breakout signal to watch is whoever lands the first marquee enterprise logos, since security buying is reference-driven.

### Data / Search / OSINT

- **Scalar Field** (X25) — investment-research assistance.
- **Clodo** (S25) — AI-powered professional discovery.
- **Monarcha** (S25) — geospatial-intelligence mapping.
- **OnDeck AI** (S25) — visual analysis without labeled data.
- **Moss** (F25) — real-time semantic search engine for AI applications.
- **Dome** (F25) — real-time prediction-market data APIs.
- **Lapis** (F25) — AI search-analytics platform.
- **Bear AI** (F25) — generative-engine optimization (visibility inside AI search).
- **AnswerThis** (F25) — AI research assistant.
- **AtlasGrid** (F25) — enterprise data-contextualization platform.

**Insight.** This is the most *heterogeneous* bucket and, for a data/OSINT-minded founder, the most interesting one to mine. Three distinct sub-threads run through it. First, **AI-native search infrastructure** — Moss (semantic search as an API), plus the brand-new "GEO" category where Bear AI and (F25's) answer-visibility tools help companies get surfaced *inside* LLM answers, the SEO of the agent era. Second, **real-time structured-data feeds built for agents to consume** — Dome's prediction-market APIs are the cleanest example, selling a live data stream rather than an app. Third, and most adjacent to OSINT proper, **geospatial and unstructured-signal intelligence** — Monarcha (geospatial mapping) and OnDeck AI (visual analysis without labels) are effectively OSINT tooling with an AI front-end. This bucket is notably *under-crowded* versus coding/vertical-agents, and the moat story is the best in the whole batch: whoever assembles a proprietary, real-time, hard-to-replicate data corpus owns something no model can commoditize. The weakness is go-to-market — data products are easy to build and hard to sell — so the breakouts will be the ones with a captive, high-value buyer (finance, defense, trading).

### Fintech / Payments / Insurance

- **BlindPay** (W25) — international payments infrastructure.
- **Infinite** (W25) — stablecoin payment infrastructure.
- **Chestnut Mortgage** (X25) — lending / mortgage automation.
- **Socratix** (S25) — fraud detection and risk assessment.
- **Munify** (S25) — cross-border payment infrastructure.
- **Veritus** (S25) — consumer-lending automation.
- **Casey** (F25) — AI for insurance brokers.
- **Locus Technologies** (F25) — a payment layer for AI agents.
- **Zavo** / **Selfin** (F25) — UK payments platform / AI-run bank.

**Insight.** Fintech in 2025 moved from "assist a financial process" to "run it end-to-end": CB Insights noted that 6 of 16 F25 fintech companies target full workflow automation with minimal human intervention [src: cbinsights.com]. Two structural themes dominate. One is **stablecoin / cross-border rails** (BlindPay, Infinite, Munify, Zavo) — a reflection of 2025's regulatory thaw around stablecoins and the enduring pain of international money movement. The other, and the more future-facing, is **payments *for agents*** — Locus Technologies is explicitly a payment layer so autonomous agents can transact, which sits at the intersection of this bucket and agent-ops and may be the sleeper bet of the year: if agents become economic actors, someone has to be their Stripe. Insurance (Casey, and S25's claims tooling) is the classic vertical-agent play with an unusually strong wedge because the industry is paperwork incarnate. Moats here are regulatory licenses and payment-network integrations — durable, but slow and capital-hungry.

### Voice & Comms

- **Leaping AI** (W25) — foundational conversational-AI technology.
- **Freya Voice AI** (S25) — enterprise call-handling agents.
- **Altur** (S25) — debt-collection voice automation.
- **Qualify.bot** / **Wayline** (S25) — voice for financial-services interactions.
- **Herdora** (S25) — low-latency GPU inference built for voice.
- **LunaBill** (F25) — voice agents for medical-billing calls.
- **Remedy Technologies** (F25) — 24/7 voice agent for pharmacies.
- **Codyco** (F25) — AI for hotel-booking calls.
- **Bolna** (F25) — voice AI for Indian languages.
- **Bravi** (F25) — AI receptionist for 24/7 engagement.

**Insight.** Voice was one of the breakout themes of the year — 16 dedicated voice companies in S25 alone — and the striking move is **voice marching into regulated, compliance-heavy domains**: financial services (Qualify.bot, Wayline), debt collection (Altur), medical billing (LunaBill), and pharmacy (Remedy) [src: cbinsights.com]. The consumer-assistant era of voice is over; the money is in high-volume, scripted, regulated phone work where a human agent is expensive and a dropped call is lost revenue. Two defensibility stories are emerging inside the bucket: proprietary **voice training data** (S25's Liva AI, Panels built explicitly as data moats) and **latency infrastructure** (Herdora's voice-tuned GPU inference), both acknowledgments that the voice-app layer alone is commoditizing fast. This is a crowded bucket where "another voice receptionist" is no longer fundable on its own; the survivors own either a regulated vertical's trust or a piece of the real-time stack underneath everyone else.

### Consumer

- **RealRoots** (S25) — friendship matching for women.
- **Riff** (S25) — personalized children's storybooks.
- **April** (S25) — voice-driven email and calendar management.
- **Vibe Code Go** (S25) — professional coding from a phone.
- **Pixley** (F25) — personalized AI children's shows.
- **Parrot** (F25) — TikTok-style app for learning Spanish.
- **Claybird** / **Koyal** (F25) — AI video-ad creation / audio-to-video filmmaking.
- **Digipals** (F25) — AI-native social operating system.
- **SellRaze** (F25) — cross-listing app for online marketplaces.

**Insight.** Consumer is the *smallest* and most contrarian bucket, and that is the point. In a batch that is 92% AI and overwhelmingly B2B, YC funded a handful of consumer apps precisely because the category is under-indexed — the risk/reward differs from the saturated B2B agent world. Two durable sub-themes: **AI-native content/media creation** (Claybird and Koyal for video, Pixley for kids' shows) riding the collapse in generation cost, and **AI companionship/social** (RealRoots, Digipals, Parrot) betting that the next social graph is AI-mediated. The honest read is that consumer AI is the hardest moat in the entire batch — no regulatory gate, no proprietary workflow, no hardware, just taste and distribution against zero switching costs — which is why YC funds few of them and why the ones it does fund tend to have a sharp wedge (a specific demographic, a specific content format). For a founder, this bucket is a high-variance lottery, not a thesis.

### Reading the tea leaves

A year of batches tells a consistent story, and it is not subtle. **AI is now table stakes, not a strategy.** When 92% of a batch is "AI," the model is no longer anyone's moat — YC's partners say this outright — and every durable bet in the last year rests on one of four non-model moats: **proprietary data, an owned workflow/distribution, regulatory trust, or hardware.** A new founder should internalize that the question is no longer "what can the model do?" but "what do I own that the model can't commoditize next quarter?"

On crowding: **coding agents and vertical AI agents are the over-fished waters.** They have the best revenue traction, which is exactly why every batch is thick with them and why "AI for \[profession\]" is now a near-commodity pitch — fundable only with a genuine data or compliance wedge. Voice is close behind: saturated at the app layer, still open underneath (data, latency). The **under-served** buckets, by contrast, are the capital-intensive and GTM-hard ones that scare most founders off: **robotics / physical AI** and **data / search / OSINT.**

Those two deserve a flag because they sit squarely adjacent to a world-simulator-for-alpha thesis. The robotics bucket's center of gravity moved in 2025 from robot bodies to the **simulation and embodied-data layer that trains the policies** — Null Labs, Cortex AI, and X25's Godela are literally selling the simulator as a product, the same primitive a financial world-simulator would need. And the data/OSINT bucket (Monarcha's geospatial intel, Dome's real-time structured feeds, Moss's semantic search, OnDeck's unlabeled visual analysis) is where the *best* moats in the entire batch live, because a proprietary real-time data corpus is the one asset no frontier model can absorb. Both are under-crowded relative to their defensibility — the classic signature of whitespace. The meta-signal for a new founder: skate to where the moat is structural, not where the demos are flashy. In 2025's batch data, that means owning data, a workflow, or the physics — not the model.
