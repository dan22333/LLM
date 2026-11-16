### Company dossiers — Neural Data & BCI

The neural-data landscape splits along two axes that matter for anyone sizing a market or a team. First, **invasive vs. non-invasive**: implanted electrodes (Neuralink, Precision, Synchron) buy very high signal-to-noise and single-neuron or local-field resolution at the cost of surgery, regulatory years, and tiny patient counts; scalp/ear EEG and optical methods (Piramidal, Neurable, Kernel, OpenBCI) trade signal quality for scale, safety, and a consumer-speed go-to-market. Second, **hardware-first vs. model-first**: most of these companies are device companies that happen to collect data, but the frontier is shifting toward *brain foundation models* — large self-supervised models trained on massive EEG/neural corpora, where the data moat and the AI are the product (Piramidal is the purest example). The 2-person-team lesson running through every dossier below: you almost certainly cannot win the electrode/surgery game, but the model, decoding, and data-tooling layers are where small teams still have leverage.

---

#### Piramidal — brain foundation model for the ICU

**What they build:** A non-invasive, software-only play: a transformer-style *foundation model for human brainwaves* (EEG), pitched as a "co-pilot" that reads continuous ICU EEG in real time and flags seizures and other neurological events for neurologists. No hardware — they sit on top of existing hospital EEG rigs. This is the most model-first company in the set: the asset is the pretrained "large neuro model," not a device [src: forbes.com, healthcarediscovery.ai].

**Funding:** ~$6.5M total across 3 rounds; headline is a **$6M seed (Aug 2024)** backed by Y Combinator, Adverb Ventures, Lionheart Ventures, and angels including founders of Intercom, PlanGrid, and Guilded [src: tracxn.com, dataphoenix.info].

**Founders:** **Dimitris Fotis Sakellariou** (CEO) — physicist-turned-neuroscientist, PhD in neuroscience/AI, began the model during his doctorate and spent years alongside neurologists reading intraoperative EEG. Co-founder **Kris Pahuja** brings AI strategy/product [src: iamdimitris.com, startupintros.com].

**Traction:** Model trained on ~1M hours of EEG from tens of thousands of patients, blending public datasets with proprietary data from **Cleveland Clinic**. Lined up four ICU pilots for Q1 2025 plus two UK sites (King's College, St Thomas') [src: aha.org, finance.yahoo.com].

**Customers / partners:** Cleveland Clinic (data + co-pilot pilot); King's College and St Thomas' (UK) [src: aha.org].

**Bull case:** Software margins, no surgery/FDA-implant risk, and a genuine data moat if hospital partnerships compound. **Bear case:** EEG foundation models are unproven clinically; regulated diagnostic claims are slow; incumbents (Natus, Ceribell) own the EEG channel.

**Relevance to a 2-person team:** The template. Tiny team, YC seed, no hardware — pure data + model + clinical partner. Directly transferable to a signals-foundation-model thesis.

---

#### Precision Neuroscience — minimally invasive cortical-surface BCI

**What they build:** The **Layer 7 Cortical Interface** — a thin-film microelectrode array one-fifth the thickness of a human hair that lays *on* the brain's surface (does not penetrate tissue), inserted through a "micro-slit" incision. 1,024 electrodes per array; designed to be removable. Positioned as the safer, surgically reversible middle ground between scalp EEG and Neuralink-style penetrating probes [src: en.wikipedia.org, massdevice.com].

**Funding:** **$430M total**. Headline **$250M Series D (2025)** to fund commercialization; prior rounds built the base [src: medtechdive.com].

