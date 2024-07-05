# Install and load the mclust package if not already installed
# install.packages("mclust")
library(mclust)
# Example: Remove NaN values


head(data_cleaner)
data_clean <- data_clean[complete.cases(data_clean), ]

# Example usage of Mclust with cleaned data
fit <- Mclust(data_cleaner, G = 5)  # Fit a Gaussian mixture model with 3 components
summary(fit)  # Summary of the fitted model
plot(fit)  # Plotting the clustering results
