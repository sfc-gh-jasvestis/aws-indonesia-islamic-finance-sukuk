-- ============================================================================
-- 03_STAGING.SQL — Generate synthetic data for Sukuk Portfolio Analytics
-- Country: INDONESIA | Currency: IDR
-- ============================================================================
USE DATABASE ISLAMIC_SUKUK_INDONESIA;
USE SCHEMA RAW;

-- Data generation scripts are demo-specific.
-- See the handcrafted SQL in the aws-malaysia-semiconductor-yield demo for
-- the full pattern: GENERATOR + UNIFORM + LATERAL for distribution,
-- Cortex Complete for text generation, engineered key demo numbers.

-- Target row counts:
-- SUKUK_HOLDINGS: 800 rows — Portfolio holdings across sovereign (SBSN) and corporate Sukuk structures
-- VALUATIONS: 20,000 rows — Daily mark-to-market valuations for all holdings
-- ISSUERS: 150 rows — Issuer profiles with credit ratings and Shariah board approvals
-- MARKET_DATA: 80,000 rows — BI rate, JIBOR, benchmark yields, and interbank Islamic rates
-- PORTFOLIO_DOCS: 60 rows — Investment committee papers, Sukuk prospectuses, and Shariah opinions
