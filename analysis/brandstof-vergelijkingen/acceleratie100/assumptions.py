import pandas as pd
import matplotlib.pyplot as plt
import scipy.stats as stats

df = pd.read_csv("analysis\\brandstof-vergelijkingen\\acceleratie100\\autotests_trans_acc.csv",
                 encoding='latin1',
                 sep = ";",
                 index_col = 0)

def descriptives():
    print(df["brandstof"].describe())
    print()
    print(df["acceleratie100"].describe())
    print()

def assumptions():
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
    stats.probplot(df["acceleratie100"], plot = plt, rvalue = True)
    ax.set
    plt.show()

    # homogeneity/equality of variances
    print(stats.levene(df["acceleratie100"][df["brandstof"] == "benzine"],
                 df["acceleratie100"][df["brandstof"] == "hybride"],
                 df["acceleratie100"][df["brandstof"] == "elektrisch"]
                 )
    )
    print()
    