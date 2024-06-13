if (!require(corrplot)){
  install.packages("corrplot")
}

library(corrplot)

head(data)

numeric_data <- data %>% select_if(is.numeric)

correlation_matrix <- cor(numeric_data, use = "complete.obs")

print(correlation_matrix)

correlations = corrplot(correlation_matrix, method = "circle")

ggsave(file.path("plots", "correlation.png"), plot = cprrelation)