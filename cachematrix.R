## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#Cache the inverse of a matrix
makeVector <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinvmx <- function(invmx) m <<- invmx
        getinvmx <- function() m
        list(set = set, get = get, setinvmx = setinvmx, getinvmx = getinvmx)
}


## Write a short comment describing this function
#check if the inverse has already been calculated, if so calculate the inverse of the special matrix

cacheinvmx <- function(x, ...) {
        m <- x$getinvmx()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinvmx(m)
        m
}
