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
plot(x, y) 

##### kumulative Verteilungsfunktion #####
y <- pnorm(x, mean_Age, sd_Age) 
plot(x, y) 

out <- data.matrix(data)




