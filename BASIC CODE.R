###############################################
# NAME:     ADEBIYI ALI ADENIRAN              #
# SCHOOL:   UNIVERSITY OF IBADAN              #
# DEPT:     STATISTICS DEPARTMENT             #  
# DEGREE:   B.Sc STATISTICS                   #
# DATE:     TILL DATE                         #
# PURPOSE:  FUNDAMENTAL CODE IN R-PROGRAMING  #
###############################################

#ASSIGNMENT OPERATOR
a <- 2
3L -> b
c = 5.6
f <<- FALSE
TRUE ->> m


#getting the class of the operator using class() function
class(f)
print(class(cls))
cat("the class of c is",class(c), "\n")

#ARITHMETICS OPERATOR
y = c(13, 17, 7)
z = c(23, 16, 4)
cat("the addition of vectors y and z is", y+z, "\n")
cat("thier subtraction is", y - z, "\n")
cat("and their prodcut is", y*z, "\n")
cat("y exponetial z is", y^z, "\n")
cat("the division of z by y is", z/y, "\n")
cat("the remainder of the division of z by y is", z%%y, "\n")
cat("and the division that results into whole number is", z%/%y, "\n")

#RELATIONAL OPERATOR i.e (>, <, >=, =< !=, ==) BOOLEAN VALUE ARE RETURNED AS THE OUTCOME
a = 4
b <- TRUE
FALSE -> c
d <<- 5
cat("the result when a is more/less than d is", a>d, "and", a<d, "\n")
cat("and for greater or equal to/less or equal, it is",d>=a,"and",d<=a, "\n")
cat("equal to or not equal to is",a==d, "and",a!=d, "\n")

#LOGICAL OPERATOR i.e. (&, |, !, && and ||)
a = c(3, 3.4, TRUE, 0+4i)
b = c(3, 6, FALSE, 3)
c = c(0, 6, FALSE, 0+4i)
print(a&b) #AND, return true iff both are true, otherwise it return false
print(b|c) #OR,return true iff either one is true otherwise, it return false
print(!c)  #NOT, return the opposite logical value
print(a&&b) #return true iff first element of the vector are both true
print(b||c)   #return true iff either one of the first element of the vector is true
print(!(a&b))

#MISCELLANEOUS OPERATOR (:, %in%, %*%)
x<- 2
-3 -> y
z=1:9
# creating series of number in a sequence for a vector
print(x%in%z)  #checking if x is an element in vector z
print(y%in%z)
mat=matrix(z, nrow=3, byrow=FALSE)
print(mat)
print(mat%*%mat) #this is multiplication of matrix and its transpose
