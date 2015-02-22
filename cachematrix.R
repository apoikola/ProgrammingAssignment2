## Matrix inversion is usually a costly computation. First function calculates 
## and caches the inverse of a matrix and the second one retreives the cached
## inverse matrix if it has already been calculated.



## Creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

}




## Computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then cacheSolve should retrieve the 
## inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
