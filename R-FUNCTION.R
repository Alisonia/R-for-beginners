###############################################
# NAME:     ADEBIYI ALI ADENIRAN              #
# SCHOOL:   UNIVERSITY OF IBADAN              #
# DEPT:     STATISTICS DEPARTMENT             #  
# DEGREE:   B.Sc in view                      #
# DATE:     TILL DATE                         #
# PURPOSE:  R-FUNCTION                        #
###############################################
if(FALSE){"R-function is a set of statement organised together
  to perform a specific task. there are system inbuilt function and
  user defined funtion. the later is created using keyword
  function()"
}
syntax: func.name<-function(arg1, arg2, ,,,){
  funtion body
}
#CALLING A FUNCTION
func.name<-function(a){
  for(i in 1:a){
    b=i^2
    print(b)
  }
}
func.name(5)

#CALLING A FUNCTION WITHOUT AN ARGUMENT
func.name1=function(){
  for(i in 1:5){
    b=i^2
    print(b)
  }
}
func.name1()

#CALLING A FUNCTION WITH ARGUMENT(POSTION AND NAME)
func.name2=function(a,b,c){
  result=a*c-b
  print(result)
}

#by postion
func.name2(12,14,16)

#by name
func.name2(b=14,a=12,c=16)

#CALLING A FUNCTION(DEFAULT ARGUMENT AND NEW VALUE OF ARGUMENT)
func.name3=function(a=3,b=15){
  for(i in a:b){
    m=i*2
    print(m)
  }
}

#default argument
func.name3()

#new value of argument to replace a and b already defined
func.name3(2,8)
