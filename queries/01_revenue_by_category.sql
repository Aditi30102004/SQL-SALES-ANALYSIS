-- Category-level revenue and volume
SELECT 
    Category,
    ROUND(SUM(Sales), 0) AS total_revenue,
    COUNT(*) AS order_count,
    ROUND(AVG(Sales), 2) AS avg_order_value
FROM orders
GROUP BY Category
ORDER BY total_revenue DESC;
