### Company dossiers — Surgical & Medical Robotics

These nine dossiers span the full stack of surgical robotics: the entrenched incumbent, a deep-pocketed strategic challenger, venture-backed hardware disruptors, and the software/AI layer that increasingly sits on top of (or inside) the robots. For a two-person software team, the signal to watch is where *software and AI* — not capital-intensive mechatronics — create defensible value: intraoperative autonomy (ScoPilot), surgical video intelligence (Theator, Touch Surgery), and the connected-OR data layer (Proximie). Every fact is sourced inline; "undisclosed" marks genuine gaps, and low-confidence items are flagged.

#### Intuitive Surgical — the dominant incumbent

**What they build:** The **da Vinci** multiport soft-tissue surgical platform, now in its **da Vinci 5** generation (FDA-cleared 2024), which adds **Force Feedback** (the surgeon feels tissue tension — cutting peak instrument force ~20% in a 400+ thoracic-case analysis) and ~10,000x the onboard compute of da Vinci Xi for AI features like **Case Insights** real-time analytics [src: intuitive.com] [src: pubmed.ncbi.nlm.nih.gov]. Also the **Ion** robotic bronchoscopy system for lung biopsy [src: intuitive.com]. **FDA status:** da Vinci 5 cleared for **cardiac procedures** Jan 2026; Ion got an FDA-approved software upgrade adding **AI across its navigation workflow** Oct 2025 [src: massdevice.com].

**Funding / financials:** Public (NASDAQ: ISRG). **Q3 2025 revenue $2.51B, +23% YoY**; FY2024 $8.4B, +17% [src: intuitive.com] [src: sec.gov]. Market cap ~$157B (Nov 2026) [src: stockanalysis.com].

**Founders:** Incorporated 1995 by **Dr. Frederic Moll, John Freund, Robert Younge** — Moll is the serial robotics founder behind Auris and Hansen (general knowledge, confirmed) [src: en.wikipedia.org].

**Traction:** **10,763 installed systems** as of Sept 30, 2025; Q3 2025 placed 427 systems (240 were da Vinci 5); worldwide procedures +~20% YoY, Ion +~52% [src: intuitive.com].

**Customers / partners:** Global academic and community hospital networks (installed base is the customer base).

**Bull case:** Unassailable installed base + recurring instrument revenue (60%+ of sales) + a widening AI/data moat. **Bear case:** Valuation prices in perfection; modular/ASC challengers and pricing pressure chip at the low-acuity segment.

**Relevance to a 2-person software team:** You will never out-build the robot — but Case Insights shows the value is migrating to the *data and AI layer*, which is where small teams can play (integrations, analytics, autonomy modules).

#### Medtronic Hugo — the strategic challenger

**What they build:** The **Hugo RAS** modular robotic-assisted surgery platform — an **open surgeon console** (3D glasses, surgeon stays "in the room"), **four independent modular arm carts**, and a vision tower; modularity lets arms be repositioned per procedure [src: medtronic.com]. Paired with **Touch Surgery Enterprise** (AI surgical-video capture/analytics that auto-blurs PHI and uploads to AWS) and the next-gen **Touch Surgery Aide** real-time OR AI platform shown at SRS 2026 [src: news.medtronic.com]. **FDA status:** **US urologic clearance Dec 3, 2025** (prostatectomy, nephrectomy, cystectomy) off the Expand URO IDE study; general and gynecologic submissions to follow [src: news.medtronic.com] [src: urologytimes.com].

**Funding / financials:** Part of Medtronic (NYSE: MDT); FY2025 total revenue **$33.5B**, Medical Surgical segment $8.4B. **Hugo-specific revenue undisclosed** [src: sec.gov].

**Founders:** Not a startup — internal Medtronic program. Its AI roots trace to **Digital Surgery / Touch Surgery**, founded London 2013 by surgeons **Dr. Jean Nehme and Dr. Andre Chow**, acquired by Medtronic 2020 (terms undisclosed) [src: en.wikipedia.org].

**Traction:** Used in tens of thousands of procedures across **30+ countries** OUS; **first US surgery Feb 17, 2026 at Cleveland Clinic** [src: news.medtronic.com] [src: urologytimes.com]. Global installed base undisclosed.

**Customers / partners:** First US sites **Cleveland Clinic, Duke, Atrium Health Wake Forest Baptist**; Touch Surgery distributed via the **Vizient** GPO [src: medtechdive.com].

