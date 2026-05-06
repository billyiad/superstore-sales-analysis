-- =========================================
-- SUPERSTORE SALES ANALYSIS
-- =========================================

-- 1. Overall business performance
SELECT 
  SUM("Sales") AS total_sales, 
  SUM("Profit") AS total_profit,
  COUNT(DISTINCT "Order ID") AS total_orders,
  ROUND(
    (SUM("Profit") / NULLIF(COUNT(DISTINCT "Order ID"),0))::NUMERIC,
    3
  ) AS profit_per_order,
  ROUND(AVG("Profit")::NUMERIC, 3) AS avg_profit_per_item
FROM superstore;

-- 2. Profit by category
SELECT
  "Category",
  SUM("Sales") AS total_sales,
  SUM("Profit") AS total_profit
FROM superstore
GROUP BY "Category"
ORDER BY total_profit DESC;

SELECT
  "Category",
  ROUND(
    (SUM("Profit") / NULLIF(SUM("Sales"),0))::NUMERIC,
    3
  ) AS profit_margin
FROM superstore
GROUP BY "Category"
ORDER BY profit_margin DESC;

-- 4. Sub-categories with negative profit
SELECT
  "Sub-Category",
  SUM("Profit") AS total_loss
FROM superstore
GROUP BY "Sub-Category"
HAVING SUM("Profit") < 0
ORDER BY total_loss ASC;

-- 5. Products generating loss
SELECT
  "Product Name",
  SUM("Quantity") AS total_quantity,
  SUM("Sales") AS total_sales,
  SUM("Profit") AS total_profit
FROM superstore
GROUP BY "Product Name"
HAVING SUM("Profit") < 0
ORDER BY total_profit ASC;

-- 6. Discount vs profit relationship
SELECT
  ROUND("Discount"::NUMERIC, 2) AS discount_level,
  SUM("Profit") AS total_profit
FROM superstore
GROUP BY discount_level
ORDER BY discount_level;

-- 7. Profit by customer segment
SELECT
  "Segment",
  SUM("Profit") AS total_profit
FROM superstore
GROUP BY "Segment"
ORDER BY total_profit DESC;

-- 8. Monthly sales & profit trend
SELECT
  TO_CHAR("Order Date", 'YYYY-MM') AS month,
  SUM("Sales") AS total_sales,
  SUM("Profit") AS total_profit
FROM superstore
GROUP BY month
ORDER BY month;
