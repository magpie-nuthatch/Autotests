import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import scipy.stats as stats

df = pd.read_csv("general\\csv_general\\autotests_trans.csv",
                 encoding='latin1',
                 sep = ";",
                 index_col = 0)

def para_tests():
    # normality, mathematical
    print(stats.normaltest(df["acceleratie100"][df["brandstof"] == "benzine"]),
          stats.normaltest(df["acceleratie100"][df["brandstof"] == "hybride"]),
          stats.normaltest(df["acceleratie100"][df["brandstof"] == "elektrisch"]),
          stats.normaltest(df["acceleratie100"])
          )
    print()

    # normality, visual
    fig = plt.figure(figsize = (10, 10))
    ax = fig.add_subplot(111)
    stats.probplot(df["acceleratie100"],
                   plot = plt,
                   rvalue = True
                   )
    ax.set
    plt.show()

    # homogeneity/equality of variances
    print(stats.levene(df["acceleratie100"][df["brandstof"] == "benzine"],
                 df["acceleratie100"][df["brandstof"] == "hybride"],
                 df["acceleratie100"][df["brandstof"] == "elektrisch"]
                 )
    )
    df.plot(kind = "hist",
            y = "acceleratie100",
            bins = 15,
            title = "Histogram acceleratietijd 0-100 km/h in s"
            )
    plt.show()

print("Eerste ronde parametrische toetsen")
para_tests()
print()

# outliers verwijderen
for varwaarde in df["acceleratie100"]:
    if varwaarde > 15:
        df.loc[df["acceleratie100"] == varwaarde, :] = np.nan
        df.dropna(subset=["acceleratie100"], inplace = True)
    else:
        pass

print("Tweede ronde parametrische toetsen")
para_tests()
print()

print(df["acceleratie100"].describe())

df.to_csv("analysis\\brandstof-vergelijkingen\\acceleratie100\\autotests_trans_acc.csv",
          sep=";")