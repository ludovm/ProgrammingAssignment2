## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#Cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
	special_matrix<<-x
	inv_matrix<<-solve(x)
}


## Write a short comment describing this function
#check if the inverse has already been calculated, if so calculate the inverse of the special matrix

cacheSolve <- function(x, ...) {
	tmp<-solve(special_matrix)
	if (all(tmp==inv_matrix)) {
		result=solve(tmp)
	}
	print(result)

        ## Return a matrix that is the inverse of 'x'
}
