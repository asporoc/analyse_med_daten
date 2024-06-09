if (!require(ggplot2)){
  install.packages("ggplot2")
}

library(ggplot2)

age_boxplot <- ggplot(data, aes(y=Age)) +
  geom_boxplot(fill="pink") + 
  labs(title="Boxplot der Alter", y="Alter in Jahren") +
  theme_minimal()

print(age_boxplot)
ggsave(file.path("plots", "age_boxplot.png"), plot = age_boxplot)