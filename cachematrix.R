## There will be 2 functions: 1st containing info on a sqaure matrix, 2nd calculates inverse
## of a square matrix

## 1. makeCacheMatrix will create a list,containing  original matrix, if the inverse
## was calculated, finally function to set  inverse of the matrix



makeCacheMatrix <- function(x = matrix()) {

  
  inv <- NULL
  
  get<- function() x
  
  
  
  
  setinverse <- function(inverse) inv <<- inverse
  
  getinverse <- function() inv
  
  list(get= get, setinverse= setinverse, getinverse=getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
if( !is.null(x$getinverse() )) {
  message("getting cached data")
  
  return(x$getinverse())
}
matr <- x$get()

invmatr <- solve(matr)

x$setinverse(invmatr)

invmatr
}


