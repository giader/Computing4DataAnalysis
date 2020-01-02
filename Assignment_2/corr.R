corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  
  #nobs1 <- numeric(0)
  id <- 1:332
  position = 0
  corrvett <- c()
  for (i in id){
    if ((complete(directory, i)[1,2]) >= threshold){
      position = position + 1
      data1 <- getmonitor(i, directory)
      corrvett[position] <- cor(data1$sulfate, data1$nitrate, use="pairwise.complete.obs")
    }
  }
  return(corrvett)
}