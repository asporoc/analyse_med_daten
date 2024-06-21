# Install the psych package if not already installed
install.packages("psych")

# Load necessary library
library(psych)

# Sample dataframe with binary features

# Create a contingency table
contingency_table <- table(data$family_history, data$treatment)

# Calculate the Phi coefficient
phi_coefficient <- phi(contingency_table)

# Print the result
print(phi_coefficient)

# Perform Chi-squared test of independence
chi_squared_test <- chisq.test(contingency_table)

# Print the result
print(chi_squared_test)

