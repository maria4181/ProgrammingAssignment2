## These are two functions that are used to create a special object that stores  
## a matrix  and cache's its inverse matrix

## WmakeCacheMartix creates a special list containing of functions

makeCacheMatrix <- function(x = matrix()){
  inverse <- NULL
        set <- function(y) {
                x <<- y
                inverse <<- NULL
        }                     #set the value of matrix
        get <- function() x   #get the value of matrix
        setinverse <- function(solve) inverse <<- solve  #set the value of inverse matrix
        getinverse <- function() inverse #get the value of inverse matrix
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)  #list of functions
}


## The function calculates the inverse of the "matrix" created with makeCacheMatrix

cacheSolve <- function(x, ...) {  
inverse <- x$getinverse()    # Returns cached matrix inverse using previously computed 
        if(!is.null(inverse)) {
                #If the inverse has already been calculated
                message("getting cached data") 
                return(inverse)
        }
        # Computes, caches, and returns new matrix inverse
        data <- x$get()
        inverse <- solve(data, ...)
        x$setinverse(inverse)
        inverse 
        ## Return a matrix that is the inverse of 'x'
}
