## This functions compute the inverse of the special "matrix", save it to cache or get it from the cache

## Set of functions to: save new matrix, return the value, set inverse matrix and return current inverse value

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  setMatrix <- function(matrix) {
    m <<- matrix
    inv <<- NULL
  }
  getMatrix <- function() {
    x
  }
  setInverse <- function(inverse) {
    inv <<- inverse
  }
  getInverse <- function() {
    inv
  }
  list(setMatrix = setMatrix, getMatrix = getMatrix,
       setInverse = setInverse, getInverse = getInverse )
}
}


## Function for computing the inverse: it checks for cached value and retuns if it's exist, or computes new one, saves it to the cache and returns it

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$getMatrix()
  inv <- solve(data)
  x$setInverse(inv)
  inv
}
