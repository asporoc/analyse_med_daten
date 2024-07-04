
install.packages('datasets')
install.packages('caTools')
install.packages('party')
install.packages('dplyr')
install.packages('magrittr')

library(datasets) 
library(caTools)
library(party)
library(dplyr)
library(magrittr)

new_data <- data %>% select_if(~ !any(is.na(.)))

out_data <- data.matrix(new_data)
out_data <- as.data.frame(out_data)
#out_data
#out_data$Gender <- new_data$Gender

sample_data = sample.split(out_data, SplitRatio = 0.8)
train_data <- subset(out_data, sample_data == TRUE)
test_data <- subset(out_data, sample_data == FALSE)



model<- ctree(seek_help ~ ., train_data)
plot(model)   # 3:yes, 1:Dont Know, 2: no
<<<<<<< HEAD

=======
 #Vorhersage funktioniert nur noch nicht...
>>>>>>> cb4160d5bd2b0011b85df7bbd319db95b12b4207

