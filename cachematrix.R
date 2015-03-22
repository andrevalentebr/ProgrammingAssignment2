## Programming Assignment 2  -  André Valente do Couto
## https://github.com/andrevalentebr/ProgrammingAssignment2

## The function makeCacheMatrix implements a matrix object with any
## functions to set/get data and set/get inverse of parameter matrix.

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    # function set initialize matrix "x" and set Null to "inv"
    # the "<<-" insert value of "y" in another environment
    # where "x" is defined and function is calling.
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    # return de "x" matrix in scope where the func was call    
    get <- function() x
    # set inverse matrix "x" to matrix "inv"
    setinv <- function(inverse) inv <<- inverse
    # return matrix "inv"
    getinv <- function() inv
    # list parameters names
    list(set=set, get=get, setinv=setinv, getinv=getinv)
}

## Computes the inverse of the special "matrix" returned by `makeCacheMatrix`.
## If the inverse has calculated (and the matrix has not changed), then
## `cacheSolve` should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
    # get data from "inv" in scope of makeCacheMatrix function 
    # and set to "inv" in this scope function
    inv <- x$getinv()
    # if inverse has already been calculated, return only message and "inv" and exit.
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    # store matrix x in "data" matrix
    data <- x$get()
    # store inverse of "data" in "inv"
    inv <- solve(data)
    # store the inverse matrix in "inv" in dad scope of matrixCacheMake was defined.
    x$setinv(inv)
    # show data from "inv" matrix in this scope.
    inv
}

