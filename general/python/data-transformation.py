import pandas as pd
import numpy as np

df = pd.read_csv("general\\csv\\autovisie_import.csv",
                 encoding='latin1',
                 sep = ";",
                 index_col = 0)

for index, row in df.iterrows():
    if row["brandstof"] in ["benzine", "hybride", "elektrisch"]:
        pass
    else:
        print(f"Brandstof {index} is niet benzine, hybride of elektrisch")
        df.replace(row["brandstof"], np.nan)
        pass

df["continent"] = None

for index, row in df.iterrows():
    if row["land"] in ["China", "Korea", "Japan"]:
        df.loc[index, "continent"] = "Azie"
    elif row["land"] in ["Duitsland", "Frankrijk", "Italie", "Spanje", "Nederland", "VK", "Tsjechie", "Kroatie", "Roemenie", "Zweden"]:
        df.loc[index, "continent"] = "Europa"
    else:
        pass

df = df.dropna(subset = ["jaar", "land", "continent", "topsnelheid", "acceleratie100", "brandstof", "maxvermogen", "maxkoppel", "massaleeg"], 
               how = "any"
               )

print(df.info(), 
      df.head()
      )

df.to_csv("general\\csv\\autotests_trans.csv",
          sep=";"
          )