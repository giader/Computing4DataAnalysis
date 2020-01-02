##
## pag 4 : Programming Assignment 3
outcome_gt_20 <- table(outcome$State) > 20
base_20 <- as.data.frame(outcome_gt_20)
state_20 <- row.names(subset(base_20, outcome_gt_20 == TRUE))
outcome2 <- subset(outcome, outcome$State %in% state_20)
#
death <- outcome2[, 11]
state <- outcome2$State
boxplot(death ~ state)
# manca l'ultima parte per completare il boxplot finale