**Founders:** Founded 2021 by **Benjamin Rapoport** (CSO; one of Neuralink's 8 founders, left 2018; MD Harvard, PhD EECS MIT, practicing neurosurgeon at Mount Sinai), **Michael Mager** (CEO), Demetrios Papageorgiou, and Mark Hettick [src: en.wikipedia.org, cnbc.com].

**Traction:** **FDA 510(k) clearance (April 2025)** for Layer 7 as a temporary (up to 30-day) recording/monitoring/stimulation array — a first-of-kind full clearance for a next-gen wireless-class BCI component. Used intra-operatively in patients during the clearance pathway [src: globenewswire.com, medscape.com].

**Customers / partners:** Hospital neurosurgery programs via clinical studies; Mount Sinai affiliation through Rapoport [src: harvardmagazine.com].

**Bull case:** A real FDA clearance de-risks them vs. Neuralink; surgically reversible design is a regulatory and ethical advantage. **Bear case:** Surface arrays capture lower-resolution signal than penetrating probes; $430M raised sets a high bar; long road to a reimbursable product.

**Relevance to a 2-person team:** Near-zero on hardware/surgery — capital- and credential-intensive. Useful only as a data-partner or decoding-algorithm supplier.

---

#### Synchron — endovascular "Stentrode" BCI

**What they build:** The **Stentrode**, a stent-mounted electrode array delivered through the jugular vein into a blood vessel adjacent to the motor cortex — **no open brain surgery**. Reads motor-intent signals to drive cursor/device control. The vascular delivery is the defining bet: a routine-ish endovascular procedure instead of a craniotomy [src: medicaldevice-network.com, innovationaus.com].

**Funding:** **$200M Series D (Nov 2025)** led by Double Point Ventures (ARCH, Khosla, Bezos Expeditions participating), then a **$275M Series E (June 2026)** led by General Atlantic with Khosla, ARCH, and strategic investor **Medtronic**. Total **>$575M** [src: massdevice.com, neurotech.com].

**Founders:** **Thomas Oxley** (CEO) — Australian interventional neurologist at Mount Sinai, originator of the endovascular thesis; **Nicholas Opie** (co-founder, founding CTO, U. Melbourne vascular-bionics lab; now board). **Riki Banerjee** is current CTO [src: yespress.io, mpo-mag.com].

**Traction:** **Stentrode implanted in 100 patients** across US, Australia, and UK sites; plans to file a **pivotal trial** with FDA before end of 2026 (targeting first BCI PMA) [src: neurotech.com, theroboticsmedia.com].

**Customers / partners:** **Microsoft** (accessibility/Windows integration for BCI input), **Medtronic** (strategic investor + endovascular manufacturing expertise) [src: insights.citeline.com].

**Bull case:** Least-invasive implant path = fastest regulatory route; Medtronic + Microsoft give distribution and credibility; furthest along to a pivotal trial. **Bear case:** Vascular placement yields fewer channels/lower bandwidth than cortical arrays; the decode may plateau.

**Relevance to a 2-person team:** Hardware/regulatory moat is unreachable; the opening is the software/decoding and accessibility-app layer Microsoft is co-building.

---

#### Forest Neurotech (now Arbor Neuroscience) — functional-ultrasound brain interface

**What they build:** A **non-penetrating ultrasound** neural interface ("Forest 1") that both *images* and *stimulates* brain activity via functional ultrasound rather than electrodes — potentially reading from deep structures electrodes can't reach. Structured as a focused research organization (FRO) incubated by Convergent Research, not a classic VC startup [src: convergent-theta.vercel.app, businesswire.com].

**Funding:** Philanthropic/FRO model. **$14M** commitment anchored by **Eric Schmidt**, plus Griffin Catalyst (Ken Griffin), Riley & Susan Bechtel Foundation, and James Fickel. A UK **ARIA-funded £6.5M NHS trial** backs the Forest 1 clinical test [src: businesswire.com, technooptimist.io].

**Founders:** **Sumner Norman** (CEO), **Tyson Aflalo**, and **Will Biederman** — Caltech/ultrasound-neurotech lineage. Note the churn: it **renamed to Arbor Neuroscience** under new CEO **Philip Sabes** (Neuralink co-founder); Norman and Aflalo went on to co-found **Merge Labs**, a Sam Altman-backed BCI effort (Jan 2026) [src: tracxn.com, technooptimist.io].

**Traction:** ARIA/NHS trial will test Forest 1 in ~30 patients who already have part of the skull removed after brain injury (an acoustic window for ultrasound). Pre-clinical otherwise [src: technooptimist.io].

**Customers / partners:** ARIA (UK), NHS trial sites, Convergent Research [src: technooptimist.io].

**Bull case:** Ultrasound could read deep brain non-invasively — a genuinely differentiated modality; blue-chip backers. **Bear case:** Earliest-stage science here; leadership turnover and founder departures signal instability; modality unproven at BCI bandwidth.

**Relevance to a 2-person team:** Research-grade physics problem, wrong fit. The transferable idea is the FRO/philanthropic funding model for deep science.

---

#### Kernel — non-invasive optical brain imaging (TD-fNIRS)

**What they build:** **Kernel Flow**, a wearable helmet using time-domain functional near-infrared spectroscopy (TD-fNIRS) to measure cortical blood-oxygenation (a proxy for neural activity) non-invasively. After a pivot from implants to optical imaging, the company is now productizing *brain-health* measurement: "Kernel Trackers" and a "Cognition Tracker" that outputs an age-normalized cognitive score, targeting mild-cognitive-impairment detection [src: en.wikipedia.org, kernel.com].

**Funding:** **~$161M total**. Founder **Bryan Johnson** self-funded ~$100M (2016) and reportedly put ~$64M specifically into Flow; a **$53M Series C (2020)** was led by General Catalyst with Khosla [src: en.wikipedia.org, mynucleus.com]. No major new round disclosed in 2025 — *low confidence on current runway*.

**Founders:** **Bryan Johnson** (founder; Braintree/Venmo exit, Blueprint longevity brand) [src: en.wikipedia.org].

**Traction:** Pivoted from neuroprosthetics to neuroimaging; in 2025 shipped wellness products to longevity clinics and ran clinical trials (healthy-aging + MCI detection) using Flow [src: kernel.com, x.com].

**Customers / partners:** Longevity/wellness clinics; academic research buyers of Flow headsets [src: kernel.com].

**Bull case:** Best non-invasive spatial signal short of fMRI; brain-health/longevity is a real emerging market Johnson can brand. **Bear case:** Years of pivots and shrinkage; fNIRS is pricey and still research-grade; business model unproven.

**Relevance to a 2-person team:** Hardware too heavy, but the *brain-health scoring* model layer on top of optical/EEG data is small-team-addressable.

---

#### Neurable — consumer EEG in everyday headphones

**What they build:** **Neurable AI**, compact brain-signal processing that embeds **12-channel EEG sensors into the ear cushions of over-ear headphones** (the **MW75 Neuro** and lighter/cheaper **MW75 Neuro LT**, co-developed with audio brand Master & Dynamic). The app surfaces focus, mental fatigue, cognitive load, "brain age," calmness, and recovery — a consumer-wellness BCI, not medical [src: athletechnews.com, bciintel.com].

**Funding:** **$35M Series A (Dec 2025)** led by Spectrum Moonshot Fund, bringing **total to ~$65M** (prior $13M raise May 2024) [src: builtinboston.com, businesswire.com].

**Founders:** **Dr. Ramses Alcaide** (CEO) — PhD in neuroscience (U. Michigan), founded Neurable out of BCI research; long-time advocate of "everyday" non-medical BCI [src: yespress.io].

**Traction:** MW75 Neuro shipping; MW75 Neuro LT (lighter, lower price) launched 2025 alongside a redesigned app. Licensing/IP strategy — embedding Neurable AI into third-party consumer electronics rather than owning the whole device [src: lqventures.com, athletechnews.com].

**Customers / partners:** **Master & Dynamic** (co-developed headphones); reported interest from broader consumer-electronics OEMs as a licensable BCI layer [src: athletechnews.com].

**Bull case:** Consumer wearables scale fast; ear-EEG + licensing could ride into mass-market earbuds/headphones. **Bear case:** Scalp/ear EEG is noisy; "focus score" wellness claims risk being hype; crowded wearables market.

**Relevance to a 2-person team:** Highly relevant — the signal-processing-as-licensable-IP model and consumer go-to-market are exactly what a small software team could emulate.

---

#### OpenBCI — open-source BCI hardware + Galea XR biosensing

**What they build:** The original **open-source BCI** platform: low-cost EEG/EMG/ECG boards (Cyton/Ganglion) that made neural data accessible to researchers, hackers, and startups. Newer flagship **Galea** fuses EEG, EMG, EDA, PPG, and eye-tracking into a mixed-reality headset for XR/HCI research — biometrics-meets-VR [src: en.wikipedia.org, bciintel.com].

**Funding:** Reported **~$3.8M total**, incl. a ~$1.58M later-stage round (Aug 2024) and small gov grants (a ~$110K USAF Phase I for Galea). **⚠️ Low confidence** — OpenBCI's financials are thinly and inconsistently reported across aggregators (Owler/Crunchbase/PitchBook disagree); recent-funding figures should be treated as unverified [src: crunchbase.com, owler.com].

**Founders:** **Conor Russomanno** (founder/CEO; Columbia/Parsons background, MIT Media Lab affiliate) — a leading open-source-neurotech advocate [src: en.wikipedia.org, media.mit.edu].

**Traction:** Began shipping **Galea Beta** units (pre-orders) Aug 2024; thousands of OpenBCI boards deployed across university and indie labs over a decade. Estimated revenue $4–10M (aggregator estimate, unverified) [src: owler.com].

**Customers / partners:** Academic research labs globally; DoD/USAF (Galea grant); XR/HCI researchers [src: owler.com].

**Bull case:** Owns the research-community mindshare and a real install base; Galea rides the XR/spatial-computing wave. **Bear case:** Open-source + hardware = thin margins; tiny capitalization vs. well-funded rivals; dependent on research budgets.

**Relevance to a 2-person team:** The most accessible entry point — buy OpenBCI/Galea hardware, build the model/analytics layer on top. A genuine toolkit for a bootstrapped neural-data project.

---

#### Context — Neuralink as the invasive benchmark

Treat Neuralink as the yardstick, not a comparable. The **N1** is a coin-sized fully-implanted device with **1,024 electrodes** on flexible threads inserted by a surgical robot — the highest-bandwidth penetrating BCI in human trials. It raised a **$650M Series E (June 2025)** at a **~$9B pre-money** valuation (Sequoia, Thrive, Lightspeed, ARK, etc.), with secondary marks reportedly ~$12.7B by Aug 2025. By late 2025 roughly **~20 patients** had been implanted (five as of mid-2025), and it holds FDA Breakthrough Device designations extending into vision and speech [src: siliconangle.com, blog.mean.ceo]. Neuralink defines the capital intensity ($650M in one round dwarfs every company above combined), the regulatory ceiling, and the resolution frontier of invasive BCI. The strategic read for everyone else: you do not out-fund or out-surgery Neuralink — you win by being less invasive (Synchron, Precision), non-invasive and scalable (Piramidal, Neurable, Kernel), or by owning the model/data layer that any of these hardware streams ultimately needs.
