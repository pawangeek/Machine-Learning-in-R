# The most common conditional expression is the if-else statement
a<-2
if(a!=0){print(1/a)} else{print("no reciprocal")}4

x <- c(1,2,-3,4)
if(all(x>0)){print("All Positives")} else{print("Not All Positives")}

library(dslabs)
data(murders)

murder_rate <- murders$total/murders$population *100000

# which states, if any, have murder rates lower than 0.5?
ind <- (which.min(murder_rate))
if(murder_rate[ind] <0.5){print(murders$state[ind])} else{print("no one")}

#A related function that is very useful is the ifelse function, one word, "ifelse"

#This function takes three arguments, a logical, and two possible answers
ifelse(a>0,1/a,NA)

# But the function is particularly useful, because it works on vectors.
# It examines each element of the logical vector

# this function can be readily used to replace all the missing values in a vector with zeros.
data(na_example)
sum(is.na(na_example))
length(na_example)

no_nas <- ifelse(is.na(na_example),0,na_example)
sum(is.na(no_nas))
length(no_nas)

#any takes a vector of logicals and it returns true if any of the entries is true
z<-c(TRUE,FALSE,TRUE)
any(z)

#all function takes a vector of logicals and returns TRUE if all the entries true
all(z)

"Loops" 
# avf=g <- function(x,arithmetic=TRUE) {n<-length(x)  ifelse(arithmetic, sum(x)/n,prof(x)^(1/n))}

# So the general way to define functions is as follows.
# decide on a name that will be an object.
# type the function function, is what lets R know that you are defining a function.
# I have the arguments inside parentheses.
# then with brackets, I put all the operations that operate on 

#Note that functions can have more than one variable.
#The way you define them is by having multiple arguments.

#The function nchar tells you how many characters long a character vector is.
# Write a function compute_s_n that with argument n and returns of 1 + 2^2 + ...+ n^2
compute_s_n <- function(n) {
  x <- 1:n
  sum(x^2)
}
compute_s_n(10)

#For-loops let us define the range that our variable takes.

#For i in some range, and then the operationsthat assume i is a value that you're interested in computing on.
#This i is going to be changing across the range of values.
for (i in 1:5) {print(i)}

m <- 25

# an empty vector where I'm going to store the results as I compute them.
s_n <- vector(length=m)
s_n

# n is the value that's changing from 1 through 25. And as I evaluate that, I assign it to the vector in the nth entry.
for (n in 1:m){ s_n[n] <- compute_s_n(n)}
s_n

n <- 1:m
plot(n,s_n)
lines(n,n*n^2/2.8)
