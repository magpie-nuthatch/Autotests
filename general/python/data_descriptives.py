import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("general\\csv\\autotests_trans.csv",
                 encoding='latin1',
                 sep = ";",
                 index_col = 0)

print(df.head(), 
      df.info()
      )
print()

print(df["acceleratie100"].describe(), 
      df["massaleeg"].describe(), 
      df["maxkoppel"].describe(), 
      df["maxvermogen"].describe(), 
      df["topsnelheid"].describe()
      )
print()

scheefheid = df.skew(numeric_only = True)
kurtosis = df.kurt(numeric_only = True)

print(f"Scheefheid van variabelen: {scheefheid}")
print()
print(f"Kurtosis van variabelen: {kurtosis}")
print()

df.plot(kind = "hist", 
        y = "acceleratie100", 
        bins = 10, 
        title = "Histogram acceleratietijd 0-100 km/h in s"
        )
plt.show()

df.plot(kind = "hist", 
        y = "massaleeg", 
        bins = 10, 
        title = "Histogram leeggewicht in kg"
        )
plt.show()

df.plot(kind = "hist", 
        y = "maxkoppel", 
        bins = 20, 
        title = "Histogram maximale koppel in Nm"
        )
plt.show()

df.plot(kind = "hist", 
        y = "maxvermogen", 
        bins = 20, 
        title = "Histogram maximaal vermogen in kW"
        )
plt.show()

df.plot(kind = "hist", 
        y = "topsnelheid", 
        bins = 15, 
        title = "Histogram topsnelheid in km/h"
        )
plt.show()