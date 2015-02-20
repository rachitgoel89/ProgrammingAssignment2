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
    getData <-- function() x
    
## Calculates the inverse of the above matrix and caches it.
    setInverse <-- function(solve) inv <<- solve
    
## Returns the cached value.
    getInverse <-- function() inv
    
}

## cacheSolve function begins. This function returns the inverse
## of the matrix created.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
