if (!require(dplyr)){
  install.packages("dplyr")
}

library(dplyr)

head(data)

data$work_interfere <- factor(data$work_interfere, levels = c("Never", "Rarely", "Sometimes", "Often"))
data$no_employees <- factor(data$no_employees, levels = c("1-5", "6-25", "26-100", "100-500", "500-1000", "More than 1000"))

contingency_table <- table(data$no_employees, data$work_interfere)
contingency_table <- addmargins((contingency_table))

print("Kontingenztabelle (absolute Häufigkeiten):")
print(contingency_table)

relative_contingency_table <- prop.table(table(data$no_employees, data$work_interfere))
relative_contingency_table <- addmargins(relative_contingency_table)

relative_contingency_table <- round(relative_contingency_table, 4)

print("Kontingenztabelle (relative Häufigkeiten):")
print(relative_contingency_table)