# district cases

library(tidyverse)
library(lubridate)

filenames <- list.files("districts", "*.csv", full.names = TRUE)
statenames <- names(read_csv("covid-19-my-states-cases.csv"))
districts <- 
  lapply(filenames, function(x) {
    out <- 
      read_csv(x) %>% 
      pivot_longer(cols = -date,
                   names_to = "district",
                   values_to = "cases") %>% 
      mutate(state = str_extract(x, str_c(statenames, collapse = "|")))
  })
districts <- 
  do.call(rbind, districts) %>% 
  mutate(date = dmy(date)) %>% 
  arrange(state, district, date) %>% 
  group_by(state, district) %>% 
  mutate(newcase = cases - lag(cases)) 


ggplot(districts, aes(date, district)) +
  facet_grid(state ~ ., scales = "free_y", space = "free_y") +
  geom_raster(aes(fill = cases)) +
  scale_fill_viridis_c(trans = "log1p") +
  coord_cartesian(expand = FALSE) +
  theme_classic() +
  theme(panel.spacing = unit(0, "cm"))


ggplot(districts, aes(date, cases)) +
  geom_line(aes(group = district)) 
