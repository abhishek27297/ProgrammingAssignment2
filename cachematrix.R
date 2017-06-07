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



#computes inverse with help of makeCacheMatrix
cacheSolve<-function(x,...){
  i <- x$getinverse()    #get the inverse
  if(!is.null(i)) {     #check if it already exsists in cache
    message("getting cached data")
    return(i)           #return that cached value
  }
  mat <- x$get()    #if not solve for inverse and set it
  i <- solve(mat)
  x$setinverse(i)
  i
  
}
