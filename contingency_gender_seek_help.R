if (!require(dplyr)){
  install.packages("dplyr")
}

library(dplyr)

head(data)

data$work_interfere <- factor(data$Gender, levels = c("male", "female", "other"))
data$no_employees <- factor(data$seek_help, levels = c("Yes", "No", "Don't know"))

contingency_table <- table(data$gender, data$seek_help)
contingency_table <- addmargins((contingency_table))

print("Kontingenztabelle (absolute Häufigkeiten):")
print(contingency_table)

relative_contingency_table <- prop.table(table(data$Gender, data$seek_help))
relative_contingency_table <- addmargins(relative_contingency_table)

relative_contingency_table <- round(relative_contingency_table, 4)

print("Kontingenztabelle (relative Häufigkeiten):")
print(relative_contingency_table)