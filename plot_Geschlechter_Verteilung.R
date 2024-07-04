gender_counts <- table(new_data$Gender)
gender_percentages <- prop.table(gender_counts) * 100

# Plotting the distribution
bp <- barplot(gender_percentages, main = "Verteilung Geschlechter", xlab = "Geschlecht", ylab = "PProzent (%)", col = "skyblue", ylim = c(0, max(gender_percentages) + 10))

# Add labels above bars
text(x = bp, y = gender_percentages + 1, labels = paste0(round(gender_percentages, 1), "%"), pos = 3, col = "black")
