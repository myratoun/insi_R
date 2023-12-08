# Gradient 
library("ggplot2")

# Load our data set
x_train <- c(1.0, 2.0)   #features
y_train <- c(300.0, 500.0)   #target value

# Function to calculate the cost
compute_cost <- function(x, y, w, b) {
  m <- length(x)
  cost <- 0
  
  for (i in 1:m) {
    f_wb <- w * x[i] + b
    cost <- cost + (f_wb - y[i])^2
  }
  
  total_cost <- 1 / (2 * m) * cost
  return(total_cost)
}

# Function to compute the gradient
compute_gradient <- function(x, y, w, b) {
  m <- length(x)
  dj_dw <- 0
  dj_db <- 0
  
  for (i in 1:m) {
    f_wb <- w * x[i] + b
    dj_dw_i <- (f_wb - y[i]) * x[i]
    dj_db_i <- f_wb - y[i]
    dj_db <- dj_db + dj_db_i
    dj_dw <- dj_dw + dj_dw_i
  }
  
  dj_dw <- dj_dw / m
  dj_db <- dj_db / m
  
  return(list(dj_dw, dj_db))
}