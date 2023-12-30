library(tidyverse)
library(epitools) # Loads epitools package for odds ratio calculation

options(scipen = 999)
setwd("~/T99/Autotests")

df <- read.csv(
  "general\\csv\\transformed\\autotests_trans-aandrijving_brandstof.csv",
  sep = ";")

continent <- df$continent
land <- df$land

brandstof <- df$brandstof
aandrijving <- df$aandrijving

chi_square <- chisq.test(x = continent,
                         y = brandstof,
                         simulate.p.value = TRUE, # Turns Monte Carlo simulation off
                         B = 10000 # Sets number of simulations if Monte Carlo simulation is turned on
)

chisquare_or <- oddsratio(x = continent,
                          y = brandstof,
                          conf.level = 0.95, # Set confidence interval level
                          correction = FALSE, # Turns on Yate's continuity correction
                          verbose = FALSE # Makes results more detailed)
)

chi_square
chisquare_or