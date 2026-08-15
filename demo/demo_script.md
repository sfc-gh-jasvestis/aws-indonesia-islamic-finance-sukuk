# Demo Script: Sukuk Portfolio Analytics
## ~4-Minute Recorded Walkthrough
**Format**: Screen recording with voiceover
**Target**: Customer meeting / booth loop / social share
**Narrative**: "Snowflake delivers Sukuk portfolio intelligence — Dynamic Tables aggregate 800 holdings, ML.FORECAST projects yield trajectories, and Cortex Analyst answers portfolio questions in natural language"
**Demo Mode**: Open app with `?demo=true` for presenter notes

---

## Two Personas

| Persona | Role | Tool | What they care about |
|---|---|---|---|
| **H. Muhammad Faisal** | CIO Islamic Fund | React App (SPCS) | Portfolio performance, yield optimization, sovereign vs corporate allocation, Shariah compliance |
| **Dian Pratiwi** | Fixed Income Portfolio Manager | Amazon QuickSight | Daily valuations, maturity profiles, liquidity risk, BI rate impact, benchmark tracking |

---

## What's Built

| Layer | Component | Detail |
|---|---|---|
| **RAW** | 5 tables | SUKUK_HOLDINGS (800), VALUATIONS (20000), ISSUERS (150), MARKET_DATA (80000), PORTFOLIO_DOCS (60) |
| **CURATED** | 4 Dynamic Tables | PORTFOLIO_SUMMARY, YIELD_CURVES, ISSUER_RISK, MATURITY_LADDER |
| **ML** | ML.FORECAST | Forecasting + anomaly detection |
| **AI** | COMPLETE, AI_EXTRACT, SUMMARIZE | Classification + extraction |
| **Search** | Cortex Search | 60 documents indexed |
| **Agent** | SUKUK_PORTFOLIO_AGENT | Semantic View + Search tools |


---

## The Story

Indonesia's Islamic capital market has reached US$64 billion, with sovereign SBSN dominating issuance. An Islamic fund managing Rp 45 trillion needs real-time portfolio intelligence — yield forecasting, BI rate sensitivity analysis, and AI-generated investment commentary — as it navigates potential rate cuts and corporate credit deterioration.

---

## Script

### [0:00–0:45] PORTFOLIO OVERVIEW

**Show**: Portfolio Overview tab

> "Rp 45 trillion Sukuk portfolio — 60% sovereign SBSN, 40% corporate across 800 holdings."

**Action**: Point at Rp 45T AUM KPI

### [0:45–1:30] YIELD ANALYTICS

**Show**: Yield Analytics tab

> "Dynamic Tables rebuild yield curves every 2 hours from 80,000 market data points."

**Action**: Show yield curve by issuer type

### [1:30–2:15] RISK MANAGEMENT

**Show**: Risk Management tab

> "Two issuers on watchlist — combined exposure Rp 3.2 trillion (7.1% of portfolio)."

**Action**: Show issuer exposure heatmap

### [2:15–3:00] ASK AI

**Show**: Ask AI tab

> "Faisal asks: 'What is our total exposure to BBB-rated issuers?'"

**Action**: Type portfolio question

### [3:00–3:45] ARCHITECTURE & DATA

**Show**: Architecture & Data tab

> "Six Snowflake capabilities, five AWS services."

**Action**: Walk through architecture diagram


---

## Key Demo Differentiators

1. **ML.FORECAST on Indonesian Sukuk yield curves** — Only demo forecasting SBSN and corporate Sukuk yields with BI rate sensitivity
2. **Sovereign vs corporate allocation analytics** — Unique to Indonesian market with SBSN dominance
3. **Dynamic Tables for real-time portfolio valuation** — Rebuilds portfolio views from 80,000 market data points every 2 hours
4. **Indonesian Islamic finance context** — World's largest Muslim population, US$64B Islamic capital market, Rupiah economics


---

## Demo Prep Checklist

### Data Verification
- [ ] `SELECT COUNT(*) FROM ISLAMIC_SUKUK_INDONESIA.RAW.SUKUK_HOLDINGS` → 800
- [ ] `SELECT COUNT(*) FROM ISLAMIC_SUKUK_INDONESIA.RAW.VALUATIONS` → 20000
- [ ] `SELECT COUNT(*) FROM ISLAMIC_SUKUK_INDONESIA.RAW.MARKET_DATA` → 80000

### ML Model Verification
- [ ] `SELECT COUNT(*) FROM ISLAMIC_SUKUK_INDONESIA.ML.YIELD_CURVE_FORECAST_RESULTS` → >0

### AI/Agent Verification
- [ ] `SELECT COUNT(*) FROM ISLAMIC_SUKUK_INDONESIA.AI.DOC_EXTRACT_RESULTS` → 60

