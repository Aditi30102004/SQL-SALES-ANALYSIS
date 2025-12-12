import sqlite3
import pandas as pd

conn = sqlite3.connect('data/superstore_sales.db')

queries = [
    '01_revenue_by_category.sql',
    '02_top_products.sql',
    '03_monthly_trends.sql',
    '04_rfm_analysis.sql',
    '05_discount_profit.sql'
]

for q in queries:
    with open(f'queries/{q}') as f:
        sql = f.read()
    df = pd.read_sql_query(sql, conn)
    print(f"\n=== {q} ===")
    print(df.head().to_string(index=False))

conn.close()
