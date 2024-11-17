###############################################
# NAME:     ADEBIYI ALI ADENIRAN              #
# SCHOOL:   UNIVERSITY OF IBADAN              #
# DEPT:     STATISTICS DEPARTMENT             #  
# DEGREE:   B.Sc in view                      #
# DATE:     TILL DATE                         #
# PURPOSE:  DATA TYPE 4:LIST                  #
###############################################

if(FALSE){"list is data types that contain element of different
  types, like num, int, log, chr, complex, matrix and another list"
}

#creating, naming, accessing, manipulation and mergin of list
list1=list(12.3,14L,TRUE, c("ALMIGHTY", "ALLAH"))
list1
list2=list(c(1,2,3), matrix(c(1,2,3,4), nrow=2), list(12L, FALSE))
list2
names(list2)<-c("Vector","Matrix","InnerList")
list2
list1[3]
list2$InnerList
list1[3]=FALSE     #replace 3rd element in list1 with FALSE
print(list1[3])
list2[4]="new element"    #add new element to list2
print(list2[4])
print(list2)              
list2[1]=NULL             #delete the first element in list2
print(list2[1])
print(list2)
list3<<-list(13L, TRUE, 12.3)
list(12, 13, FALSE) -> list4
merge.list1=c(list3, list4)   #combine the two list vertically
merge.list1
merge.list2=merge(list3,list4) #combine the two list horizontaly
merge.list2

if(FALSE){"a list can be converted to vector so that element of the vector 
  can be used for further manipulation. this is done by using using
  the funtion unlist()"
}

list5=list(1, 2, 3, 4, 5)
print(list5)
list(6,7,8,9,10)->list6
print(list6)
#now, we want to convert the list to vector
v1=unlist(list5)
cat("list5 becomes",v1,"after unlisting", "\n")
v2=unlist(list6)
cat("list 6 becomes",v2,"after unlisting", "\n")
cat("the product of the two converted list is",v1*v2,"\n")

#NOTE
if(FALSE){"the distinction between vector and list is that vector can 
  only store element of single types while list can store
  element of many different types."
  }