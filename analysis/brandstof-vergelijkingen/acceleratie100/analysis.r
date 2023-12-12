options(scipen = 999)

library(FSA)
library(tidyverse)

df <- read.csv("analysis\\brandstof-vergelijkingen\\acceleratie100\\autotests_trans_acc.csv",
               sep = ";")

brandstof <- df$brandstof
acceleratie100 <- df$acceleratie100

ggplot(df, aes(x = brandstof)) +
  geom_bar(fill = "pink", color = "maroon") +
  labs(title = "Geteste auto's per brandstof",
       x = "Brandstof", y = "Hoeveelheid"
       )

ggplot(data = df,
       aes(x = brandstof, y = acceleratie100)
       ) +
  geom_boxplot(fill = "pink", color = "maroon")

kruskal.test(acceleratie100 ~ brandstof,
             data = df
             )

brandstofFactor <- as.factor(brandstof)

dunnTest(acceleratie100 ~ brandstofFactor,
         data = df,
         method = "bh"
         )