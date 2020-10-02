# state cases

library(tidyverse)
library(lubridate)
library(extrafont)

states <- 
  read_csv("covid-19-my-states-cases.csv") %>% 
  mutate(date = dmy(date),
         `wp-putrajaya` = as.numeric(`wp-putrajaya`)) %>% 
  pivot_longer(cols = -date,
               names_to = "state",
               values_to = "cases") %>% 
  # use post-MCO data
  filter(date >= ymd("2020-3-18")) %>% 
  arrange(state, date) %>% 
  group_by(state) %>% 
  mutate(newcase = cases - lag(cases)) %>% 
  ungroup() %>% 
  mutate(state = str_replace(state, "-", " "),
         state = str_replace(state, "-", " "),
         state = str_to_title(state),
         state = str_replace(state, "Wp", "WP"),
         state = as.factor(state),
         state = fct_reorder2(state, date, cases),
         state = fct_rev(state))


p_cases_state <- 
  ggplot(states %>% filter(!is.na(newcase)), 
       aes(date, state)) +
  geom_tile(aes(fill = newcase), colour = "white") +
  scale_fill_viridis_c(trans = "log1p", 
                       option = "D",
                       name = "New cases") +
  scale_y_discrete(position = "right") +
  coord_cartesian(expand = FALSE) +
  labs(title = "Daily new COVID-19 cases per state",
       subtitle = "The number of new confirmed cases in each state of Malaysia since the Movement Control Order on 18 March 2020.\nStates are sorted in descending order of total confirmed cases. Note the logarithmic colour scale.",
       caption = paste0("Data compiled by github.com/ynshung/covid-19-malaysia from multiple official sources (see website for a full list). Last updated ", max(states$date), ".")) +
  theme_minimal() +
  theme(panel.spacing = unit(0, "cm"),
        axis.line = element_blank(),
        axis.ticks.y = element_blank(),
        axis.ticks.x = element_line(),
        axis.title = element_blank(),
        axis.text = element_text(size = 9, colour = "black"),
        legend.position = "right",
        legend.title = element_text(size = 10),
        text = element_text(family = "CMU Bright"),
        plot.title = element_text(size = 11, 
                                  family = "CMU Serif", face = "bold"),
        plot.subtitle = element_text(size = 9),
        plot.caption = element_text(size = 7, hjust = -0.95),
        # plot.margin = margin(1, 12, 1, 4),
        panel.grid.minor.y = element_blank(),
        panel.grid = element_line(colour = "white"),
        strip.text = element_text(size = 10, hjust = 1, face = "bold.italic"),
        plot.background = element_rect(fill = "#f8f2e4"))
p_cases_state
ggsave("figs/new_cases_states.png",
       p_cases_state,
       width = 7, height = 3, units = "in",
       dpi = 300)
