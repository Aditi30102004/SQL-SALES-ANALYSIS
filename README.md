# SQL Sales Analysis – Sample Superstore

SQL case study on the Sample Superstore dataset using SQLite.  
Goal: Recreate core EDA insights (categories, sub-categories, regions, segments, discounts) using only SQL.

## Dataset

- Source: SampleSuperstore.csv (13 columns: Ship Mode, Segment, Country, City, State, Postal Code, Region, Category, Sub-Category, Sales, Quantity, Discount, Profit).
- Rows loaded into SQLite: 9,993 (after reading CSV to `orders` table).

## SQL Questions Answered

1. **Which categories drive the most revenue?**  
   File: `queries/01_revenue_by_category.sql`  
   - Technology has the highest total revenue and the highest average order value.  
   - Office Supplies has the most orders but much lower ticket size.

2. **Which sub-categories are top performers?**  
   File: `queries/02_top_products.sql`  
   - Phones and Chairs are the biggest revenue drivers among sub-categories.  
   - Storage and Binders are strong within Office Supplies.

3. **How do regions and categories interact?**  
   File: `queries/03_monthly_trends.sql`  
   - West and East regions generate the most revenue in Technology and Furniture.  
   - Office Supplies contributes significant volume across all regions.

4. **Which customer segments are most valuable by region?**  
   File: `queries/04_rfm_analysis.sql`  
   - Consumer and Corporate segments in West/East regions generate the bulk of revenue and profit.  
   - Profit margins vary by segment–region combination.

5. **What is the basic relationship between discounts and profit?**  
   File: `queries/05_discount_profit.sql`  
   - The dataset shows average discount and average profit/margin across all orders.  
   - Results support the EDA insight that heavy discounting can hurt profitability.

## Project Structure

## How to Run

1. Create the SQLite database from the CSV
python create_db.py

2. Run all analysis queries and print top results
python run_queries.py


Requirements: Python 3, pandas, sqlite3 (built into Python).
