count <- function(cause = NULL) {
  ## Check that "cause" is non-NULL; else throw error
  if (is.null(cause)) {
    stop("invalide cause")
  }
  ## Check that specific "cause" is allowed; else throw error
  causes <- c("asphyxiation", "blunt force", "other", "shooting", "stabbing", "unknown")
  cause <- tolower(cause)
  if (!(cause %in% causes)) {
    stop("invalid cause")
  }
  ## Read "homicides.txt" data file
  homicides <- readLines("homicides.txt")
  ## Extract causes of death
  ## Return integer containing count of homicides for that cause
  if (cause == causes[1]) {
    c1 <- length(grep("[Cc]ause: [Aa]sphyxiation", homicides))
  } else if (cause == causes[2]) {
    c1 <- length(grep("[Cc]ause: [Bb]lunt [Ff]orce", homicides))
  } else if (cause == causes[3]) {
    c1 <- length(grep("[Cc]ause: [Oo]ther", homicides))
  } else if (cause == causes[4]) {
    c1 <- length(grep("[Cc]ause: [Ss]hooting", homicides))
  } else if (cause == causes[5]) {
    c1 <- length(grep("[Cc]ause: [Ss]tabbing", homicides))
  } else {
    c1 <- length(grep("[Cc]ause: [Uu]nknown", homicides))
  }

  ##print(c1)
  return(c1)
}