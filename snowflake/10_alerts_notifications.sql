-- ============================================================================
-- 10_ALERTS_NOTIFICATIONS.SQL — Alerts for Sukuk Portfolio Analytics
-- ============================================================================
USE DATABASE ISLAMIC_SUKUK_INDONESIA;
USE SCHEMA APP;

-- Notification integration (email)
CREATE OR REPLACE NOTIFICATION INTEGRATION aws_indonesia_islamic_finance_sukuk_EMAIL_INT
  TYPE = EMAIL
  ENABLED = TRUE
  ALLOWED_RECIPIENTS = ('<YOUR_EMAIL>');

-- Alert: ISSUER_WATCHLIST_ALERT
CREATE OR REPLACE ALERT APP.ISSUER_WATCHLIST_ALERT
  WAREHOUSE = SUKUK_WH
  SCHEDULE = '5 MINUTE'
  COMMENT = 'Issuer added to watchlist — credit rating downgrade'
IF (EXISTS (
  SELECT 1 FROM CURATED.PORTFOLIO_SUMMARY
  WHERE 1=1 -- Condition: Issuer credit rating downgraded below investment grade
))
THEN
  CALL SYSTEM$SEND_EMAIL(
    'aws_indonesia_islamic_finance_sukuk_EMAIL_INT',
    '<YOUR_EMAIL>',
    '[ALERT] Sukuk Portfolio Analytics: Issuer added to watchlist — credit rating downgrade',
    'Issuer added to watchlist — credit rating downgrade'
  );

ALTER ALERT APP.ISSUER_WATCHLIST_ALERT RESUME;

-- Alert: YIELD_DEVIATION_ALERT
CREATE OR REPLACE ALERT APP.YIELD_DEVIATION_ALERT
  WAREHOUSE = SUKUK_WH
  SCHEDULE = '5 MINUTE'
  COMMENT = 'Portfolio yield deviation exceeds threshold'
IF (EXISTS (
  SELECT 1 FROM CURATED.PORTFOLIO_SUMMARY
  WHERE 1=1 -- Condition: Portfolio yield deviates more than 50bps from benchmark
))
THEN
  CALL SYSTEM$SEND_EMAIL(
    'aws_indonesia_islamic_finance_sukuk_EMAIL_INT',
    '<YOUR_EMAIL>',
    '[ALERT] Sukuk Portfolio Analytics: Portfolio yield deviation exceeds threshold',
    'Portfolio yield deviation exceeds threshold'
  );

ALTER ALERT APP.YIELD_DEVIATION_ALERT RESUME;

