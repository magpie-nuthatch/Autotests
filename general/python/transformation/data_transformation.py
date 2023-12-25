import pandas as pd
import numpy as np

df = pd.read_csv("general\\csv\\autotests.csv",
                 encoding='latin1',
                 sep = ";",
                 index_col = 0)

for index, row in df.iterrows():
    if row["brandstof"] in ["benzine", "hybride", "elektrisch"]:
        pass
    else:
        df.replace(row["brandstof"], np.nan)

for index, row in df.iterrows():
    if row["continent"] in ["Overig"]:
        df.replace(row["continent"], np.nan)
    else:
        pass

df = df.dropna(subset = ["continent", "topsnelheid", "acceleratie100", "brandstof", "maxvermogen", "maxkoppel", "massaleeg"], 
               how = "any"
               )

df.to_csv("general\\csv\\transformed\\autotests_trans.csv",
          sep=";"
          )