## makeCacheMatrix is a function that creates a list of functions:
## setData 		-	Sets the value of the matrix
## getData 		- 	Gets the value of the matrix
## setInverse 	-	Sets the inverse of the matrix
## get Inverse 	- 	Gets the inverse of the matrix
##
## cacheSolve is a function that returns the inverse of the matrix
## created by the makeCacheMatrix function. 	

## makeCacheMatrix function follows.

makeCacheMatrix <- function(x = matrix()) { 
	## setting the inverse to Null for the beginning 
    inv <- NULL 
    
	## This function sets values of x to new Matrix. Resets the cache
	## value.
    setData <- function(my_mat) { 
        x <<- my_mat          
        inv <<- NULL
    }
    
	## Returns the above matrix.
    getData <- function() x
    
	## Calculates the inverse of the above matrix and caches it.
    setInverse <- function(solve) inv <<- solve
    
	## Returns the cached value.
    getInverse <- function() inv
    
	## Return a list of the functions
    list (setData = setData, getData = getData, setInverse = setInverse, getInverse = getInverse)
    
}

## cacheSolve function begins. This function returns the inverse
## of the matrix created.


cacheSolve <- function(x, ...) {
    
    ## Get the cached value
    inverse <- x$getInverse()
    
    ## Check if a cached value exists, if yes then return it
    
    if(!is.null(inverse)) {
        message("Getting cached data")
        return(inverse)
        
    }
    
    ## If cached value is not present, then get the matrix, calculate the
    ## inverse and return it.
    
    data <- x$getData()
    inverse <- solve(data)
    x$setInverse(inverse)
    
    ## Return the inverse
    inverse
}
