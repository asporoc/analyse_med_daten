library(ggplot2)
library(dplyr)  # For data manipulation
library(tidyr)  # For data reshaping


# Ensure all levels are included
data$Gender <- factor(data$Gender, levels = c("male", "female", "other"))

# Calculate counts by Gender and mental_health_consequence
counts <- data %>%
  count(Gender, mental_health_interview) %>%
  group_by(Gender) %>%
  mutate(percentage = n / sum(n) * 100)  # Calculate percentage within each Gender

# Plot using ggplot2
ggplot(counts, aes(x = Gender, y = percentage, fill = mental_health_interview)) +
  geom_bar(stat = "identity", position = "stack") +
  labs(title = "Would you bring up a mental health issue with a potential employer in an interview?",
       x = "Geschlecht",
       y = "Prozent",
       fill = "Would you discuss mental health issue in interview") +
  scale_fill_manual(values = c("Yes" = "skyblue", "No" = "lightgreen", "Maybe" = "pink")) +  # Adjust colors as needed
  theme_minimal(base_size = 12)  # Adjust base font size as needed

