if (!require(dplyr)){
  install.packages("dplyr")
}

library(dplyr)

head(data)



contingency_table <- table(data_clean$Gender, data_clean$seek_help)
contingency_table <- addmargins((contingency_table))

print("Kontingenztabelle (absolute Häufigkeiten):")
print(contingency_table)

relative_contingency_table <- prop.table(table(data_clean$Gender, data_clean$seek_help))
relative_contingency_table <- addmargins(relative_contingency_table)

relative_contingency_table <- round(relative_contingency_table, 4)

print("Kontingenztabelle (relative Häufigkeiten):")
print(relative_contingency_table)
