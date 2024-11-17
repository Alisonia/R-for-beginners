###############################################
# NAME:     ADEBIYI ALI ADENIRAN              #
# SCHOOL:   UNIVERSITY OF IBADAN              #
# DEPT:     STATISTICS DEPARTMENT             #  
# DEGREE:   B.Sc in view                      #
# DATE:     TILL DATE                         #
# PURPOSE:  CHART AND GRAPHICS IN R           #
###############################################

#SCATTER PLOT
if(FALSE){"Scatter plots are very good means of performing exploratory
  data analysis.
  syntax: plot(x,y,...)"
}

#for example

#generating two sets two of random numbers
x<-rnorm(20)
y<-rnorm(20)

#ploting x and y axis
plot(x, y)

#Labeling the chat as well as 'x' and 'y' axis
plot(x,y, main="GRAPH OF RANDOM NUMBERS",xlab="First random numbers",
     ylab="Second random numbers")

#Changing the size of the ploting character using 'cex' argument
plot(x,y, main="GRAPH OF RANDOM NUMBERS",xlab="First random numbers",
     ylab="Second random numbers",cex=0.7,cex.main=1,
     cex.axis=0.8,cex.lab=0.1)

#Changing the font's size using 'font' argument
plot(x,y, main="GRAPH OF RANDOM NUMBERS",xlab="First random numbers",
     ylab="Second random numbers",font.main=2,font.axis=3,font.lab=4)

#Changing the color using the 'col' argument
plot(x,y, main="GRAPH OF RANDOM NUMBERS",xlab="First random numbers",
     ylab="Second random number numbers",col="blue", col.main="red",
     col.axis="green",col.lab="blue")

if(FALSE){"we can also use the following parameters in a scatter plot
  pch:  changing plotting characters e.g 'pch=2, pch=22, pch="w" etc
  bg:   this change the background colour of the plot e.g. bg="red"
  fg:   this change the foreground colours of the plot e.g.fg="blue"
  las:  this change the y axis to, for instance horizontal for easy 
        reading e.g. las=1
  bty:  this change the graph to conventional specified shape depending on 
        the character we want. e.g. l,c,u,7 and so on e.g. bty="l"
  lim:  this is to set the limit of x and y using xlim=c() and ylim=c()"
}

#lets perform the above functions to see how it works
plot(x,y, main="GRAPH OF RANDOM NUMBERS",xlab="First random numbers",
     ylab="Second random numbers",pch=22, xlim=c(-2,2),ylim=c(-2,2),
     bg="blue", fg="green",las=1, bty="l",lwd=1,col="red")

#adding regression line on the graph using the abline() function
abline(lm(x~y), col=3, lty=3,lwd=6)

#ADVANCED GRAPH
library(ggplot2)
install.packages("tidyverse")
library(tidyverse)
qplot(CAL, geom="histogram")+xlab("CALABAR RAINFALL")

df2<- df %>%
  gather() %>%
  group_nest(key) %>%
  mutate(norm=map(data, ~rnorm(10000, mean(.x$value), sd(.x$value))))

ggplot()+
  geom_histogram(data=df2 %>% unnest(data), aes(value, fill=key, ..density..),
                 alpha=0.3)+
  geom_density(data=df2 %>% unnest(norm), aes(norm, col=key))+
  facet_wrap(~key)
