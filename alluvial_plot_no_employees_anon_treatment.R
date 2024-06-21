# Install the ggalluvial package if not already installed
install.packages("ggalluvial")

# Load necessary libraries
library(ggplot2)
library(ggalluvial)

data$no_employees <- factor(data$no_employees, levels = c('1-5', '6-25', '26-100', '100-500', '500-1000', 'More than 1000'))
# Create an alluvial plot
ggplot(data, aes(axis1 = data$no_employees, axis2 = data$anonymity, axis3 = data$treatment)) +
  geom_alluvium(aes(fill = data$no_employees), width = 0.1) +
  geom_stratum(width = 0.1) +
  geom_text(stat = "stratum", aes(label = after_stat(stratum))) +
  scale_x_discrete(limits = c("number of employees", "Anonymity", "Sought Treatment"), expand = c(.05, .05)) +
  labs(title = "Alluvial Plot",
       x = "Features",
       y = "Count") +
  theme_minimal()

