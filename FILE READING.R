###############################################
# NAME:     ADEBIYI ALI ADENIRAN              #
# SCHOOL:   UNIVERSITY OF IBADAN              #
# DEPT:     STATISTICS DEPARTMENT             #  
# DEGREE:   B.Sc in view                      #
# DATE:     TILL DATE                         #
# PURPOSE:  R-FILE READING                    #
###############################################

if(FALSE){"get working directory using getwd() func. set your prefered working
directory using setwd() func. then, read the files. the file could be
.csv: comma seperated varibale, .prn: space seperated varibale, .txt: tab seperated 
variable"
}


#getting working directory
getwd()

#setting working directory
setwd("C:/Users/ADEBIYI ALI/Desktop/R-PRACTICE")

#csv files
read.csv("file path\\filename.csv", header = T, sep = ",")
read.csv("file path\\filename.csv", header = T)

#prn files
read.table("file path\\filename.prn", header=T, sep = "")

#txt files
read.table("file path\\filename.prn", header=T, sep = "\t")

if(FALSE){"EXCEL FILES: R can also read excel files in xls or xlsx. format
  procedure: install xlsx package using install.packages("xlsx") func.  verify the
install packages using any(grepl("xlsx", install.packages())), then, load the 
library into the R workspace using the func. library("xlsx")"
}

#xls or xlsx files
read.xlsx("file path\\file name.xlsx", header=T)

#CSV FILES AS A CASE STUDY
getwd()
setwd("C:/Users/ADEBIYI ALI/Desktop/R-PRACTICE")
dir()
data=read.csv("Data files\\edureka.csv")
data

#showing at least, the first four of the data
head(data)

#showing the structure of the data
str(data)

#platform to edit the data and variable names
fix(data)

#show data in an table format
View(data)

#checking if the data is data frame, ncol and nrow
is.data.frame(data)
ncol(data)
nrow(data)

summary(data)
mean(data$salary)
with(data,mean(salary))
max(data$salary)
min(data$salary)
summary(data$salary)

#extracting sub.data using subset() func.
dataIT=subset(data, dept=="IT")
dataIT

datasal=subset(data, salary>600)
datasal

dataFin=subset(data, salary>600 & dept=="Finance")
dataFin

datadate=subset(data, as.Date(start_date)>as.Date("2014-01-01"))
datadate

#writing csv file
write.csv(dataIT, "dataIT.csv", row.names=FALSE)
write.csv(dataIT, "dataIT.csv")
IT=read.csv("dataIT.csv")
IT
View(IT)

write.csv(dataFin, "dataFin.csv", row.names=FALSE)
finance=read.csv("dataFin.csv")
finance
View(finance)

write.csv(datadate, "datadate.csv",row.names=F)
date=read.csv("datadate.csv")
date
View(date)
