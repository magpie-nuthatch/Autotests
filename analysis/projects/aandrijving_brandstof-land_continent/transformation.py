import pandas as pd
import numpy as np

df = pd.read_csv("general\\csv\\autotests_trans-initial.csv",
                 encoding='latin1',
                 sep = ";",
                 index_col = 0)