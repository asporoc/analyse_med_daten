
mod2dr <- MclustDR(data)
summary(mod2dr)
## ----------------------------------------------------------------- 
## Dimension reduction for model-based clustering and classification 
## ----------------------------------------------------------------- 
## 
## Mixture model type: EDDA 
##             
## Classes       n Model G
##   setosa     50   VEV 1
##   versicolor 50   VEV 1
##   virginica  50   VEV 1
## 
## Estimated basis vectors: 
##                  Dir1      Dir2
## Sepal.Length  0.20874 -0.006532
## Sepal.Width   0.38620 -0.586611
## Petal.Length -0.55401  0.252562
## Petal.Width  -0.70735 -0.769453
## 
##                Dir1       Dir2
## Eigenvalues  1.8813   0.098592
## Cum. %      95.0204 100.000000
plot(mod2dr, what = "scatterplot")