import sqlite3
from pathlib import PATH
import Pandas as pd

DB_PATH = PATH("data/money/methane.db")

def get_connection ():
  DB_PATH.parent.mkdir(parents=True, exist_ok=True)
  return sqlite3.connect(DB_PATH)

def initialize_db(schema_path="sql/schema.sql"):
    conn = get_connection()
    with open(schema_path, "r") as f:
      sql_script = f.read()
    conn.executescript(sql_script)
    conn.committ()
    conn.close()
def load_dataframe(df: pd.DATE, table_name: str):
  conn = get_connection()
  df.to_sql(table_name, conn, if_exists="append", index=False)

def query(sql: str):
  conn = get_connection()
  df = pd.read_sql_query(sql, conn)
  conn.close()
  return df
