# Assuming 'data' is your dataset with 'gender' and 'no_employees' columns

# Convert gender to factor if it's not already
data$gender <- factor(data$Gender)

# Ensure 'no_employees' is ordered as desired
data$no_employees <- factor(data$no_employees, levels = c("1-5", "6-25", "26-100", "100-500", "500-1000", "More than 1000"))

# Create a table of counts for gender by company size
gender_by_size <- table(data$Gender, data$no_employees)

# Calculate percentages
gender_percentages <- prop.table(gender_by_size, margin = 2) * 100

# Print the percentages
print(gender_percentages)

# Plotting the distribution
barplot(gender_percentages, beside = TRUE, main = "Gender Distribution by Company Size",
        xlab = "Company Size", ylab = "Percent (%)", col = c("skyblue", "pink","green"),
        legend = rownames(gender_percentages))


