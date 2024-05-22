library(ggplot2)
library(dplyr)

inc_data2 <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/raw/main/us-jail-pop.csv")


inc_data2$year <- as.numeric(as.character(inc_data2$year))

jail_pop_comp <- inc_data2 %>%
  group_by(year) %>%
  summarise(black_jail_pop_sum = sum(black_jail_pop, na.rm = TRUE),
            white_jail_pop_sum = sum(white_jail_pop, na.rm = TRUE))

jail_compare <- ggplot(data = jail_pop_comp) +
  geom_line(aes(x = year, y = black_jail_pop_sum, color = "Black")) +
  geom_line(aes(x = year, y = white_jail_pop_sum, color = "White")) +
  labs(title = "Number of Black vs White incarcerated people over years", x = "Year",
       y = "Incarcerated Population", color = "Race") +
  scale_color_manual(values = c("Black" = "blue", "White" = "red"))

jail_compare

