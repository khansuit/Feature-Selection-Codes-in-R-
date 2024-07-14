DT <- c(100, 100, 100, 100, 100, 100)


LR <- c(100, 100, 100, 100, 100)
MLP <- c(100, 53.8, 100, 100, 100, 100)
RF <- c(100, 100, 100, 100, 53.84, 53.84)
SVM <- c(100, 81.81, 100, 100, 100)

library(effsize)
VD.A(DT,SVM)  #highest consistent algo with each one, i.e svm with LR, SVM with MLP)
