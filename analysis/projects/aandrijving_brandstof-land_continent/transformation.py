import pandas as pd
import numpy as np

df = pd.read_csv("general\\csv\\transformed\\autotests_trans-initial.csv",
                 encoding='latin1',
                 sep = ";",
                 index_col = 0)

def descriptives(df):
    print()
    print(f"Information on columns in current dataframe:")
    print(df.info(verbose = True,
                  show_counts = True))

    for column in df:
        df_loop = df.dropna(subset = column)
        print()
        print(f"Descriptives for column {column}:")
        print(df_loop[column].describe())
        if df_loop[column].dtype == "object" and len(df_loop[column].unique()) < 30: # Displays all unique values for columns with less than 30 unique values
            unique_values = sorted(df_loop[column].unique())
            print()
            print(f"Unique values in column {column}:")
            for value in unique_values:
                print(value)
        print()

descriptives(df)

df_trans = df.dropna(subset = ["continent", "brandstof", "aandrijving"], 
                     how = "any")

descriptives(df_trans)

df_trans.to_csv("general\\csv\\transformed\\autotests_trans-aandrijving_brandstof.csv",
          sep=";")