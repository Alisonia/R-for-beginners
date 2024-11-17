###############################################
# NAME:     ADEBIYI ALI ADENIRAN              #
# SCHOOL:   UNIVERSITY OF IBADAN              #
# DEPT:     STATISTICS DEPARTMENT             #  
# DEGREE:   B.Sc in view                      #
# DATE:     TILL DATE                         #
# PURPOSE:  EXAM PRACTICE                     #
###############################################

#THIS functions COMPUTE THE SUM OF 4-nos raised to power of 4
number<-function(r){y<-r^4
            sy=sum(y)
              return(sy)
}
r=1:20
number(r)

#THIS functions COMPUTE THE mean of numbers
miu<-function(x){sy=sum(x)
      len=length(x)
        ave=sy/len
          return(ave)
}
x<-c(2,4,5,6,7,8,9)
miu(x)

#THIS functions COMPUTE THE mean differences of two data X and Y
midif<-function(x,y){mx=mean(x)
        my=mean(y)
          dif=mx-my
            return(dif)
}
x<-rnorm(20)
y<-rnorm(20)
midif(x,y)

#THIS functions COMPUTE THE geometric mean i.e. exp(mean(logx))
gmean<-function(x){y<-log(x)
      sy<-sum(y)
        len=length(x)
          ave=sy/len
          gm<-exp(ave)
            return(gm)
}
z=c(3,4,5)
gmean(z)

#THIS functions COMPUTE THE sample variance and its deviation
vasd<-function(x){m<-mean(x)
        k<-(x-m)^2
          sk=sum(k)
            len=length(x)-1
              va=sk/len
                s=sqrt(va)
            cat("variance=",va,"and sdeivation=",s,"\n")
}
y<-seq(from=4,by=3,length=9)
vasd(y)

#THIS IS another functions.
func.1<-function(x){m<-mean(x)
          len=length(x)
            s1<-sum((x-m)^3)
              s2<-sum((x-m)^2)
                sn=s1/len
                  sm=(sqrt(s2/len))^3
          sk=sn/sm
          return(sk)
}
x=c(23,56,17,90,56)
func.1(x)

#THIS function compute the roots of quadratic equation

quad.root<-function(a,b,c){
  d<-b^2-4*a*c
  if(d<0){
   print("the equation has no solution, convert to complex number")
      d<-as.complex(d)
      r1<-(-b+sqrt(d))/2*a
      r2<-(-b-sqrt(d))/2*a
        roots=list(r1,r2)
          names(roots)<-c("First root","Second root")
      return(roots)
  }else if(d>0){
    print("the equation has two real roots")
      r1<-(-b+sqrt(d))/2*a
      r2<-(-b-sqrt(d))/2*a
        roots=list(r1,r2)
          names(roots)<-c("First root","Second root")
    return(roots)
  }else{
    print("the equation has equal root")
      root<- (-b)/2*a
    return(root)
  }
}
quad.root(2,0,2)

#this functions is another ways of getting roots of equations
quad.root<-function(a,b,c){
  d<-b^2-4*a*c
  if(d<0)
    d<-as.complex(d)
    r1<-(-b+sqrt(d))/2*a
    r2<-(-b-sqrt(d))/2*a
    roots=list(r1,r2)
    names(roots)<-c("First root","Second root")
    return(roots)
}
quad.root(1,0,1)

#this function compute combination of numbers
func<-function(n,r){
  if(n<r){
    print("there is no solution")
    }else{
      nf<-factorial(n)
      rf<-factorial(r)
      df<-factorial(n-r)
      result<-nf/(df*rf)
      return(result)
    }
}
func(6,2)

#this function compute the correlation of two sets X and Y
r<-function(x,y){
  n<-length(x)
  num<-n*sum(x*y)-sum(x)*sum(y)
  y1<-n*sum(x^2)-(sum(x))^2
  y2<-n*sum(y^2)-(sum(y))^2
  dnm<-sqrt(y1*y2)
  result<-num/dnm
  return(result)
}
set.seed(10)
x<-rnorm(20)
y<-rnorm(20)
r(x,y)
all.equal(r(x,y),cor(x,y))

#QUESTION 2
d<-mtcars
names(d)      #return the names of all the variables in mtcars
View(d)       #it display the data in the script file
summary(d)
boxplot(d)    #it checks for outliers

#Histogram of Hp
hist(d$hp, main="HISTOGRAM OF GROSS HORSEPOWER",xlab="
Performance of Automobile Horsepower",ylab="Frequeny",
     las=1,col="blue")

#Histogram of qsec
hist(d$qsec, main="HISTOGRAM 1/4MILES TIMES",
xlab="Performance of Automobile",ylab="Frequeny",las=1,
col="red")

#scatter plot of variables Miles and Displacement

plot(d$mpg,d$disp, main="Scatter plot of mpg and disp"
     ,xlab="Miles(US) gallon",ylab="Displacement",
     las=1,col="blue", bty="l")

x=0.3
for(i in 1:4){x=x+i
print(x)
}

i=1
if(i<10){
  i=i+1
  print (i)
 }
