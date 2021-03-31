# Source: https://uc-r.github.io/regression_trees
# for hyper-parameters tuning see propensity score fine tuning files in output directory

if (!require("rpart")) install.packages("rpart")

propensity_score_ld <- function(data) {
  # fine-tuned model
  data_clean <- subset(data, select = -Y)
  optimal_tree <- rpart(
    formula = A ~ .,
    data    = data_clean,
    method  = "class",
    control = list(minsplit = 20, maxdepth = 15, cp = 0.0126)
  )
  
  # predictions
  pred <- predict(optimal_tree, newdata = data_clean)
  
  return(pred[, 2])
}

propensity_score_hd <- function(data) {
  # fine-tuned model
  data_clean <- subset(data, select = -Y)
  optimal_tree <- rpart(
    formula = A ~ .,
    data    = data_clean,
    method  = "class",
    control = list(minsplit = 11, maxdepth = 20, cp = 0.0126)
  )
  
  # predictions
  pred <- predict(optimal_tree, newdata = data_clean)
  
  return(pred[, 2])
}