source("data_script.R")
source("preprocess_Age_Gender.R")
source("Country_distribution_with_barplot.R") #zum anzeigen von plot bitte im script ausführen
LagemasseAge <- source("Lagemasse_Age.R")
LagemasseAge

x<-data$Age
mean_Age <- LagemasseAge$value$mean
sd_Age <- LagemasseAge$value$sd
##### Normal Verteilung #####
y = dnorm(x, mean_Age, sd_Age) 
plot(x, y, xlab = "Alter", ylab = "Dichte")
shapiro.test(x)
# Optionally, add a title to the plot
title(main = "Verteilung des Alters")

##### kumulative Verteilungsfunktion #####
y <- pnorm(x, mean_Age, sd_Age) 
plot(x, y) 

out <- data.matrix(data)
out
# Example of Q-Q plot for age data
qqnorm(x)
qqline(x)




