# Load necessary libraries
library(ggplot2)
library(reshape2)

# Create contingency table
contingency_table <- table(data_clean$leave, data_clean$work_interfere)

# Perform the chi-squared test
chisq_test_result <- chisq.test(contingency_table)

# Print the results
print(chisq_test_result)

# Convert contingency table to a data frame for plotting
df <- as.data.frame(as.table(contingency_table))

# Define custom labels for the legend
custom_labels <- c("Never", "Sometimes", "Often", "Always")

# Plot the data with custom legend labels
ggplot(df, aes(Var1, Freq, fill = Var2)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(x = "Leave", y = "Frequency", fill = "Work Interfere") +
  ggtitle("Contingency Table of Leave and Work Interfere") +
  scale_fill_manual(values = c("blue", "red", "green", "purple"), labels = custom_labels)

