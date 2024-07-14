
tenF <- c(100,42.2,88.38, 100, 100)  #SFP data sets


fiveF <- c(100, 42.2,88.38,100,100)
threeF <- c(100,42.2,88.38,100,100)
Bootstrap <- c(100, 44.5, 96.96, 100, 100)
Loo <- c(100, 42.2, 88.3, 100, 100)

library(effsize)
VD.A(tenF,fiveF)  #highest consistent algo with each one, i.e DT with LR, SVM with MLP)
###########

tenF <- c(100,94.4,86.7, 100, 96.3)  #SDEE data sets


fiveF <- c(100, 94.4,86.7,100,96.3)
threeF <- c(100,92.3,84.6,100,100)
Bootstrap <- c(100,89.2, 90, 100, 96.3)
Loo <- c(100, 94.4, 84.6, 100, 96.3)

library(effsize)
VD.A(DT,SVM)  #highest consistent algo with each one, i.e DT with LR, SVM with MLP)
