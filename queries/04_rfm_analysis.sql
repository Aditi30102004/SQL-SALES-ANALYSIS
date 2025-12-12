-- Customer-style segments: Segment x Region revenue and margin
SELECT 
    Segment,
    Region,
    ROUND(SUM(Sales), 0) AS revenue,
    ROUND(SUM(Profit), 0) AS profit,
    ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0), 4) AS profit_margin,
    COUNT(*) AS order_count
FROM orders
GROUP BY Segment, Region
ORDER BY revenue DESC;
