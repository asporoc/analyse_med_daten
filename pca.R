colSums(is.na(data))
#data_subset <- subset(data, select = c(Age, Gender, Country, family_history, treatment, no_employees, remote_work, tech_company, benefits, care_options, wellness_program, seek_help, anonymity, leave, mental_health_consequence, phys_health_consequence, coworkers, supervisor, mental_health_interview, phys_health_interview, mental_vs_physical, obs_consequence))

data_subset <- subset(data, select = c(benefits, wellness_program, seek_help, care_options)

data_subset <- data.matrix(data_subset)                
colSums(is.na(data_subset))

data_normalized <- scale(data_subset)
head(data_normalized)

data.pca <- princomp(data_normalized)
summary(data.pca)

data.pca$loadings[, 1:2]

install.packages("factoextra")
library(factoextra)

fviz_eig(data.pca, addlabels = TRUE)
# Graph of the variables
fviz_pca_var(data.pca, col.var = "black")
fviz_cos2(data.pca, choice = "var", axes = 1:2)
fviz_pca_var(data.pca, col.var = "cos2",
             gradient.cols = c("black", "orange", "green"),
             repel = TRUE)
