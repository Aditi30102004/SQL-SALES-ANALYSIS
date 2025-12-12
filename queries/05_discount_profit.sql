-- Basic stats needed for Discount vs Profit correlation
SELECT
    COUNT(*) AS n_rows,
    ROUND(AVG(Discount), 4) AS avg_discount,
    ROUND(AVG(Profit), 2) AS avg_profit,
    ROUND(AVG(Profit / NULLIF(Sales, 0)), 4) AS avg_margin
FROM orders
WHERE Sales > 0;
