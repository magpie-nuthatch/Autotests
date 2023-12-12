import pandas as pd
import mysql.connector as sql

db_connection = sql.connect(
  host = "localhost",
  user = "default",
  password = "default",
  database = "autotestsV3"
)

df = pd.read_sql("SELECT * FROM autotests_full", 
                 con = db_connection)
df.drop("auto_id", 
        axis = 1, 
        inplace = True)

print(df.head())

df.to_csv("general\\csv\\autovisie_import.csv",
          encoding='latin1',
          sep = ";"
          )