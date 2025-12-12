-- Region x Category revenue (no date column available)
SELECT 
    Region,
    Category,
    ROUND(SUM(Sales), 0) AS revenue,
    COUNT(*) AS order_count,
    ROUND(AVG(Sales), 2) AS avg_order_value
FROM orders
GROUP BY Region, Category
ORDER BY revenue DESC;
