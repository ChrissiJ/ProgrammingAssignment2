## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
     inverse <- NULL
     set <- function(y) {
          x <<- y
          inverse <<- NULL
     }
     get <- function() x
     setSolve <- function(solve) inverse <<- solve
     getSolve <- function() inverse
     list(set = set, get = get,
          setSolve = setSolve,
          getSolve = getSolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
     inverse <- x$getSolve()
     if(!is.null(inverse)) {
          message("getting cached results for inverse")
          return(inverse)
     }
     matrix <- x$get()
     inverse <- solve(matrix)
     x$setSolve(inverse)
     inverse
}
