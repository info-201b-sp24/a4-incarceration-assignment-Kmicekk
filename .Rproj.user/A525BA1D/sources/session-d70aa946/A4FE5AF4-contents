average_incarceration_rate <- inc_data %>%
  group_by(year) %>%
  summarise(average_rate = mean(total_pop, na.rm = TRUE))

print(average_incarceration_rate)