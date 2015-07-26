## These two functions serve to compute the inverse of a matrix.
## Both function accomplish this task, but the makeCacheMatrix
## function stores its solution. Then the cacheSolve function
## will print the stored solution from makeCacheMatrix, or if it
## does not exist, it will compute the inverse of the matrix.


makeCacheMatrix <- function(x = matrix()) {
  matrix_1 <<- solve(x) # Here the "<<-" operater assigns matrix_1
                        # to the global environment
  matrix_1
}



cacheSolve <- function(x, ...) {
    if (!exists("matrix_1")) { # Here the function looks to see if 
                               # the stored matrix from
                               # makeCacheMatrix exists
      
      matrix_2 <- solve(x)     # If it doesn't exist, it computes
                               # the inverse
      
      print("Computing Inverse")
      matrix_2
    } else {
      print("Getting Cached Matrix")
      matrix_1                 # If it does, then it prints that
                               # stored inverse
    }
}