**Bull case:** Medtronic's balance sheet, sales force, and GPO reach + an AI-video asset Intuitive lacks. **Bear case:** Years late to US market, tiny installed base, Hugo economics still unproven.

**Relevance to a 2-person software team:** Touch Surgery is the template — a surgical-AI software company (Digital Surgery) got acquired into the robot. That acquisition path is the realistic exit for a small AI team in this space.

#### CMR Surgical — the venture-backed modular challenger

**What they build:** **Versius** — a modular, portable soft-tissue robot with small independent arm carts and a seated open console; second-gen **Versius Plus** [src: therobotreport.com]. Named AI products undisclosed; positioning centers on portability and data ecosystem. **FDA status:** FDA **De Novo** for Versius Oct 2024; **510(k) for Versius Plus (cholecystectomy) Dec 2025**, with US commercialization targeted for 2026 [src: medtechdive.com] [src: us.cmrsurgical.com].

**Funding / financials:** Private. 2021 **Series D $600M at ~$3B valuation** (then the largest private medtech round); $165M in 2023; **$200M+ (equity + Trinity Capital debt) April 2025** [src: en.wikipedia.org] [src: massdevice.com]. **Oct 2026: Stryker strategic alliance** — ~**$400M equity investment**, **exclusive US commercial agency** for Versius, plus a **Stryker option to acquire 100%** of CMR [src: biospace.com] [src: therobotreport.com]. Post-deal valuation undisclosed.

**Founders:** Founded 2014 (as Cambridge Medical Robotics) by **Luke Hares, Keith Marshall, Paul Roberts, Mark Slack, Martin Frost** — Slack is a practicing gynecological surgeon; Cambridge UK engineering pedigree (freshly sourced). CEO **Massimiliano Colella** [src: en.wikipedia.org] [src: fiercebiotech.com].

**Traction:** **45,000+ patients treated** across 30+ countries (March 2026; one source cites 50,000+ across 35+), up from 20,000 in March 2024; **20+ NHS hospital partnerships** [src: en.wikipedia.org]. Installed-system count undisclosed.

**Customers / partners:** NHS hospitals (UK), Macquarie University Hospital (Australia), centers in India/Pakistan/Latin America; **Stryker** as exclusive US sales agent [src: biospace.com].

**Bull case:** Stryker's distribution + capital effectively makes Versius the credible third force against Intuitive and Medtronic. **Bear case:** Needed a strategic rescue after a decade of cash burn; US launch is just beginning.

**Relevance to a 2-person software team:** A cautionary tale on hardware capital intensity — ~$1B+ raised and it still sold agency rights. Build software, not arms.

#### Moon Surgical — the collaborative "co-bot" for laparoscopy

**What they build:** **Maestro**, a collaborative accessory robot that *augments* standard laparoscopy (robotic instrument + scope support in the sterile field) rather than replacing the surgeon at a console [src: massdevice.com] [src: moonsurgical.com]. Its standout is **ScoPilot** — AI that autonomously drives the laparoscope hands-free so a surgeon "controls three instruments with two hands," billed as the first AI to run intraoperatively on a commercial surgical robot, executing on **NVIDIA Holoscan + IGX** edge hardware with a "Maestro Insights" cloud [src: sofinnovapartners.com] [src: prnewswire.com]. **FDA status:** Maestro 510(k) June 2024; **ScoPilot cleared Mar 2025**; connectivity + a **Predetermined Change Control Plan (PCCP)** to iterate the AI cleared Jul 2025 [src: biospace.com] [src: massdevice.com].

**Funding / financials:** ~**$86.4M** total. Series A $31M (June 2022); **Series B $55.4M (May 2023) co-led by Sofinnova Partners and NVIDIA's NVentures**, with Fred Moll and Josh Makower participating [src: tracxn.com] [src: sofinnovapartners.com]. No new round disclosed 2025–2026.

**Founders:** Founded 2019 by **Brice Gayet**, a renowned laparoscopic/hepatobiliary surgeon (freshly sourced); CTO **David Noonan, PhD**, ex-Auris Health systems/robotics lead; Board Chair **Fred Moll** [src: sofinnovapartners.com] [src: west.devicetalks.com].

