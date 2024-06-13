library(dplyr)
library(ggplot2)

country_counts <- data %>%
  count(Country)

# Print the counts
print(country_counts)

country_distribution <- ggplot(country_counts, aes(x = Country, y = n)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Count of Occurrences by Country",
       x = "Country",
       y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggsave(file.path("plots", "country_distribution.png"), plot = age_boxplot)