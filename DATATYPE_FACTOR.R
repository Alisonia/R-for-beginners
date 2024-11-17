###############################################
# NAME:     ADEBIYI ALI ADENIRAN              #
# SCHOOL:   UNIVERSITY OF IBADAN              #
# DEPT:     STATISTICS DEPARTMENT             #  
# DEGREE:   B.Sc in view                      #
# DATE:     TILL DATE                         #
# PURPOSE:  DATA TYPE 5: FACTOR               #
###############################################

if(FALSE){"factors are data objects which are used to categorised data
  and stored it as levels. they stored both string and integers. they 
  are useful in a coulmn which have limited numbers of unique value
  like: males, females, true, false etc. they are useful in data analysis 
  for statistical modelling"
}

#creating factor by using the function factor()
data=c("east", "west", "west", "north", "west", "east", "north")
data
is.factor(data)
factor.data=factor(data)
is.factor(factor.data)
factor.data
factor.data=factor(data, levels=c("east","west","north"))  #rearranging the levels
factor.data

#factors in data frame
if(FALSE){"on creating any data frame with a column or text data,
  R treats such column as a categorical data and create
  factors on it."
}

height=c(132,151,162,178,119)
weight=c(48,45,67,78,14)
gender=c("male","female","female","male","male")
dataframe=data.frame(height,weight,gender)
dataframe
is.factor(dataframe$gender)
print(dataframe$gender)

if(FALSE){"generating factors levels using the funtion 
gl(n, k, m, labels). n is the integer giving the number of levels,
  k is an integer giving the replication of levels, m is the required length
  and lables is vectors of lables for the resulting factors levels"
}

v=gl(3, 4, labels=c("ALLAH", "IS", "ONE"))
print(v)


#FOR INSTANCE
sex=gl(2,3,10, labels = c("male","female"))
school=gl(3,2,10, labels = c("primary","secondary","tetiary"))
status=gl(4,3,10, labels = c("single","married","divorce","seperated"))
income=gl(3,4,10, labels = c("low","medium","high"))
data=data.frame(sex,school,status,income)
print(data)
is.factor(data$income)
