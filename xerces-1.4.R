library(farff)
library(DALEX)
library(DALEXtra)
library(mlr3)
library(mlr3learners)
library(mlr3measures)
library(mlr3pipelines)
library(mlr3benchmark)
library(mlr3cluster)
library(mlr3data)
library(mlr3tuning)
library(mlr3learners)
library(mlr3cluster)
library(mlr3benchmark)
library(mlr3pipelines)
library(mlr3)
library(gitcreds)
devtools::install_github("https://github.com/mlr-org/mlr3extralearners")
library(mlr3extralearners)
library(caret)
setwd("F:/PERSONNAL1/RESEARCH WORK 2022/Empirical/Validation/1. Normalized datasets/SFP")

data = readARFF("Normalized Xerces.arff")

ggplot(data=data,aes(x=rfc,y=bug))+geom_line()+labs(title="RFC")


set.seed(123)
index= sample(1:nrow(data), 0.7*nrow(data))
train= data[index,]
test= data[-index,]
task = TaskRegr$new("data", backend = train, target = "bug")


learner= lrn("regr.svm")

model= learner$train(task )

library(svm)



explainer = explain_mlr3(model,
                         data = test[,-22],
                         y = as.numeric(test$bug)-1,
                         label="RF")


set.seed(123)
test[,22]
new= test[2,]

library(Metrics)

plot(model_parts(explainer))


