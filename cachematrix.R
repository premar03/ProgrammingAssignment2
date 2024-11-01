#With a lot of help, I decided to try setting x as a matrix, and "z" to null.
#changed the "mean" values in original functions to "solve"

makeCacheMatrix <- function(x = matrix(sample(1:100,7),3,3)) {
  z <- NULL 
  set <- function(y) {
    x <<- y
    z <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) z <<- solve
  getsolve <- function() z
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

## Worked backwards from "cachemean", changed "mean" to "solve" using variable z, etc.
cacheSolve <- function(x, ...) {
  z <- x$getsolve()
  if(!is.null(z)) {
    return(z)
  }
  data <- x$get()
  z <- solve(data, ...)
  x$setsolve(s)
  z
}
