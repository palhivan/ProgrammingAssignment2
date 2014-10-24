
]\## There will be 2 functions: 1st containing info on a sqaure matrix, 2nd calculates inverse
## of a square matrix


## 1. makeCacheMatrix is a function requiring matrix as argument and creating a list,
## containing functions: 1, retrieving original matrix,2 setting inverse of the matrix, 
## 3 retrieving the inverse of matrix
## was calculated, finally function to set  inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  
  if( is.matrix(x)==FALSE) {
    message("not a matrix")
    return(NULL)      ##checking if x is a matrix
  } 
  
  dim_mat <- dim(x)
  if( dim_mat[1]!= dim_mat[2]) {
    message("not a square matrix")
    return(NULL)      ##checking if x is a square matrix
  } 
  
  inv <- NULL ##initialise inverse  as null
  
  get<- function() x ## to provide original matrix
  
  
  setinverse <- function(inverse) inv <<- inverse ##storing the inverse
  
  getinverse <- function() inv ## providing the inverse matrix
  
  list(get= get, setinverse= setinverse, getinverse=getinverse)
  
}


## this function checks if the cachematrix result list was calculated, if yes
## then provide the cached value, if not then calculates the inverse plus cache result

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  if( !is.null(x$getinverse() )) {  ##checks if getinverse has diff value then null
    
    message("getting cached data")
    
    return(x$getinverse())  ##if yes provide cached value
  }
  matr <- x$get()   ##retreving original matrix
  
  invmatr <- solve(matr) ##calculating iverse matrix
  
  x$setinverse(invmatr) ##caching result
  
  invmatr
}



