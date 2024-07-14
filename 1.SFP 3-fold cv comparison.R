DT <- c(100, 100, 100, 100, 100, 100)


LR <- c(100, 100, 100, 100, 100, 100)
MLP <- c(66.6, 42.8, 42.8, 33.3, 25, 42.8)
RF <- c(100, 100, 81.81, 81.81, 100, 66.7)
SVM <- c(100, 100, 100, 100, 100, 100)

library(effsize)
VD.A(DT,SVM )  #highest consistent algo with each one, i.e DT with LR, DT with MLP)
