average_incarceration_rate <- inc_data %>%
  group_by(year) %>%
  summarise(average_rate = mean(total_pop, na.rm = TRUE))

average_incarceration_rate

high_aapi_rate <- inc_data %>%
  group_by(state) %>%
  summarise(high_rate <- max(aapi_pop_15to64, na.rm = T))

high_aapi_rate

high_black_rate <- inc_data %>%
  group_by(state) %>%
  summarise(high_rate <- max(black_pop_15to64, na.rm = T))

high_black_rate