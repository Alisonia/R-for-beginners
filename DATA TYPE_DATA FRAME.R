###############################################
# NAME:     ADEBIYI ALI ADENIRAN              #
# SCHOOL:   UNIVERSITY OF IBADAN              #
# DEPT:     STATISTICS DEPARTMENT             #  
# DEGREE:   B.Sc in view                      #
# DATE:     TILL DATE                         #
# PURPOSE:  DATA TYPE 6: DATA FRAME           #
###############################################

if(FALSE){"A data frame is a table or two dimensional array-like structure in 
which each coulmn contain values of one variable and each rows contain one 
set of values from each coulmn. the data can be num, fac, or chr"
}

#creating data frame

std.id=c(1:5)
std.name=c("Ali","Idris","Muiz","Mubaraqa","Mujib")
std.weight=c(78,72,58,34,49)
std.height=c(123,124,125,126,127)
std.DOB=as.Date(c("1992-12-19","1994-04-14","2000-01-23","1991-04-20","1994-06-19"))
std.age=c(25,25,22,20,28)

dir.data=data.frame(std.id,std.name,std.weight,std.height,std.DOB,
           std.age,stringsAsFactors=FALSE)
print(dir.data)

str(dir.data)
summary(dir.data)
fix(dir.dat)

#extracting some data from dir.data
smdata=data.frame(dir.data$std.id,dir.data$std.name,dir.data$std.weight)
print(smdata)
print(dir.data[c(3,5), c(2,4)])

#Adding more column
dir.data$std.dept=c("stat","phy","econ","zoo","law")
dir.data

#adding more rows using rbind() funtion
std.id=c(6,7)
std.name=c("rasaq","yusuf")
std.weight=c(23,24)
std.height=c(122,128)
std.DOB=as.Date(c("1992-4-12","1996-10-14"))
std.age=c(18,19)
Adir.data=data.frame(std.id,std.name,std.weight,std.height,std.DOB,
                     std.age,stringsAsFactors=FALSE)
Adir.data
Fdir.data=rbind(dir.data,Adir.data)
Fdir.data
