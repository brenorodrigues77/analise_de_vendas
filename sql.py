import pandas as pd
import psycopg2
from banco import db_config

csv_file_path = "./files/df_format.csv"

table_name = 'dados.produtos_pesquisa'

df = pd.read_csv(csv_file_path)

conn = psycopg2.connect(**db_config)
cursor = conn.cursor()

for idx, row in df.iterrows():
    columns = ','.join(df.columns)
    values = ','.join(['%s'] * len(row))
    sql = f"INSERT INTO {table_name} ({columns}) VALUES ({values})"
    print(f"inserindo linha: {idx + 1}: {tuple(row)}")
    cursor.execute(sql, tuple(row))

print(f"Total de linhas inseridas: {len(df)}")    

conn.commit()
cursor.close()
conn.close()

