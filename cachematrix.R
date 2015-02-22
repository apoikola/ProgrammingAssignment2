## Matrix inversion is usually a costly computation. First function calculates 
## and caches the inverse of a matrix and the second one retreives the cached
## inverse matrix if it has already been calculated.


## Creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  

}



## Computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then cacheSolve should retrieve the 
## inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}


## Test makeCacheMatrix and cacheSolve functions

## Create new matrix m
m <- matrix(c(1, 4, 2, 1), nrow = 2, ncol = 2, byrow = TRUE)
m

## Make special cache matrix out of m
cache <- makeCacheMatrix(m)
cache

## Test 1: solving cache 1st time
inverse <- cacheSolve(cache)
inverse

## Test 2: solving cache 2nd time
inverse <- cacheSolve(cache)
inverse