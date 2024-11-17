###############################################
# NAME:     ADEBIYI ALI ADENIRAN              #
# SCHOOL:   UNIVERSITY OF IBADAN              #
# DEPT:     STATISTICS DEPARTMENT             #  
# DEGREE:   B.Sc in view                      #
# DATE:     TILL DATE                         #
# PURPOSE:  R-STRING                          #
###############################################
if(FALSE){"String is any value written in a pair of single
  or double quote."}

#CONCATENATING STRING: string are combine using paste() function
syntax: paste(..., sep=" ", collapse=NULL)
a="Ali"
b<<-"and"
"sonia girl"->c

#commbining string
print(paste(a,b,c))

#adding seperator between the argument
print(paste(a,b,c, sep="~"))

#eliminating the space between two strings not word of the same string
print(paste(a,b,c, sep="", collapse = ""))

#FORMATTING STRING: number and string can be formated using format() function
syntax: format(x, digits, nsmall, scientific, width, 
               justify=c("left","right","center","none"))

#number of digit to be displayed, last digit rounded off
rst1=format(12.3456789, digits = 4 )
print(rst1)

#minimum number of digits to the right of decimal point
rst2=format(12.34, nsmall = 3)
print(rst2)

#display number in scientific notation
rst3=format(6, scientific = TRUE)
print(rst3)

#right justified string
rst4=format("ifemi", width = 8,justify = "r")
print(rst4)

#left justified string
rst5=format("ifemi", width=8, justify="l")
print(rst5)

#center justified string
rst6=format("ifemi", width = 8, justify="c")
print(rst6)

#COUNTING NUMBER OF CHARACTER: using nchr() function 
rst7=nchar("ALLAH is the superior being")
print(rst7)

#UPPER AND LOWER CASE: toupper() and tolower() functions
rst8=toupper("morenikemi")
print(rst8)

rst9=tolower("MORENIKEMI")
print(rst9)

#EXTRACTING STRING: substring() function
syntax: substring(text, first, last)    

rst10=substring("morenikemi", 1, 8)
print(rst10)