**Traction:** First-in-human Dec 2022 (Brussels); **2,300+ cumulative patients** reported 2025; entire base upgraded to 5G/Wi-Fi Jan 2025 [src: prnewswire.com].

**Customers / partners:** **NVIDIA** (investor + tech partner); deployments at **Baptist Health Jacksonville, Lee Health (Fort Myers)**, and the **Orlando VA** (first VA to evaluate Maestro) [src: sofinnovapartners.com] [src: va.gov].

**Bull case:** Cheapest path to "robotic" value (augments existing lap workflows) with the strongest real AI-autonomy story + NVIDIA alignment. **Bear case:** Accessory positioning may cap pricing/reimbursement; still pre-scale.

**Relevance to a 2-person software team:** The clearest proof that **AI software (ScoPilot) is the differentiator** on commodity-ish hardware, and the PCCP pathway shows the FDA now lets you ship iterative AI updates — a software-team-friendly regulatory model.

#### Distalmotion — the ASC-focused open-architecture robot

**What they build:** **Dexter**, an "on-demand" open-architecture robot that keeps the surgeon **at patient-side in the sterile field**, letting them switch fluidly between robotic and laparoscopic technique; uses **single-use instruments** and is compatible with third-party visualization/energy systems [src: distalmotion.com] [src: medtechdive.com]. Its wedge is **ambulatory surgery centers (ASCs)**: ~125 sq ft footprint, standard wall power, ~4-minute setup, mobile between ORs [src: medtechdive.com]. Named AI product undisclosed. **FDA status:** FDA **De Novo** (inguinal hernia) Q4 2024; then 510(k)s for **cholecystectomy** (May 2025), **benign hysterectomy** (Oct 2025), expanded gynecology (Jun 2026), and **ventral hernia** (Aug 2026) — five US indications [src: massdevice.com] [src: surgicalroboticstechnology.com].

**Funding / financials:** **~$400M total raised** [src: medtechdive.com]. **Series G $150M (Nov 2025) led by Revival Healthcare Capital**; prior Series E $90M; **J&J's JJDC** is a strategic investor [src: massdevice.com] [src: distalmotion.com].

**Founders:** EPFL spin-off; CEO **Michael Friedrich**, an EPFL microtechnology engineer and serial medtech entrepreneur (previously co-founded/exited **Aïmago**) — freshly sourced; original scientific founders not fully named in sources (partially undisclosed) [src: venturelab.swiss] [src: massdevice.com].

**Traction:** **3,000+ cumulative procedures** (Europe + US, reported Q4 2025/Q1 2026); 200 cases at Saintes Hospital, France; claims the first hybrid robotic-plus-laparoscopic case [src: medtechdive.com] [src: surgicalroboticstechnology.com].

**Customers / partners:** **Cypress Surgery Center (Wichita, KS, a Surgery Partners facility)** bought a Dexter March 2026 — its first robot; Saintes Hospital (France); European Early Adopter hospitals; **J&J (JJDC)** [src: medtechdive.com].

**Bull case:** Deepest war chest among the challengers + the clearest wedge (underserved ASC market Intuitive underfits) + fast-stacking FDA indications. **Bear case:** Single-use instruments and open architecture must prove economics and clinical parity at scale.

**Relevance to a 2-person software team:** Lightest AI story here — illustrates that a hardware-led strategy can win on *distribution and form factor* alone, leaving the software/AI layer open for partners.

#### Virtual Incision — the miniaturized single-device disruptor

**What they build:** **MIRA** ("Miniaturized In vivo Robotic Assistant"), the first **miniaturized robotic-assisted surgery (miniRAS)** device — **under 1 kg**, inserted through a single midline incision with two internal arms, enabling a "tray-to-table" setup that makes any OR "robot-ready in minutes" with no capital tower [src: biospace.com] [src: virtualincision.com]. Famous as the **first surgical robot tested aboard the ISS** (Jan 2024) [src: therobotreport.com]. Exploring **NVIDIA AI** for next-gen systems (early stage) [src: massdevice.com]. **FDA status:** **De Novo (colectomy) Feb 2024** — first miniRAS authorized; **510(k) (benign hysterectomy) Aug 2026** [src: biospace.com] [src: virtualincision.com].

**Funding / financials:** **Series C ~$76M** — $46M (Dec 2021) + **$30M extension (Sept 2023)**; total across all rounds not cleanly disclosed (undisclosed). Backers include **Bluestem Capital** [src: businesswire.com] [src: massdevice.com].

