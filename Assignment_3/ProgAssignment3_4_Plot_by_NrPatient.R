## Plot 30days death rates vs Nr patient
## pag 5 : Programming Assignment 3
hospital <- read.csv("hospital-data.csv", colClasses = "character")
outcome.hospital <- merge(outcome, hospital, by = "Provider.Number")
death <- as.numeric(outcome.hospital[, 11])
npatient <- as.numeric(outcome.hospital[, 15])
owner <- factor(outcome.hospital$Hospital.Ownership)
head(outcome.hospital)  #verifica dati
## Lattice Plot (draft)
xyplot(death ~ npatient | owner, as.table = T, pch = 20, 
       panel = function(x, y, ...)  {
         panel.xyplot(x, y, ...)
         panel.lmline(x, y)
      }, xlab = "Number of Patients Seen", ylab = "30-day Death Rate"
       , main = "Heart Attack 30-day Death Rate by Ownership")