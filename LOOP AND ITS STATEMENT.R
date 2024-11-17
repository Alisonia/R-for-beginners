###############################################
# NAME:     ADEBIYI ALI ADENIRAN              #
# SCHOOL:   UNIVERSITY OF IBADAN              #
# DEPT:     STATISTICS DEPARTMENT             #  
# DEGREE:   B.Sc in view                      #
# DATE:     TILL DATE                         #
# PURPOSE:  R-LOOP and ITS CONTROL STATEMENT  #
###############################################
if(FALSE){"A loop statement allow us to execute a statement or group
  of statement multiple times. they are repeat loop, while loop and for 
  loop"
}
if(FALSE){"R-repeat loop: execute a statement again and again until 
the condition is met. It execute a code block and then 
check the condition.it define when to exist from the loop and
thus it is refer to as exist control loop"
}
syntax: repeat{
  commands
  if(condition){
    break
  }
}
#for instance:
x<-2
repeat{
  x=x+4
  print(x)
  if(x>15){
    break
  }
}

if(FALSE){"R-while loop: it execute a code block again and again until 
the condition is no longer met. it check the condition and then
execute the code block it define when to enter the code block and 
thus it is refered to as entry control loop"
}
syntax: while(conditon){
  statement
}
#for instance:
x<-2
while(x<15){
  x=x+4
  print(x)
}

if(FALSE){"R-for loop: it execute a code block for a given a number of times.
  it is used when we know how many time a loop is going to be executed, 
otherwise, we use repeat or while loop"
}
syntax: for(value in vector){
  statement
}

#for instance:
c("A","L","I","S","O","N","I","A") -> y
for(i in y){
  print(i)
}

if(FALSE){"R-break statement: it terminate the loop statement while
  R-next statement is useful to skip the current iteration without 
terminating it."
}
syntax: break and next respectively
#for instance
c("A","L","I","S","O","N","I","A") -> y
for(i in y){
  if(i=="A")
    next
  print(i)
}
#printing even numbers number from 1 to 20
for (i in 1:20)
{
  if((i%%2)!=0){         #all odd numbers will be skipped
    next
  }
  print(i)
}