if (!require(ggplot2)) {
  install.packages("ggplot2")
}

library(ggplot2)

age_groups <- cut(data$Age, breaks=seq(10, 80, by=10), right=FALSE)
df_ageGroups = data.frame(AgeGroup = age_groups)

age_histogram <- ggplot(df_ageGroups, aes(x=AgeGroup)) +
  geom_histogram(stat="count", fill="pink") +
  labs(title="Histogramm der Altersgruppen", x="Altersgruppen", y="Häufigkeit") +
  theme_minimal()

print(age_histogram)
ggsave(file.path("plots", "age_histogram.png"), plot = age_histogram)
