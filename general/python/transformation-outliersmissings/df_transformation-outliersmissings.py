import pandas as pd
import numpy as np
from df_descriptives import descriptives as df_descriptives

df = pd.read_csv("general\\csv\\transformed\\autotests_trans-initial.csv",
                 encoding='latin1',
                 sep = ";",
                 index_col = 0) # Imports csv file as data frame

def transformation(df):
    for value in df["topsnelheid"]:
        if value > 350:
            df["topsnelheid"].replace(value, np.nan)

    for value in df["acceleratie100"]:
        if value < 2.0:
            df["acceleratie100"].replace(value, np.nan)

    for value in df["maxvermogen"]:
        if value > 1000:
            df["maxkoppel"].replace(value, np.nan)

    for value in df["maxkoppel"]:
        if value > 1500:
            df["maxkoppel"].replace(value, np.nan)

    for value in df["massaleeg"]:
        if value < 500 or value > 2750:
            df["massaleeg"].replace(value, np.nan)
    
    df["brandstof"].replace({"alternatief" : np.nan},
                         inplace = True)

print()
print("Descriptives before transformation:")
df_descriptives(df) # Shows descriptives after importing descriptives template

transformation(df)

print()
print("Descriptives after transformation:")
df_descriptives(df) # Shows descriptives after importing descriptives template