# Sukuk Portfolio Analytics

**Indonesia - Islamic Finance**
Use case: Sukuk Portfolio Management

> Sovereign and corporate Sukuk analytics for Indonesia's US$64B Islamic capital market — Dynamic Tables build real-time portfolio views, ML.FORECAST projects yield curves, and Cortex AI answers portfolio questions.

## Why Snowflake

Snowflake delivers Sukuk portfolio intelligence — Dynamic Tables aggregate 800 holdings, ML.FORECAST projects yield trajectories, and Cortex Analyst answers portfolio questions in natural language

- **ML.FORECAST on Indonesian Sukuk yield curves** - Only demo forecasting SBSN and corporate Sukuk yields with BI rate sensitivity
- **Sovereign vs corporate allocation analytics** - Unique to Indonesian market with SBSN dominance
- **Dynamic Tables for real-time portfolio valuation** - Rebuilds portfolio views from 80,000 market data points every 2 hours
- **Indonesian Islamic finance context** - World's largest Muslim population, US$64B Islamic capital market, Rupiah economics

## What is deployed

| | |
|---|---|
| Database | `ID_ISLAMIC_FINANCE_SUKUK` |
| Service | `ID_ISLAMIC_FINANCE_SUKUK_APP` |
| Compute pool | `SEA_DEMOS_INDONESIA_POOL` |
| Dimension table | `RAW.PORTFOLIO_DOCS` (20 rows) |
| Fact table | `RAW.MARKET_DATA` (250,000 rows, 90 days) |
| Curated layer | `CURATED.PERFORMANCE_SUMMARY`, `CURATED.TREND_ANALYSIS`, `CURATED.KPI_SUMMARY` |
| Currency | IDR (Rp) |

Regions in play: Jakarta, North Sumatra, Riau, East Kalimantan, Sulawesi
Segments: Sovereign Sukuk, Corporate Sukuk, Retail Sukuk, Green Sukuk

Dynamic tables are created suspended and refreshed on demand:

```bash
./refresh_demo_data.sh ID_ISLAMIC_FINANCE_SUKUK
```

## KPI cards

Every card below is served live from `CURATED.KPI_SUMMARY`. The app keeps the
original literal as a fallback, so it still renders if Snowflake is unreachable.

| Card | Value | Backed by |
|---|---|---|
| Outstanding Sukuk | `Rp 847T` | total across Portfolio Docs |
| New Issuance (YTD) | `Rp 124T` | total across Portfolio Docs |
| Avg Yield | `6.8%` | average per event |
| Active Issuers | `42` | total across Portfolio Docs |
| Bid-Ask Spread | `12 bps` | average per event |
| Foreign Holdings | `18%` | average per event |
| Tenor Avg | `7.2 yrs` | average per event |


## Demo flow

1. Portfolio Overview
2. Yield Analytics
3. Risk Management
4. Ask AI
5. Architecture & Data

## Talking points

- **Rp 45T** - Sukuk portfolio AUM (60% sovereign, 40% corporate)
- **800 holdings** - across SBSN and corporate Sukuk
- **7.8%** - weighted average yield (45bps above benchmark)
- **2 issuers** - on watchlist following credit review
- **80,000 data points** - market data refreshed every 2 hours

## Business impact

- Indonesia's Islamic finance market reached US$64B in assets in 2023 (OJK)
- SBSN sovereign Sukuk outstanding reached Rp 1,200 trillion by end 2023 (DJPPR Ministry of Finance)
- Indonesia's Islamic fund management industry grew 18% YoY in 2023 (OJK)
- Real-time portfolio analytics reduces risk reporting latency from days to minutes (McKinsey Asset Management)

---
Generated from `generator/demo_specs/aws-indonesia-islamic-finance-sukuk.json`. Do not hand-edit: run
`python3 generator/gen_repo_docs.py aws-indonesia-islamic-finance-sukuk` instead.
