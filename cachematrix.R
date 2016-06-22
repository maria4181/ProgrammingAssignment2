## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix(),nrow=2, ncol=2 ){
  inverse <- NULL
        set <- function(y) {
                x <<- y
                inverse <<- NULL
        }
        get <- function() x
        setmean <- function(solve) inverse <<- solve
        getmean <- function() inverse
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
inverse <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        inverse <- solve(data, ...)
        x$setmean(inverse)
        inverse
        ## Return a matrix that is the inverse of 'x'
}
