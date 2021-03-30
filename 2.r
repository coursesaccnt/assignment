cacheSolve <- function(x, ...) ##gets cache data      
  {
  inv<-x$getinv()                  
  if(!is.null(inv)){                 #checking whether inverse is NUll 
                     message("getting cached data!")
                     return(inv)                       #returns inverse value
  }
  data<-x$get()
  inv<-solve(data,...)              #calculates inverse value
  x$setinv(inv)
  inv   ## Return a matrix that is the inverse of 'x'
}
