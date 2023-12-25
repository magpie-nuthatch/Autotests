import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy import URL

# CONNECT TO NEW SQL DATABASE THROUGH SQL ALCHEMY
url_object = URL.create(
   "mysql+pymysql",
   host = "localhost",
   username = "default",
   password = "default",
   database = "autotests",
   )

engine = create_engine(
   url_object
   )

# RACE
df = pd.read_sql("SELECT * FROM autotests_full", 
                 con = engine
                 )

df.to_csv("general\\csv\\autotests_import.csv",
          index = False,
          sep = ";"
          )