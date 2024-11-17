###############################################
# NAME:     ADEBIYI ALI ADENIRAN              #
# SCHOOL:   UNIVERSITY OF IBADAN              #
# DEPT:     STATISTICS DEPARTMENT             #  
# DEGREE:   B.Sc in view                      #
# DATE:     TILL DATE                         #
# PURPOSE:  DATA TYPE 5: ARRAY                #
###############################################
if(FALSE){"Array are R data objects which can store data in more than
  two dimensionas. e.g.an array of dimension (2,3,4) creates 4 rectangular
  matrices with 2 rows and 3 columns. it is created using the funtion array()
  and it can store only data types"
}

#creating an array
v1=c(3,5,9)
v2=c(10,11,12,13,14,15)
rownames=c("r1","r2","r3")
colnames=c("cl","c2","c3")
matrixnames=c("matrix1","matrix2","matrix3")
arr1=array(c(v1,v2), dim=c(3,3,3),dimnames=list(rownames,colnames,matrixnames))
print(arr1)

#accessing array element
print(arr1[,,2])        #print matrix 2
print(arr1[1,3,3])      #print row1,col3 of matrix3
print(arr1[3,,1])       #print third row of first matrix

#manipulating array element
rownames=c("r1","r2","r3")
colnames=c("cl","c2","c3")
matrixnames=c("matrix1","matrix2")
v1=c(3,5,9)
v2=c(10,11,12,13,14,15)
arr1=array(c(v1,v2), dim=c(3,3,2),dimnames=list(rownames,colnames,matrixnames))

v3=c(4,7,5)
v4=c(16,17,18,19,20,21)
arr2=array(c(v3,v4), dim=c(3,3,2),dimnames=list(rownames,colnames,matrixnames))
mat1=arr1[,,2]
mat2=arr2[,,1]
cat("the addition of the two matrices is","\n")
print(mat1+mat2)

#calculation accross array element using apply function
if(FALSE){"syntax=apply(x,margin,fun)
  x is an array. margin is the name of the data set used.seed
  fun is the funtion to be apply accros the element of
  array, e.g. sum, average etc"
  }
new.array=apply(arr1, c(1), sum)
print(new.array)
new.array2=apply(arr1, c(2), sum)
print(new.array2)
new.array3=apply(arr1, c(3), sum)
print(new.array3)