## Put comments here that give an overall description of what your
## functions do

## Creating a mtrix that will cache is inverse

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<-function(y){
x<<--y
m<<-NULL
}
get<-function()x
setmatrix<-fucntion(inverse) m<<-inverse
getmatrix<-function() m
list(set = set, get = get,
setmatrix = setmatrix,
getmatrix=getmatrix)
}

## Write a short comment describing this function

cacheSolve <- function(x = matrix(), ...) {
  ## Return a matrix that is the inverse of 'x'
m<-x$getmatrix()
if(!is.null(m)){
message("get cached data")
return(m)
}
matrix<-x$get()
m<-inverse(matrix, ...)
x$setmatrix(m)
m
}      
