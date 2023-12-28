import pandas as pd # Imports pandas library
import numpy as np # Imports numpy library
from df_descriptives import descriptives as df_descriptives

df = pd.read_csv("general\\csv\\transformed\\autotests_trans-initial.csv",
                 encoding='latin1',
                 sep = ";",
                 index_col = 0) # Imports csv file as data frame

print()
print("Descriptives before transformation:")
df_descriptives(df) # Shows descriptives after importing descriptives template

for value in df["topsnelheid"]:
    if value > 300:
        df["topsnelheid"].replace(value, np.nan) # Removes outliers

for value in df["acceleratie100"]:
    if value < 2.0:
        df["acceleratie100"].replace(value, np.nan) # Removes outliers

for value in df["maxkoppel"]:
    if value > 1000:
        df["maxkoppel"].replace(value, np.nan) # Removes outliers

for value in df["massaleeg"]:
    if value < 1000:
        df["massaleeg"].replace(value, np.nan) # Removes outliers

df.dropna(subset = ["topsnelheid", "acceleratie100", "maxkoppel", "massaleeg"], 
          how = "any", 
          inplace = True) # Removes rows with missings

df["brandstof"].replace({"diesel" : np.nan,
                         "waterstof" : np.nan},
                         inplace = True) # Turns multiple specific individual values into missings

df.drop(df[df["land"].isin(["China", 
                            "Japan", 
                            "Korea"])].index,
        inplace = True) # Removes rows with multiple specific values in specific column

print()
print("Descriptives after transformation:")
df_descriptives(df) # Shows descriptives after importing descriptives template