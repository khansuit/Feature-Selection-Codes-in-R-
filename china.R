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
setwd("F:/PERSONNAL1/RESEARCH WORK 2022/Empirical/Validation/1. Normalized datasets/SDEE")

data = readARFF("Normalized China.arff")

ggplot(data=data,aes(x=rfc,y=Effort))+geom_line()+labs(title="RFC")


set.seed(123)
index= sample(1:nrow(data), 0.7*nrow(data))
train= data[index,]
test= data[-index,]
task = TaskRegr$new("data", backend = train, target = "Effort")


learner= lrn("regr.randomForest")

model= learner$train(task )

library(randomForest)



explainer = explain_mlr3(model,
                         data = test[,-19],
                         y = as.numeric(test$Effort)-1,
                         label="RF")


set.seed(123)
test[,19]
new= test[2,]

library(Metrics)

plot(model_parts(explainer))


