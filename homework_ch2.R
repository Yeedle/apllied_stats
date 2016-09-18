# 1) Work with today date similar to section 2.1
Sys.Date()+5

# 2) Produce a small text file with quote of your choosing and manipulate it as 
# in 2.2 replacing part of it.
writeLines("Be the change you wish to see in the world.", con = "gandhi")

# 3) The average distance from the center is computed by 
# (|x1 −xbar| + · · · + |xn − xbar|)/n, where xbar is the mean of the data 
# vector. Compute this for the rivers data set ( library(UsingR)) using the 
# function sum() to add the values and abs() to find the absolute value.

#install.packages("UsingR")
library(UsingR)
data("rivers")
sum(abs(rivers-mean(rivers)))/length(rivers)

# 4) Use summary() to investigate Pima.tr ( from library(MASS) ) – pay 
# particular attention to the last variable called type (Diabetes) . 
library(MASS)
data("Pima.tr")
summary(Pima.tr)
# Select subsets of column variables 3 to 5 (also using names of variables in 
# subset() ), then rows 10 to 20, and finally bmi more than 30 and blood 
# pressure more than 85. Select rows satisfying bmi >29 and display 
# corresponding glu, age and type. Use which() to discover rows of super-obese 
# women with bmi > 45 and display corresponding information from the whole data
# frame. Produce histogram of bmi. Add a new variable to Pima.tr data frame 
# called obese which assigns TRUE if bmi>30 and FALSE overwise.