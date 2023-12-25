import pandas as pd
import numpy as np

df = pd.read_csv("general\\csv\\autotests_import.csv",
                 encoding='latin1',
                 sep = ";",
                 index_col = 0)

df["merkmodel"] = df["merk"] + " " + df["model"]

df.insert(0, "merkmodel", df.pop("merkmodel"))
df.insert(4, "continent", df.pop("continent"))

df.to_csv("general\\csv\\autotests.csv",
          sep=";"
          )