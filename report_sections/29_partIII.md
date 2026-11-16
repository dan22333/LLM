---

# PART III — THE IDEA: A FULL ENGINEERING + INVESTMENT THESIS

This is the flagship. An AI-native firm that reasons about companies, markets, and the macro-economy **from first principles** — a world model for the economy that both analyzes the present (the OSINT / sensing layer) and *unrolls the future* to act as a **superforecaster**. OSINT is the sensing layer; this engine is the simulation-and-forecasting layer on top. It is the direct successor to your sim-alpha / AgentTorch work, and it fuses with Grinberg's OSINT and hedge-fund interest.

The thesis is built in five chapters:

- **Chapter A — Why this is hard.** The LLM failure modes that are specifically lethal to forecasting (miscalibration, lookahead/backtest leakage, non-determinism), the mitigations, and the honest question of what "verification" can even mean for a forecast.
- **Chapter B — Where to point it.** Market selection with a scored framework, then deep dives on the three beachheads — European power/gas, under-covered SMID equities, biotech catalysts — each with *named* data feeds, a worked end-to-end example, and the tailwinds that make it winnable now.
- **Chapter C — The system.** A buildable layered architecture that reuses AgentTorch (differentiable agent-based simulation) and MIT's AI-LPM, mapped onto Tetlock's superforecasting principles, with the verification harness specified in engineering detail.
- **Chapter D — The business.** Three business-model archetypes (trade it / sell it / license it), unit economics, the why-now tailwinds, fundraising, team, and a concrete 0–18-month roadmap.
- **Chapter E — The competition.** Player-by-player teardowns and the precise whitespace.

### The domains, scored

The core of Chapter B in one picture — candidate arenas scored across six criteria (unmet need, data/OSINT-addressability, feedback speed, whitespace, moat, willingness-to-pay; out of 30). The top three separate cleanly, and each wins on a *different* axis, which is exactly why they sequence so well.

<svg viewBox="0 0 720 320" xmlns="http://www.w3.org/2000/svg" role="img" style="max-width:100%;height:auto;font-family:Georgia,serif">
  <text x="10" y="22" font-size="15" font-weight="bold" fill="#111">Candidate forecasting domains, scored /30 (green = recommended beachheads)</text>
  <g font-size="13" fill="#222">
    <text x="10" y="58">European power / gas</text>
    <rect x="200" y="46" width="329" height="16" fill="#2a7f62"/><text x="537" y="59">26</text>
    <text x="10" y="84">Under-covered SMID equities</text>
    <rect x="200" y="72" width="317" height="16" fill="#2a7f62"/><text x="525" y="85">25</text>
    <text x="10" y="110">Biotech trial catalysts</text>
    <rect x="200" y="98" width="291" height="16" fill="#2a7f62"/><text x="499" y="111">23</text>
    <text x="10" y="136">Shipping / commodity flows</text>
    <rect x="200" y="124" width="279" height="16" fill="#8aa0b8"/><text x="487" y="137">22</text>
    <text x="10" y="162">Corporate credit / distressed</text>
    <rect x="200" y="150" width="266" height="16" fill="#8aa0b8"/><text x="474" y="163">21</text>
    <text x="10" y="188">Insurance / catastrophe</text>
    <rect x="200" y="176" width="266" height="16" fill="#8aa0b8"/><text x="474" y="189">21</text>
    <text x="10" y="214">M&amp;A / event-driven</text>
    <rect x="200" y="202" width="253" height="16" fill="#8aa0b8"/><text x="461" y="215">20</text>
    <text x="10" y="240">Macro / rates</text>
    <rect x="200" y="228" width="228" height="16" fill="#8aa0b8"/><text x="436" y="241">18</text>
    <text x="10" y="266">Geopolitics / sovereign</text>
    <rect x="200" y="254" width="215" height="16" fill="#8aa0b8"/><text x="423" y="267">17</text>
  </g>
  <text x="10" y="300" font-size="11" fill="#666">Power wins on feedback speed; SMID on whitespace + unmet need; biotech on clean-binary verifiability. Scoring is opinionated judgment — see Chapter B.</text>
</svg>
