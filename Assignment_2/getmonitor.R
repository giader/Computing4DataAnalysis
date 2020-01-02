getmonitor <- function(id, directory, summarize = FALSE) {
  ## 'id' is a vector of length 1 indicating the monitor ID
  ## number. The user can specify 'id' as either an integer, a
  ## character, or a numeric.
  
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'summarize' is a logical indicating whether a summary of
  ## the data should be printed to the console; the default is
  ## FALSE
  
  ## Your code here
  ## your function should not call getwd() or setwd()   
  ### 
  ### filename <- "specdata/032.csv" 
  id_ <- as.character(id)
  if (as.numeric(id) < 10) {
    filename <- paste("specdata/00",id_,".csv", sep="")
  } else if (as.numeric(id) < 100) {
    filename <- paste("specdata/0",id_,".csv", sep="")
  } else {
    filename <- paste("specdata/",id_,".csv", sep="")
  }
  data <- read.csv(filename)
  if (!summarize) {
    return(data)
      } else {
        print(summary(data))
        return(data)
  }
}