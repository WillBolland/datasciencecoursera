add2 <- function(x, y) {
  x + y
}
add2(3, 5)

above10 <- function(x) {
  use <- x>10 
  x[use]
}

above <- function(x, n=10) {
  use <- x>n
  x[use]
}
x <- 1:20
above(x)

#mean of each column in a data frame with for loop
columnmean <- function(y, removeNA = TRUE){
  nc <- ncol(y) #number of columns
  means <- numeric(nc) #emtpy vector thats filled as you go through the columns
  for(i in 1:nc) {
    means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means
}
data <- read.csv("data/environment.csv")
columnmean(data)