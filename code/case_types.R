# plot case types

library(tidyverse)
library(lubridate)

case_type <- 
  read_csv("covid-19-my-cases-types.csv") %>% 
  mutate(date = dmy(date))
  


# tabligh
tabligh <- 
  case_type %>% 
  select(date, total = tabligh) %>% 
  mutate(total = as.numeric(total),
         new = total - lag(total))

ggplot(tabligh, aes(date, new)) +
  geom_point()



# import
import <- 
  case_type %>% 
  select(date, total = import) %>% 
  mutate(total = as.numeric(total),
         new = total - lag(total))

ggplot(import, aes(date, new)) +
  geom_point()
