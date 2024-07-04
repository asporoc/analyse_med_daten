if (!require(corrplot)){
  install.packages("corrplot")
}

library(corrplot)

if (!require(dplyr)){
  install.packages("dplyr")
}

library(dplyr)

if (!require(ggplot2)) {
  install.packages("ggplot2")
}

library(ggplot2)

out <- data.matrix(data)

data_clean <- data[, !(names(data) %in% c("state", "Timestamp", "self_employed", "comments", "Country"))]
source("recode.R")


correlation_matrix <- cor(data_clean, use = "complete.obs")

print(correlation_matrix)

correlations = corrplot(correlation_matrix, method = "shade")

ggsave(file.path("plots", "correlation.png"), plot = correlations)

