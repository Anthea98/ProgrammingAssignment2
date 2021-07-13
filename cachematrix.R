## Put comments here that give an overall description of what your
## functions do

## make a matrix contain itself and its inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  set<-function(y){
    x<<-y
    i<<-NULL
  }
  get <-function() x
  setInverse<-function(inverse)i<<-inverse
  getInverse<-function()i
  list(set=set,get=get,setInverse = setInverse, getInverse = getInverse)
}


## read the cached data

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i<-x$getInverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data<-x$get()
  i<-solve(data,...)
  x$setInverse(i)
  i
}
