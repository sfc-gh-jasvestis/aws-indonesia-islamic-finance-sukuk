-- ============================================================================
-- Sukuk Portfolio Analytics
-- Sovereign and corporate Sukuk analytics for Indonesia's US$64B Islamic capital market — Dynamic Tables build real-time portfolio views, ML.FORECAST projects yield curves, and Cortex AI answers portfolio questions.
-- ============================================================================
USE ROLE ACCOUNTADMIN;
CREATE DATABASE IF NOT EXISTS ISLAMIC_SUKUK_INDONESIA;
CREATE WAREHOUSE IF NOT EXISTS SUKUK_WH WAREHOUSE_SIZE = 'MEDIUM' AUTO_SUSPEND = 120 AUTO_RESUME = TRUE;
USE DATABASE ISLAMIC_SUKUK_INDONESIA;
CREATE SCHEMA IF NOT EXISTS RAW;
CREATE SCHEMA IF NOT EXISTS CURATED;
CREATE SCHEMA IF NOT EXISTS ML;
CREATE SCHEMA IF NOT EXISTS AI;
CREATE SCHEMA IF NOT EXISTS SEARCH;
CREATE SCHEMA IF NOT EXISTS APP;

USE WAREHOUSE SUKUK_WH;