**Founders:** Co-founded by **Shane Farritor** (UNL engineering professor; MIRA inventor; CTO) and **Dmitry Oleynikov** (former UNMC surgery professor) — freshly sourced. CEO **Jim Alecxih** (appointed June 2025; 30+ years in surgical tech including a tenure at Intuitive) [src: therobotreport.com] [src: surgicalroboticstechnology.com].

**Traction:** First MIRA hysterectomy performed (supporting the 2026 clearance); commercial rollout via a **First Access Program** at select US centers (2025–2026). Installed-system and procedure counts **undisclosed** [src: biospace.com] [src: virtualincision.com].

**Customers / partners:** **NVIDIA** (AI exploration); **NASA / University of Nebraska** (ISS mission). Named commercial hospital customers undisclosed [src: massdevice.com] [src: eurekalert.org].

**Bull case:** A genuinely novel form factor that could make robotic surgery capital-light and ubiquitous; huge PR halo. **Bear case:** Leanest funding here, earliest commercially, unproven at scale against far better-capitalized rivals.

**Relevance to a 2-person software team:** The NVIDIA AI collaboration is nascent — a greenfield for software partners, since the company's core competency is mechatronics, not AI.

#### Noah Medical — robotic bronchoscopy with an imaging+AI edge

**What they build:** The **Galaxy System** for robotic-assisted bronchoscopy, used mainly for **peripheral lung-nodule biopsy / lung-cancer diagnosis**. Core tech is **TiLT (Tool-in-Lesion Technology)** with integrated **digital tomosynthesis + augmented fluoroscopy** and an always-on camera bronchoscope [src: noahmed.com] [src: massdevice.com]. **Galaxy II** (launched Aug 2026) adds **Dual-Mode Imaging** — toggling between HD Digital Tomosynthesis and Cone-Beam CT mid-procedure [src: massdevice.com]. **FDA status:** **510(k) clearance March 2023**; Galaxy II shipped as a software advance on the cleared platform. Note a negative: an **FDA Warning Letter (April 2025)** citing CGMP/QSR, CAPA, and complaint-handling deficiencies after a late-2024 inspection [src: fda.gov] [src: raps.org].

**Funding / financials:** **Series B $150M (April 2023), co-led by SoftBank Vision Fund 2 and Prosperity7 Ventures**; other investors Hillhouse, Sequoia China, Shangbay. Total raised / valuation undisclosed [src: globenewswire.com] [src: therobotreport.com].

**Founders:** **Jian Zhang** — Founder & CEO; was **employee #2 at Auris Health** (acquired by J&J for $5.7B) with an MS/PhD from Columbia (freshly sourced, consistent with general knowledge) [src: pulse2.com] [src: medicaldesignandoutsourcing.com].

**Traction:** **Surpassed 5,000 procedures** (2025). CHEST 2025 data: **97% tool-in-lesion** confirmation and **96.7% diagnostic yield** with TiLT+ [src: noahmed.com] [src: dicardiology.com].

**Customers / partners:** First procedures at **Macquarie University Hospital, University of Chicago Medicine, Prince of Wales Hospital (HK)**; also **CHI Memorial** and **City of Hope Atlanta** [src: noahmed.com] [src: massdevice.com].

