library(dplyr)
data <- data %>%
  filter(Age >= 16 & Age <= 80)

library(stringr)


data <- data %>%
  mutate(Gender = str_to_lower(Gender)) %>%
  mutate(Gender = case_when(
    Gender %in% c("f", "female","woman") ~ "female",
    Gender %in% c("m", "male", "man") ~ "male",
    TRUE ~ "other"
  ))