if (!require(corrplot)){
  install.packages("corrplot")
}

library(corrplot)

if (!require(dplyr)){
  install.packages("dplyr")
}

library(dplyr)

head(out)

#numeric_data <- out[, sapply(out, is.numeric)]

correlation_matrix <- cor(out, use = "complete.obs")

print(correlation_matrix)

correlations = corrplot(correlation_matrix, method = "circle")

ggsave(file.path("plots", "correlation.png"), plot = correlation)