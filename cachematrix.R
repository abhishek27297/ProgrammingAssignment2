#this function can cache inverse of a matrix
makeCacheMatrix<-function(x=matrix()){
  i <- NULL
  set <- function(y) {     #sets a matrix
    x <<- y
    i <<- NULL
  }
  get <- function() x      #gets the stored matrix
  setinverse <- function(z) i <<- solve(z)  #Matrix 'z' given as input
  getinverse <- function() i     #stored matrix inverse is recovered
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}
