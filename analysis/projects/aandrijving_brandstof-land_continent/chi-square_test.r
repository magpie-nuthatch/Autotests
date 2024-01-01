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

chisquare_oddsratio <- function(x_var, x_var_name, y_var, y_var_name, sim_p_bool, sim_p_num, conf, corr_bool, verb) {
  library(epitools)
  var_name <- function(var) {
    deparse(substitute(var))
  }
  print("", quote = FALSE)
  print(paste0("Chi-squared test for variables ", x_var_name, " (x_var) and ", y_var_name, " (y_var):"), quote = FALSE)
  print(
    chisq.test(x = x_var,
    y = y_var,
    simulate.p.value = sim_p_bool,
    B = sim_p_num))
  print("", quote = FALSE)
  print(paste0("Odds ratio calculation for variables ", x_var_name, " (x_var) and ", y_var_name, " (y_var):"), quote = FALSE)
  print(
    oddsratio(x = x_var,
    y = y_var,
    conf.level = conf,
    correction = corr_bool,
    verbose = verb))
}

print(chisquare_oddsratio(continent, "continent", brandstof, "brandstof", TRUE, 10000, 0.95, FALSE, FALSE))
print(chisquare_oddsratio(continent, "continent", aandrijving, "aandrijving", TRUE, 10000, 0.95, FALSE, FALSE))