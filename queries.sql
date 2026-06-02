-- ============================================================
--  SUPERSTORE SALES — SQL Business Analysis
--  Author : Your Name
--  Dataset: superstore_sales table
-- ============================================================

-- ─── TABLE SCHEMA ─────────────────────────────────────────────
-- CREATE TABLE superstore_sales (
--   order_id     TEXT,
--   order_date   DATE,
--   ship_mode    TEXT,
--   segment      TEXT,
--   region       TEXT,
--   state        TEXT,
--   category     TEXT,
--   sub_category TEXT,
--   sales        DECIMAL(10,2),
--   quantity     INTEGER,
--   discount     DECIMAL(4,2),
--   profit       DECIMAL(10,2)
-- );


-- ─── Q1: TOTAL REVENUE, PROFIT & MARGIN ───────────────────────
SELECT
    ROUND(SUM(sales), 2)                             AS total_sales,
    ROUND(SUM(profit), 2)                            AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2)        AS profit_margin_pct,
    COUNT(DISTINCT order_id)                         AS total_orders,
    ROUND(AVG(sales), 2)                             AS avg_order_value
FROM superstore_sales;


-- ─── Q2: SALES & PROFIT BY CATEGORY ──────────────────────────
SELECT
    category,
    ROUND(SUM(sales), 2)                             AS total_sales,
    ROUND(SUM(profit), 2)                            AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2)        AS margin_pct,
    COUNT(*)                                          AS order_count
FROM superstore_sales
GROUP BY category
ORDER BY total_sales DESC;


-- ─── Q3: TOP 10 BEST-SELLING SUB-CATEGORIES ──────────────────
SELECT
    sub_category,
    category,
    ROUND(SUM(sales), 2)                             AS total_sales,
    ROUND(SUM(profit), 2)                            AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2)        AS margin_pct
FROM superstore_sales
GROUP BY sub_category, category
ORDER BY total_sales DESC
LIMIT 10;


-- ─── Q4: REGIONAL PERFORMANCE ─────────────────────────────────
SELECT
    region,
    ROUND(SUM(sales), 2)                             AS total_sales,
    ROUND(SUM(profit), 2)                            AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2)        AS margin_pct,
    COUNT(DISTINCT order_id)                         AS orders
FROM superstore_sales
GROUP BY region
ORDER BY total_profit DESC;


-- ─── Q5: MONTHLY SALES TREND ──────────────────────────────────
SELECT
    DATE_FORMAT(order_date, '%Y-%m')                 AS year_month,
    ROUND(SUM(sales), 2)                             AS monthly_sales,
    ROUND(SUM(profit), 2)                            AS monthly_profit,
    COUNT(DISTINCT order_id)                         AS orders
FROM superstore_sales
GROUP BY year_month
ORDER BY year_month;


-- ─── Q6: IMPACT OF DISCOUNTS ON PROFIT ───────────────────────
SELECT
    CASE
        WHEN discount = 0          THEN '0% - No Discount'
        WHEN discount <= 0.10      THEN '1-10%'
        WHEN discount <= 0.20      THEN '11-20%'
        WHEN discount <= 0.30      THEN '21-30%'
        ELSE '31%+'
    END                                              AS discount_band,
    COUNT(*)                                          AS orders,
    ROUND(AVG(profit), 2)                            AS avg_profit,
    ROUND(SUM(profit), 2)                            AS total_profit,
    ROUND(AVG(sales), 2)                             AS avg_sales
FROM superstore_sales
GROUP BY discount_band
ORDER BY discount_band;


-- ─── Q7: CUSTOMER SEGMENT ANALYSIS ───────────────────────────
SELECT
    segment,
    ROUND(SUM(sales), 2)                             AS total_sales,
    ROUND(SUM(profit), 2)                            AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2)        AS margin_pct,
    COUNT(DISTINCT order_id)                         AS orders,
    ROUND(AVG(sales), 2)                             AS avg_order_value
FROM superstore_sales
GROUP BY segment
ORDER BY total_sales DESC;


-- ─── Q8: LOSS-MAKING ORDERS (HIGH DISCOUNT) ──────────────────
SELECT
    order_id,
    category,
    sub_category,
    region,
    ROUND(sales, 2)   AS sales,
    discount,
    ROUND(profit, 2)  AS profit
FROM superstore_sales
WHERE profit < 0
  AND discount >= 0.3
ORDER BY profit ASC
LIMIT 20;


-- ─── Q9: SHIP MODE PERFORMANCE ───────────────────────────────
SELECT
    ship_mode,
    COUNT(*)                                          AS order_count,
    ROUND(SUM(sales), 2)                             AS total_sales,
    ROUND(AVG(sales), 2)                             AS avg_sale,
    ROUND(SUM(profit) / SUM(sales) * 100, 2)        AS margin_pct
FROM superstore_sales
GROUP BY ship_mode
ORDER BY total_sales DESC;


-- ─── Q10: TOP 5 STATES BY REVENUE ────────────────────────────
SELECT
    state,
    region,
    ROUND(SUM(sales), 2)                             AS total_sales,
    ROUND(SUM(profit), 2)                            AS total_profit
FROM superstore_sales
GROUP BY state, region
ORDER BY total_sales DESC
LIMIT 5;


-- ─── Q11: YEAR-OVER-YEAR GROWTH ───────────────────────────────
SELECT
    YEAR(order_date)                                 AS year,
    ROUND(SUM(sales), 2)                             AS annual_sales,
    ROUND(SUM(profit), 2)                            AS annual_profit,
    ROUND(
        (SUM(sales) - LAG(SUM(sales)) OVER (ORDER BY YEAR(order_date)))
        / LAG(SUM(sales)) OVER (ORDER BY YEAR(order_date)) * 100
    , 2)                                             AS yoy_growth_pct
FROM superstore_sales
GROUP BY year;
