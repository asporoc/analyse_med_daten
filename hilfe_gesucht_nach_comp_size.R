library(ggplot2)
library(dplyr)

# Example data generation (replace with your actual dataset)
# df <- your_actual_dataset

# Example data (uncomment the following lines and replace with your data)
help_seeked <- data$seek_help
company_size <- data$no_employees
df <- data.frame(help_seeked, company_size)

# Create the bar plot using ggplot2
ggplot(df, aes(x = company_size, fill = help_seeked)) +
  geom_bar(position = "dodge", color = "black") +
  labs(x = "Company Size", y = "Count", 
       title = "Help Seeked by Company Size",
       fill = "Help Seeked") +
  theme_minimal()


# Calculate percentages
summary_df <- data %>%
  group_by(no_employees, seek_help) %>%
  summarise(count = n()) %>%
  group_by(no_employees) %>%
  mutate(percentage = (count / sum(count)) * 100) %>%
  ungroup()



# Print summary_df to check the structure if needed
print(summary_df)

# Create the bar plot using ggplot2
ggplot(summary_df, aes(x = no_employees, y = percentage, fill = seek_help)) +
  geom_bar(stat = "identity", position = "dodge", color = "black") +
  geom_text(aes(label = sprintf("%.1f%%", percentage)), 
            position = position_dodge(width = 0.9), 
            vjust = -0.5, 
            size = 3.5) +  # Adjust size as needed
  labs(x = "Company Size", y = "Percentage of Total", 
       title = "Percentage of Help Seeked by Company Size",
       fill = "Help Seeked") +
  theme_minimal()