**Bull case:** Strong imaging/AI differentiation and clinical yield data in the large, fast-growing lung-cancer-diagnosis market (vs. Intuitive's Ion). **Bear case:** The FDA Warning Letter is a real quality-system red flag; no disclosed Series C.

**Relevance to a 2-person software team:** The battleground here is **imaging software and AI yield**, not the robot arm — exactly where a software team adds value, though the Warning Letter underscores that medical-device QMS rigor is non-negotiable.

#### Theator — surgical video intelligence (AI software)

**What they build:** A **Surgical Intelligence Platform** — AI + computer vision that analyzes raw HD intraoperative video to flag surgical milestones and safety events, plus a **Surgery-to-Text engine** that auto-generates operative reports as the surgeon leaves the OR, running cloud-based on **Oracle Cloud Infrastructure** [src: theator.io] [src: prnewswire.com]. **FDA status:** **No FDA clearance publicly listed**; pathway not stated (likely clinical-documentation / enforcement-discretion territory) [src: medaiverdict.com]. Clinical validation in the *Journal of the American College of Surgeons* shows AI reports beat memory-based reports (only ~72.8% accurate; p=0.001) [src: prnewswire.com].

**Funding / financials:** **~$43.1M disclosed** (one aggregator cites ~$70M — conflicting, low-confidence). **Series A $15.5M (Feb 2021)** led by **Insight Partners**; **$24M extension (July 2022)** → $39.5M round, with **Mayo Clinic**, NFX, Blumberg, and ex-Netflix CPO Neil Hunt participating [src: insightpartners.com] [src: techcrunch.com]. Valuation undisclosed.

**Founders:** **Tamir Wolf, MD, PhD** — Co-founder & CEO (physician-founder); **Dotan Asselmann** — Co-founder & CTO (autonomous-vehicle AI / machine-vision background). Freshly sourced, consistent with general knowledge [src: prnewswire.com] [src: timesofisrael.com].

**Traction:** **600,000+ procedures analyzed across 150+ operation types**; deployed at leading US academic medical centers [src: prnewswire.com] [src: theator.io].

**Customers / partners:** **Mayo Clinic** (customer + investor), **UHealth/University of Miami, McGill University Health Centre, Assuta, Prisma Health**; **Oracle Health** strategic EHR partner [src: cbinsights.com] [src: prnewswire.com]. **June 2026:** Oracle Health partnership embeds Surgery-to-Text into Oracle's EHR [src: fiercehealthcare.com].

**Bull case:** Pure-software, asset-light, with a real wedge (automated op-notes) and an EHR distribution partner — the closest model to what a software team could build. **Bear case:** Modest funding, no FDA moat, and incumbents (Medtronic's Touch Surgery) attack the same video-intelligence space.

**Relevance to a 2-person software team:** This is the archetype — two founders (surgeon + AI/vision engineer), no hardware, computer-vision-on-surgical-video, distributed through an EHR partner. Directly replicable in spirit.

#### Proximie — the connected-OR / surgical-telepresence platform

**What they build:** A **connected-OR / surgical-intelligence platform** linking surgical teams, devices, and data. Modules span **telepresence** (remote proctoring, training, a video library), an **Intelligence Suite** (real-time analytics, predictive insights, EHR integration), an SDK **Platform**, and hardware; it is repositioning from telepresence toward **multimodal perioperative AI** [src: proximie.com]. **FDA/CE status:** Undisclosed / not surfaced — the product is largely software/telepresence.

**Funding / financials:** **~$119M–$140M total** (sources vary). **Series C $80M (2022) led by Advent Life Sciences**, with Questa Capital, F-Prime, Eight Roads [src: crunchbase.com] [src: mobihealthnews.com]. An aggregator notes an **M&A offer in April 2025** (details undisclosed) and estimates ~$11M ARR — treat both as **low-confidence / undisclosed** [src: getlatka.com].

**Founders:** **Dr. Nadine Hachach-Haram, BEM** — Founder & CEO; a consultant **plastic surgeon** and Director of Clinical Innovation at Guy's and St Thomas' NHS Trust, awarded the British Empire Medal, with a widely viewed TED talk on AR in surgery (freshly sourced) [src: proximie.com] [src: milkeninstitute.org].

**Traction:** Deployed in **500+ hospitals across 50 countries**; reports OR productivity up to +24% (up to 300 extra procedures per OR per year) [src: tracxn.com] [src: proximie.com].

**Customers / partners:** **UC San Diego Health** (flagship July 2026 deal, largest Americas deployment), **M42/Healthpoint (Abu Dhabi)**, **Burjeel Holdings**, plus **NVIDIA, AWS, Deloitte** (NHS AI programme across 104 theatres) [src: proximie.com]. **April 2026:** deepened NVIDIA collaboration on the "intelligent OR of the future" [src: businesswire.com].

**Bull case:** Broad global footprint + a pivot toward high-value perioperative AI with NVIDIA/AWS behind it; a software-only asset. **Bear case:** Murky financials, a reported acquisition offer, and low ARR estimates suggest telepresence alone hasn't monetized — the AI pivot is unproven.

**Relevance to a 2-person software team:** Another asset-light, surgeon-founded software play — but its fuzzy financials are a warning that "connected OR" telepresence is hard to monetize; the defensible value is in the AI/data layer it is now chasing.
