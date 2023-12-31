library(tidyverse)
library(dplyr)

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
           linewidth = 0.5,
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
           linewidth = 0.5,
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
           linewidth = 0.5,
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
           linewidth = 0.5,
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

pivot_sample <- df %>%
  pivot_longer(cols = c("aandrijving"),
               names_to = "type",
               values_to = "aandrijving_continent")

barchart_count_aandrijving_continent <- ggplot(data = pivot_sample,
                                             aes(x = aandrijving_continent,
                                                 fill = continent)
) +
  geom_bar(position = "dodge", 
           stat = "count",
           color = "black",
           linewidth = 0.25,
           lineend = "square",
           na.rm = TRUE,
           show.legend = TRUE
) +
  labs(title = "Hoeveelheid geteste auto's per type aandrijving en continent",
       subtitle = "Auto's getest in tijdschriften, 2022 en 2023",
       caption = "AutoVisie, 2022/2023",
       x = "Type aandrijving",
       y = "Hoeveelheid geteste auto's")

barchart_count_aandrijving_continent

pivot_sample <- df %>%
  pivot_longer(cols = c("brandstof"),
               names_to = "type",
               values_to = "brandstof_continent")

barchart_count_brandstof_continent <- ggplot(data = pivot_sample,
                                               aes(x = brandstof_continent,
                                                   fill = continent)
) +
  geom_bar(position = "dodge", 
           stat = "count",
           color = "black",
           linewidth = 0.25,
           lineend = "square",
           na.rm = TRUE,
           show.legend = TRUE
  ) +
  labs(title = "Hoeveelheid geteste auto's per type brandstof en continent",
       subtitle = "Auto's getest in tijdschriften, 2022 en 2023",
       caption = "AutoVisie, 2022/2023",
       x = "Type brandstof",
       y = "Hoeveelheid geteste auto's")

barchart_count_brandstof_continent