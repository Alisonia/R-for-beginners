###############################################
# NAME:     ADEBIYI ALI ADENIRAN              #
# SCHOOL:   UNIVERSITY OF IBADAN              #
# DEPT:     STATISTICS DEPARTMENT             #  
# DEGREE:   B.Sc in view                      #
# DATE:     TILL DATE                         #
# PURPOSE:  DECISION MAKING: if,if else,switch#
###############################################
#R-if statement: 
if(FALSE){"used if only one or more boolean expression statement will follow the 
  if. if the boolean statement is true, then the block of the code
  inside the statement will be executed or otherwise"
}
syntax: if(boolean expression)
  statement will be executed
}
#FOR INSTANCE
vt1=seq(3,15,2)
if(13%in%vt1){
  print("13 is found in the vector")
  print("13 is both an odd number and prime number")
}

#R-if else statement:
if(FALSE){"used when we want to test two alternative condition and only
  one should be executed. if the statement in the if block is false,
  then, that of else block will be executed"
}
syntax: if(boolean expression){
  statement here will be executed if the expression is true
} else{
  statement here will be executed if the expression is false
}
#FOR INSTANCE
vt2<-c("to","Allah","we","belong")
if("Allah" %in% vt2){
  print("Allah is the superior mighty")
}else{
  print("what am I without Allah")
}

#R-if...else if...else statement
if(FALSE){"this is useful if we have several condtions and only 
  a single valid one is to be executed"
}
syntax: if(expression 1){
  excute statement 1 if the expression 1 is true
}else if(expression 2){
  excute statement 2 if the expression 2 is true
}else if(expression 3){
  excute statement 3 if the expression 3 is true
}else if(expression 4){
  excute statement 4 if the expression 4 is true
}else{
  execute the last statement if none of the above is true
}
#FOR INSTANCE
vt2<-c("to","Allah","we","belong")
if("We" %in% vt2){
  print("we is found the first time")
}else if("we" %in% vt2){
  print("we is found the second time")
}else{
  print("i dont know where we belong to")
}

#R-switch statement
if(FALSE){"switch statement allows a variables to be tested for equality
  among a list of values. each values is called a case and
  the variable being switched on is checked for a case"
}
syntax: switch(expression, case1, case2, case3, ....)
#FOR INSTANCE
x<-c(100, 125, 120, 100, 90,95)
option= "median"
switch(option, 
       "mean"=print(mean(x)),
       "median"=print(median(x)),
       "mode"=print(mode(x)),
       print("input not valid")
)
