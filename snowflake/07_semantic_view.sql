-- ============================================================================
-- 07_SEMANTIC_VIEW.SQL — Semantic View for Sukuk Portfolio Analytics
-- ============================================================================
USE DATABASE ISLAMIC_SUKUK_INDONESIA;
USE SCHEMA APP;

CREATE OR REPLACE SEMANTIC VIEW APP.SUKUK_PORTFOLIO_ANALYTICS
  COMMENT = 'Sukuk portfolio performance, yield, and risk analytics'
AS
  TABLES (
    CURATED.PORTFOLIO_SUMMARY AS portfolio_summary,CURATED.YIELD_CURVES AS yield_curves,CURATED.ISSUER_RISK AS issuer_risk,CURATED.MATURITY_LADDER AS maturity_ladder
  );
