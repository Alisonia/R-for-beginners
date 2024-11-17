###############################################
# NAME:     ADEBIYI ALI ADENIRAN              #
# SCHOOL:   UNIVERSITY OF IBADAN              #
# DEPT:     STATISTICS DEPARTMENT             #  
# DEGREE:   B.Sc in view                      #
# DATE:     TILL DATE                         #
# PURPOSE:  DATA TYPE 3: MATRIX               #
###############################################

if(FALSE){"Matrix is a datatypes arranged in two-dimensional rectangular
layout, it contain element of the same type. 
  it is created using the function matrix()"
}
#CREATING A MATRIX:  matrix(data, nrow, ncol, byrow, dimnames)
if(FALSE){"data: input vector which define the elements of the matrix,
  nrow: is the number of row to be created,
  ncol: is the number of column to be created
  byrow: is a logical clue, if TRUE or FALSE, the input vector element are
  arranged by row or by column respectively.though, the default is by column
  dimnames: names assigned to the row and column"
}

mat1=matrix(c(3,4,0,-1,3,-1,-2,0,6),nrow=3, byrow=TRUE)
print(mat1)
mat2=matrix(c(4,5,-1,0,9,2,1,3,0), nrow=3)
print(mat2)
rownames=c("row1","row2","row3")
colnames=c("col1", "col2","col3")
mat3=matrix(seq(from=4,by=3,length=9),nrow=3,dimnames=list(rownames,colnames))
print(mat3)

#basic matrix operation
result1=mat1+mat2
cat("the addition of mat1 and mat2 is","\n")
print(result1)
result2=mat3-mat1
cat("the subtraction of mat1 from mat3","\n")
print(result2)
result3=mat2*mat1
cat("the matrix multplication of mat2 and mat1 is","\n")
print(result3)
result4=mat3/mat2
cat("the result of the division is","\n")
print(result4)
cat("the multiplication of mat1 and its transpose is","\n")
print(mat1%*%mat1)

#accesing the element of the matrix
print(mat1[3,1])
print(mat2[2,3])
print(mat3[2,])
print(mat3[,3])

#adding rows and columns to the matrices.

x<-matrix(rpois(20,10),nrow=4,dimnames=list(c("row1","row2","row3",
       "row4"),c("col1","col2","col3","col4","col5")))
x

#to return the sum of each row
rowSums(x)
#to return the sum of each columns
colSums(x)
#to return the mean rows
rowMeans(x)
#to return the mean columns
colMeans(x)

#ADDING MORE ROWS AND COLUMNS USING apply() funtion

#adding the column means to the row
x<-rbind(x,apply(x,2,mean))
#adding the row variances to the column
x<-cbind(x,apply(x,1,var))
x
rownames(x)<-c("row1","row2","row3","row4","mean")
colnames(x)<-c("col1","col2","col3","col4","col5","variance")
x
