x<--1 #assignment symbol
y<-1
z<-1

#Note that we can also use the equals sign for assignment,
#but we recommend against it, because using it can cause confusion

x
print(x)

#To see the value stored in a variable we simply type it like this.
#Or use print funtion

(-y+sqrt(y^2-4*x*z))/(2*x) #sqrt for square root function

ls #without parethesis give us code of ls
ls() # now function evaluated

log(8) # Here 8 is argument

# What we mean by nested is that you can call a function to get the argument that's going to be used by another function.
log(exp(1)) #inside out evaluation

args(log)

# Note that to specify arguments, we use the equal sign. We did not use the assignment argument.
log(8,base=2)
log(x=8,base=2) #both are same thing
#Because if no argument name is used, R assumes you're entering arguments in the order shown in the help file or by args.

?log # for query related to function
#Arithmatic and relational operators don't need parenthesis

data() # Give available datasets

pi
Inf

#Variable name have to start with a letter, and they can't contain spaces.
#You also want to avoid using variable names of objects that are already defined in R, because that will cause a lot of confusion.

#stick to lowercase 
#Instead of spaces, use underscores.

#the function "class" helps us determine the type of an object
class(x)

#You can access data set by loading the dslabs library,

library(dslabs)
data("murders") #data is stored in the object murders.
class(murders)

#The function "str" is useful for find what is this object. 
#str stands for structure, and it shows us the structure of an object.
str(murders)

# We can also show the first six lines of this data frame using the function "head".
head(murders)

#To access these variables, we use the dollar sign symbol.
#It's called the accessor.

murders$state #it preserves the order of the rows in our data table

#We can also get the names of the columns using the names function.
names(murders)

#Note that the object, murders dollar sign population, is not one number. It's 51.
#We call these types of objects vectors.
#The function length tells us lenght of dataset

pop <- murders$population
length(pop)

#This particular vector is a numeric vector since population sizes, are numbers
class(pop)

a <- 3==2 # equal equal is a relational operator asking if 3 is equal to 2.
class(a)

class(murders$region)
#Factors are useful for storing what is called categorical data.
#The regions are categorical.

p <- levels(murders$region)
p

#Turns out that saving categorical data this way is more memory efficient.
#So in R, in the background, we store integers.
#We store the levels as integers.

#Technically, integers are smaller memory-wise than characters. So this is what makes it more efficient.
#In general, we recommend avoiding factors as much as possible.

s <- levels(murders[["region"]]) # same as $
s

#we use identical to compare two objects
identical(p,s)

#The function table takes a vector as input and returns the frequency of each unique element in the vector.
# show the number of states per region
table(murders$region)