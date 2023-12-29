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

barchart_count_continent <- ggplot(data = df,
                                   aes(x = reorder(continent, continent,
                                                   function(x) - length(x)))
) + 
  geom_bar(color = "darkred",
           fill = "pink",
           linewidth = 1,
           lineend = "square",
           na.rm = TRUE,
           show.legend = FALSE
) +
  labs(title = "Hoeveelheid geteste auto's per continent",
       subtitle = "Auto's getest in tijdschriften, 2022 en 2023",
       caption = "AutoVisie, 2022/2023",
       x = "Continent",
       y = "Hoeveelheid geteste auto's",
)

barchart_count_land <- ggplot(data = df,
                              aes(x = reorder(land, land,
                                              function(x) - length(x)))
) + 
  geom_bar(color = "darkred",
           fill = "pink",
           linewidth = 1,
           lineend = "square",
           na.rm = TRUE,
           show.legend = FALSE
  ) +
  labs(title = "Hoeveelheid geteste auto's per land",
       subtitle = "Auto's getest in tijdschriften, 2022 en 2023",
       caption = "AutoVisie, 2022/2023",
       x = "Land",
       y = "Hoeveelheid geteste auto's",
  )

barchart_count_continent
barchart_count_land

barchart_count_brandstof <- ggplot(data = df,
                                   aes(x = reorder(brandstof, brandstof,
                                                   function(x) - length(x)))
) + 
  geom_bar(color = "darkblue",
           fill = "lightblue",
           linewidth = 1,
           lineend = "square",
           na.rm = TRUE,
           show.legend = FALSE
  ) +
  labs(title = "Hoeveelheid geteste auto's per type brandstof",
       subtitle = "Auto's getest in tijdschriften, 2022 en 2023",
       caption = "AutoVisie, 2022/2023",
       x = "Type brandstof",
       y = "Hoeveelheid geteste auto's",
  )

barchart_count_aandrijving <- ggplot(data = df,
                              aes(x = reorder(aandrijving, aandrijving,
                                              function(x) - length(x)))
) + 
  geom_bar(color = "darkblue",
           fill = "lightblue",
           linewidth = 1,
           lineend = "square",
           na.rm = TRUE,
           show.legend = FALSE
  ) +
  labs(title = "Hoeveelheid geteste auto's per type aandrijving",
       subtitle = "Auto's getest in tijdschriften, 2022 en 2023",
       caption = "AutoVisie, 2022/2023",
       x = "Type aandrijving",
       y = "Hoeveelheid geteste auto's",
  )

barchart_count_brandstof
barchart_count_aandrijving