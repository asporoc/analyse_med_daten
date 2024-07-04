# Install and load the mclust package if not already installed
# install.packages("mclust")
library(mclust)
# Example: Remove NaN values
data_clean <- data[, !(names(data) %in% c("state", "Timestamp", "self_employed", "comments"))]

# View the cleaned dataset
head(data_clean)

data_cleaner <- data_clean[, c("tech_company", "Gender", "family_history", "treatment")]

head(data_cleaner)
data_clean <- data_clean[complete.cases(data_clean), ]

# Example usage of Mclust with cleaned data
fit <- Mclust(data_cleaner, G = 3)  # Fit a Gaussian mixture model with 3 components
summary(fit)  # Summary of the fitted model
plot(fit)  # Plotting the clustering results
