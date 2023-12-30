import pandas as pd
import numpy as np
from dataframe_descriptives_normality import descriptives 

df = pd.read_csv("general\\csv\\transformed\\autotests_trans-initial.csv",
                 encoding='latin1',
                 sep = ";",
                 index_col = 0)

descriptives(df, 5, 15)

df_trans = df

df_trans.drop(df[df["continent"].isin(["Overig", "overig"])].index,
              inplace = True)

df_trans.drop(df[df["brandstof"].isin(["Alternatief", "alternatief"])].index,
              inplace = True)

df_trans.dropna(subset = ["continent", "land", "brandstof", "aandrijving"], 
                how = "any",
                inplace = True)

descriptives(df_trans, 5, 15)

df_trans.to_csv("general\\csv\\transformed\\autotests_trans-aandrijving_brandstof.csv",
          sep=";")