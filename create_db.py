import pandas as pd
import sqlite3

df = pd.read_csv('data/superstore_sales_clean.csv')
conn = sqlite3.connect('data/superstore_sales.db')
df.to_sql('orders', conn, if_exists='replace', index=False)
conn.close()
print(f"✅ DB created! {len(df)} rows loaded")
