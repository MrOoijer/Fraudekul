# auc / roc, avoid overflow error in Metrics::auc 

my_auc <- function(true_Y, probs) {
  # 
  N <- length(true_Y)
  if (length(probs) != N)
    return (NULL) # error
  if (is.factor(true_Y)) true_Y <- as.numeric(as.character(true_Y))
  roc_y <- true_Y[order(probs, decreasing = FALSE)]
  stack_x = cumsum(roc_y == 1) / sum(roc_y == 1)
  stack_y = cumsum(roc_y == 0) / sum(roc_y == 0)
  auc = sum((stack_x[2:N] - stack_x[1:(N - 1)]) * stack_y[2:N])
  return(auc)
}

auc <- function(a,p) my_auc(a,p)

#binary cross_entropy
bce <- function(actual, probs){
  probs <- ifelse(probs >0, probs, 10^-10)
  return ( - mean(actual* log(probs)))
}

# mean logloss
mll <- function(actual, probs){
  probs <- ifelse(probs >0, probs, 10^-10)
  return ( mean(Metrics::ll(actual, probs)))
}

# accuracy
acc <- function(actual, probs, theta=0.5){
  probs <- ifelse(probs > theta, 1, 0)
  return(mean(probs == actual))
}

# root mean squared error
rmse <- function(actuals, prediction) sqrt(mean((actuals-prediction)^2))

diagnosis <- function(actual, probs, title=""){
  cat("\nSummary results for", title
      , "\nauc:", auc(actual, probs)
      , "\nacc:", acc(actual, probs)
      , "\nbce:", bce(actual, probs)
      , "\nmll:", mll(actual, probs)
      , "\nrmse:", rmse(actual, probs)
      , "\n"
  )
}

# primitive (0,1) calibration
to_p <- function(r) {
  r <- r - min(r)
  return(r / max(r))
}