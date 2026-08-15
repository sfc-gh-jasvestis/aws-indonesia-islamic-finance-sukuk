-- ============================================================================
-- 04_DYNAMIC_TABLES.SQL — Curated layer for Sukuk Portfolio Analytics
-- ============================================================================
USE DATABASE ISLAMIC_SUKUK_INDONESIA;
USE SCHEMA CURATED;

-- PORTFOLIO_SUMMARY: Real-time portfolio AUM, weighted yield, and allocation breakdown
-- Source: SUKUK_HOLDINGS, VALUATIONS
CREATE OR REPLACE DYNAMIC TABLE CURATED.PORTFOLIO_SUMMARY
  TARGET_LAG = '5 minutes'
  WAREHOUSE = SUKUK_WH
AS
SELECT * FROM RAW.SUKUK_HOLDINGS;
-- TODO: Replace with actual join/aggregation logic per demo

-- YIELD_CURVES: Sukuk yield curve by tenor and issuer type
-- Source: MARKET_DATA, VALUATIONS
CREATE OR REPLACE DYNAMIC TABLE CURATED.YIELD_CURVES
  TARGET_LAG = '5 minutes'
  WAREHOUSE = SUKUK_WH
AS
SELECT * FROM RAW.MARKET_DATA;
-- TODO: Replace with actual join/aggregation logic per demo

-- ISSUER_RISK: Issuer exposure and credit risk aggregation
-- Source: SUKUK_HOLDINGS, ISSUERS
CREATE OR REPLACE DYNAMIC TABLE CURATED.ISSUER_RISK
  TARGET_LAG = '5 minutes'
  WAREHOUSE = SUKUK_WH
AS
SELECT * FROM RAW.SUKUK_HOLDINGS;
-- TODO: Replace with actual join/aggregation logic per demo

-- MATURITY_LADDER: Cash flow and maturity profile for liquidity planning
-- Source: SUKUK_HOLDINGS, VALUATIONS
CREATE OR REPLACE DYNAMIC TABLE CURATED.MATURITY_LADDER
  TARGET_LAG = '5 minutes'
  WAREHOUSE = SUKUK_WH
AS
SELECT * FROM RAW.SUKUK_HOLDINGS;
-- TODO: Replace with actual join/aggregation logic per demo

