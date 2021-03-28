# Source: https://uc-r.github.io/regression_trees
# for hyper-parameters tuning see propensity score fine tuning files in output directory

setwd("/Users/my_love/Desktop/Applied Data Science/Project 4/Spring2021-Project4-project4group1/")
if (!require("rpart")) install.packages("rpart")

propensity_score_ld <- function(data) {
  # fine-tuned model
  optimal_tree <- rpart(
    formula = Y ~ .,
    data    = data,
    method  = "anova",
    control = list(minsplit = 10, maxdepth = 10, cp = 0.01)
  )
  
  # predictions
  pred <- predict(optimal_tree, newdata = data)
  
  return(pred)
}

propensity_score_hd <- function(data) {
  # fine-tuned model
  optimal_tree <- rpart(
    formula = Y ~ .,
    data    = data,
    method  = "anova",
    control = list(minsplit = 14, maxdepth = 22, cp = 0.01)
  )
  
  # predictions
  pred <- predict(optimal_tree, newdata = data)
  
  return(pred)
}