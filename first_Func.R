add2 <- function(x, y){
  x + y
}

columnmean <- function(y) {
  numcol <- ncol(y)
  meanCol <- numeric(numcol)
  for(i in 1:numcol){
    meanCol[i]<-mean(y[,i])
  }
  meanCol
}