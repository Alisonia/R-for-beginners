###############################################
# NAME:     ADEBIYI ALI ADENIRAN              #
# SCHOOL:   UNIVERSITY OF IBADAN              #
# DEPT:     STATISTICS DEPARTMENT             #  
# DEGREE:   B.Sc in view                      #
# DATE:     TILL DATE                         #
# PURPOSE:  DATA TYPE 1:VECTOR                #
###############################################

#DEIFINITION
if(FALSE){
  "vecotrs are most basic R objects, it can either be one of atomic vector
  logical, integer, numeric, raw, character, and complex"
}
#CREATIN A VECTOR
v1 <- 1:5
print(v1)
v2 = 1.2:13.5
print(v2)
c("ALLAH", "is", "ONE") -> v3
print(v3)
v4 <<- c(5, 2, 14, 4.1)    #c means combination of
print(v4)
v5 = charToRaw("hello, my sweety")
print(v5)

#CREATING VECTOR WITH SEQUENCE OPERATOR
v1 = seq(3,15,2)          #seq(initial value, final value, increment)
v2 <- seq(from=2, by=3, length=6)
print(v1) ; print(v2)
c(11,12,13,14,15,16,17,18,19,20) -> M
v3 <<-seq(0.04, by=0.01, along=M)   #along: v3 and M will have the same length
print(v3)
plot(v3, M)

#ACCESSING THE VECTOR ELEMENT 
if(FALSE){"vectors are accessed by using indexing i.e. [], or boolean values,
  0 or 1 can also be used for indexing" 
}
f=c("may", "Allah", "forgive", "us", "our", "sin")
d <- c(1, 2, 3, 4, 5, 6, 7)
print(f[2])                 #give the element in position 2
print(d[3:6])               #print element from position 3 to 6
print(f[c(2,3,4,5,6)])
print(f[-4])                #exclude the element in position and print the result
print(d[c(-1,-7)])
print(f[c(FALSE, TRUE, TRUE, TRUE, FALSE, FALSE)])  #print element corr to TRUE
print(d[c(0,1,1,1,0,0,1)])   #drop element corresponding to 0
f[1]<-"please"       #replace vector in position 1 with please
print(f)
d[10]<- 10           #assign value 10 to the 10th position in vector d
print(d)

#SORTING ELEMENT IN A VECTOR
if(FALSE){"sorting is the arrangement of vector in a decreasing or 
increasing order. it is done using the function sort()"
}
y=c(3, -1, 4, -9, 4.5, 6, 59)
print(y)
sort(y)
print(sort(y, decreasing = TRUE))     #decreasing order
lov=c("my", "love", "for", "morenikemi", "is", "Allah's", "will")
print(lov)
print(sort(lov))                     #alphabetical order
print(sort(lov, decreasing = TRUE))  
