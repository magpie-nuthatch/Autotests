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

chisquare_brandstof <- chisq.test(x = continent,
                                  y = brandstof,
                                  simulate.p.value = FALSE, # Turns Monte Carlo simulation off
                                  B = 10000 # Sets number of simulations if Monte Carlo simulation is turned on
)

oddsratio_brandstof <- oddsratio(x = continent,
                                 y = brandstof,
                                 conf.level = 0.95, # Set confidence interval level
                                 correction = FALSE, # Turns on Yate's continuity correction
                                 verbose = FALSE # Makes results more detailed)
)

chisquare_aandrijving <- chisq.test(x = continent,
                                  y = aandrijving,
                                  simulate.p.value = FALSE, # Turns Monte Carlo simulation off
                                  B = 10000 # Sets number of simulations if Monte Carlo simulation is turned on
)

oddsratio_aandrijving <- oddsratio(x = continent,
                                 y = aandrijving,
                                 conf.level = 0.95, # Set confidence interval level
                                 correction = FALSE, # Turns on Yate's continuity correction
                                 verbose = FALSE # Makes results more detailed)
)

chisquare_brandstof
oddsratio_brandstof

chisquare_aandrijving
oddsratio_aandrijving