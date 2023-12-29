library(tidyverse)
library(epitools) # Loads epitools package for odds ratio calculation

options(scipen = 999)
setwd("~/T99/Autotests")

df <- read.csv(
  "general\\csv\\transformed\\autotests_trans-aandrijving_brandstof.csv",
  sep = ";")

summary(df)
nrow(df)
ncol(df)

continent <- df$continent
land <- df$land

brandstof <- df$brandstof
aandrijving <- df$aandrijving

barplot <- plot(x = continent, type = h)

barplot
