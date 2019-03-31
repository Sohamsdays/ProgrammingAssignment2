## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Creating a matrix object that will cache its own inverse
makeCacheMatrix <- function( m = matrix() ) {
  
  ## Initializing the inverse property with a null value
  j <- NULL
  
  ## function to set the matrix
  
   set <- function( matrix ) {
   
     m <<- matrix
    
    
    j <<- NULL
  }
  
  ## function to  the get the matrix
  get <- function() {
    ## Returning the matrix
    m
  }
  
  ## functin to set the inverse of the matrix
  setInverse <- function(inverse) {
    j <<- inverse
  }
  
  ## function to get the inverse of the matrix
 
   getInverse <- function() {
    ## Return the inverse property
    j
  }
  
  ## Return a list of the functions
   
  list(set = set, get = get,
         setInverse = setInverse,
        getInverse = getInverse)
}


## Write a short comment describing this function

## Calculate the inverse of the matrix returned by "makeCacheMatrix"

## above. If the inverse is already calculated (which means the matrix is
## unchanged ), then the "cachesolve" will retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
  
  ## We will get the matrix inverse using this
  m <- x$getInverse()
  
  ## Return the inverse if its already set
  if( !is.null(m) ) {
   
     message("get cache data")
   
    
   return(m)
  }
  
  ## Now we get the matrix from our object
  
  data <- x$get()
  
  ## Calculating inverse using matrix multiplication
  m <- solve(data, ...)
  
  ## Setting the inverse to the object
  x$setInverse(m)
  
  ## Return the matrix 
  m
}
