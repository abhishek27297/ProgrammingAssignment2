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
