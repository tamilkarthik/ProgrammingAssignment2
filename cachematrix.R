# This module  caches the result of the inverse matrix calculation.
#makecacheMatrix inverses the matrix 

makeCacheMatrix <- function(x = matrix()) {

# Function returns inverse of the matrix x 
cached.inverse <- NULL
set <- function(y) {
x <<- y
cached.inverse <<- NULL
}
get <- function() x
setinverse <- function(inverse) cached.inverse <<- inverse
getinverse <- function() cached.inverse
list(set = set, get = get,
setinverse = setinverse,
getinverse = getinverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
# Inverse of the matrix is created with the function makeCacheMatrix.
#
#
# Fucntion caches the inverse of the given matrix .
inverse <- x$getinverse()
if(!is.null(inverse)) {
message("Getting cached data")
} else {
data <- x$get()
inverse <- solve(data, ...)
x$setinverse(inverse)
}
inverse
}
