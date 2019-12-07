## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#this function will create a matrix that can cash its inverse 
#the function takes the arguments x as the matrix 
#then retruns a matrix wit functions to set and get values and set and get the inverse 
makeCacheMatrix <- function(x = matrix()) {
Var<-NULL
Set<-function(y){
  x<<-y
  Var<-NULL
}
Get<-function()x
Set_Inverse<-function(Inverse)Var<<-Inverse
Get_Inverse<-function()Var
list(Set=Set, Get=Get,Set_Inverse=Set_Inverse, Get_Inverse=Get_Inverse)
}


## Write a short comment describing this function 
#this function will compute the inverse of a matrix. however, if the inverse of the matrix has been already compute it will return the cached inverse  
# the fuction takes x as a matrix and ... as other arguments 
#then it returns the inverse of the matrix 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  Var<-x$Get_Inverse()
  #returning the chaed inverse if it has been already comupted 
  if(!is.null(Var)){
    message("Inverse is getting cahsed")
    return(Var)
  }
  #computing the inverse of the matrix 
  Matrix<-x$Get
  Var<-solve(Matrix,...)
  #Cashe the inverse
  x$Set_inverse(Var)
  #return the inverse of the matrix
  Var
}
