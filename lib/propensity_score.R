# Source: https://uc-r.github.io/regression_trees
# for hyper-parameters tuning see propensity score fine tuning files in output directory

# import
if (!require("rpart")) install.packages("rpart")

propensity_score_ld <- function(data) {
  # remove Y from the data set
  data_clean <- subset(data, select = -Y)
  
  # Train test split
  set.seed(123)
  data_split <- initial_split(data_clean, prop = .7)
  train <- training(data_split)
  test  <- testing(data_split)
  
  # build a model
  optimal_tree <- rpart(
    formula = A ~ .,
    data    = train,
    method  = "class",
    control = list(minsplit = 20, maxdepth = 15, cp = 0.0126)
  )
  
  # predictions
  pred <- predict(optimal_tree, newdata = data_clean)
  
  return(pred[, 2])
}

propensity_score_hd <- function(data) {
  # remove Y column
  data_clean <- subset(data, select = -Y)
  
  # Train test split
  set.seed(123)
  data_split <- initial_split(data_clean, prop = .7)
  train <- training(data_split)
  test  <- testing(data_split)
  
  # build a model
  optimal_tree <- rpart(
    formula = A ~ .,
    data    = train,
    method  = "class",
    control = list(minsplit = 11, maxdepth = 20, cp = 0.0126)
  )
  
  # predictions
  pred <- predict(optimal_tree, newdata = data_clean)
  
  return(pred[, 2])
}