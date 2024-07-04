library(ggplot2)
library(dplyr)  # For data manipulation
library(tidyr)  # For data reshaping


# Ensure all levels are included
data$Gender <- factor(data$Gender, levels = c("male", "female", "other"))

# Calculate counts by Gender and mental_health_consequence
counts <- data %>%
  count(Gender, coworkers) %>%
  group_by(Gender) %>%
  mutate(percentage = n / sum(n) * 100)  # Calculate percentage within each Gender

# Plot using ggplot2
ggplot(counts, aes(x = Gender, y = percentage, fill = coworkers)) +
  geom_bar(stat = "identity", position = "stack") +
  labs(title = "Would you be willing to discuss a mental health issue with your coworkers?",
       x = "Geschlecht",
       y = "Prozent",
       fill = "discuss with coworker") +
  scale_fill_manual(values = c("Yes" = "skyblue", "No" = "lightgreen", "Some of them" = "pink")) +  # Adjust colors as needed
  theme_minimal(base_size = 12)  # Adjust base font size as needed

