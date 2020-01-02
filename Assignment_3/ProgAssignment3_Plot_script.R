outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
outcome[,11] <- as.numeric(outcome[,11])
outcome[ ,17] <- as.numeric(outcome[ ,17]
outcome[ ,23] <- as.numeric(outcome[ ,23]
rate_range <- range(c(outcome[,17],outcome[,11],outcome[,23]), na.rm = TRUE)
par(mfrow = c(3,1))
hist(outcome[, 11], main = "Heart Attack", xlab = "30-day Death Rate", xlim = rate_range)
hist(outcome[, 17], main = "Heart Failure", xlab = "30-day Death Rate", xlim = rate_range)
hist(outcome[, 23], main = "Pneumonia", xlab = "30-day Death Rate", xlim = rate_range)
par(mfrow = c(1,3))
meanHeartAtt <- mean(outcome[,11], na.rm=T)
meanHeartFail <- mean(outcome[,17], na.rm=T)
meanPneumonia <- mean(outcome[,23], na.rm=T)                        
hist(outcome[, 11], xlab = "30-day Death Rate", ylim = NULL, 
     main = substitute(paste("Heart Attack (", bar(X) == x,  ")"), list(x = meanHeartAtt) ))
abline(v=median(outcome[,11],na.rm=TRUE))
hist(outcome[, 17], xlab = "30-day Death Rate", Ylim = NULL, 
     main = substitute(paste("Heart Failure (", bar(X) == x,  ")"), list(x = meanHeartFail) ))
abline(v=median(outcome[,17],na.rm=TRUE))
hist(outcome[, 23], xlab = "30-day Death Rate", ylim = NULL,
     main = substitute(paste("Pneumonia (", bar(X) == x,  ")"), list(x = meanPneumonia) ))
abline(v=median(outcome[,23],na.rm=TRUE))

