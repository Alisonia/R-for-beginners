#1. For when the sample size (n)= 100 and the replication is 10. N=(100*10)=1000

# We first generate the data frame for rnorm with n=100 by the below;

n = 100
set.seed(33)
x1 = rnorm(n,0,1)
set.seed(03)
x2 = rnorm(n,0,2)
set.seed(332)
x3 = rnorm(n,0,1.5)
set.seed(330)
x4 = rnorm(n, 0,1.3)
set.seed(303)
x5 = rnorm(n,0,1.9)
set.seed(313)
x6 = rnorm(n,0,1.6)
set.seed(37)
x7 = rnorm(n,0,1.8)
set.seed(30)
x8 = rnorm(n)
set.seed(31)
x9 = rnorm(n,1,3)

set.seed(2468)
e=rnorm(n,0,1)
B0 = 2
B1 = 1
B2 = -0.34
B3 = -0.4
B4 = 0.05
B5 = 1.5
B6 = 1.2
B7 = 2.3
B8 = 3.12
B9 = 1.18

y=B0+(B1*x1)+(B2*x2)+(B3*x3)+(B4*x4)+(B5*x5)+(B6*x6)+(B7*x7)+(B8*x8)+(B9*x9)+e

norm_100 = data.frame(y,x1,x2,x3,x4,x5,x6,x7,x8,x9)

# norm here is the dataframe with n=100. We then replicate norm in 10 times

rep_norm = sapply(norm_100, rep.int, times=10)
View(rep_norm)
