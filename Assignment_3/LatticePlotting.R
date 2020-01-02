outcome[,11] <- as.numeric(outcome[,11])
library(help = lattice)
data(environmental)
?environmental
head(environmental)
xyplot(ozone ~ radiation, data = environmental, main = "Ozone vs. Radiazione")
summary(environmental$temperature)
temp.cut <- equal.count(environmental$temperature, 4)
temp.cut
xyplot(ozone ~ radiation | temp.cut, data = environmental, main = "Ozone vs. Radiazione")
xyplot(ozone ~ radiation | temp.cut, data = environmental, layout = c(1, 4))
xyplot(ozone ~ radiation | temp.cut, data = environmental, layout = c(1, 4), as.table = T)
xyplot(ozone ~ radiation | temp.cut, data = environmental, as.table = T)
xyplot(ozone ~ radiation | temp.cut, data = environmental, as.table = T, 
       panel = function(x, y, ...) {
         panel.xyplot(x, y, ...)
         fit <- lm(y ~ x)
         panel.abline(fit)
       })
xyplot(ozone ~ radiation | temp.cut, data = environmental, as.table = T, 
       panel = function(x, y, ...) {
         panel.xyplot(x, y, ...)  #scatter plot
         panel.loess(x, y)   #regressione polinomiale
       })
wind.cut <- equal.count(environmental$wind, 4)
wind.cut
})
xyplot(ozone ~ radiation | temp.cut * wind.cut, data = environmental, as.table = T, pch=20,
       panel = function(x, y, ...) {
         panel.xyplot(x, y, ...)  #scatter plot
         panel.loess(x, y)   #regressione polinomiale
       })
splom(~ environmental)
#qplot(ozone, radiation, data = environmental, facets = . ~ temperature, 
#geom = c("point", "smooth"), method = "lm")


