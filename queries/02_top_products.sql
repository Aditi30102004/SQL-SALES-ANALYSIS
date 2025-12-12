-- Top 10 sub-categories by revenue
SELECT 
    "Sub-Category" AS sub_category,
    Category,
    ROUND(SUM(Sales), 0) AS revenue,
    COUNT(*) AS order_count,
    ROUND(AVG(Sales), 2) AS avg_order_value
FROM orders
GROUP BY "Sub-Category", Category
ORDER BY revenue DESC
LIMIT 10;
