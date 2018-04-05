## Put comments here that give an overall description of what your
## functions do

# Cache the inverse of a matrix

## Write a short comment describing this function

# Create a special "matrix", which is a list of functions to set and get matrix values & set and get its inverse
makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    
    set <- function(y){
        x <<- y
        inverse <<- NULL
    }
    get <- function() x
    setinverse <- function(ins) inverse <<- ins
    getinverse <- function() inverse
    
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function
#calculate the inverse of specical "matrix" created with the above function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inverse <- x$getinverse()
    if(!is.null(inverse)){
        message("getting cached data")
        return(inverse)
    }
    matrix <- x$get()
    inverse <- solve(matrix)
    x$setinverse(inverse)
    inverse
    
}
