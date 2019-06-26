#The most basic unit available in R to store data are vectors.
#Complex datasets can usually be broken down into components that are vectors.

# One way to create vector is by using the function c,
# hich stands for concatenate
codes <- c(310,125,218)
class(codes)

#We can also create character vectors.
#We use the quotes to denote that the entries are characters rather than variables.
country <- c("italy","canada","egypt")
class(country)

#If you don't use the quotes, R looks for variables with those names,
#And it will return an error

coun <- c(italy=312,india=320,chile=139)
class(coun) #numeric class still

#But you should know that you can use strings here.
#You can do the same exact expression.

coun <- c("italy"=312,"india"=320,"chile"=139)
coun
class(coun)


#we can also use the names functions to assign names to the entries of a vector.
codes <- c(312,320,139)
country <- c("italy","india","chile")
names(codes) <- country
codes

#another useful function for creating vectors, and we use this often, is a function that generates sequences.
#seq, stands for sequence.

# I type seq, then from 1, 10, it writes out the numbers from 1 to 10,
seq(1,10)

# So for example, if I type seq(1, 10, 2), it would write out the odd numbers from 1 to 9.
seq(1,10,2)

#for consecutive integers, we can use the following shorthand.
1:10

#subsetting lets us access specific parts of a vector.
#We use square brackets to access elements of a vector.
codes[2]

#You can get more than one entry by using a multi-entry vector as an index.
codes[2:3]

#If the elements have names, we can also access the entries using these names.
codes["india"]

"Vector coercion"
#In general, coercion is an attempt by R to be flexible with data types.
#When an entry does not match the expected, R tries to guess what we meant before throwing in an error.

x <- c(1,"canada",3)
x
# It says quotes 1, quotes canada, quotes 3, has converted the 1 and the 3 to character strings.

class(x)
# oh no all character
# We say that R coerced the data into a character string.

# you can turn numbers into characters with the as.character function.
x<-1:5
y<-as.character(x)
y

as.numeric(y)

#Missing data is very common in practice.
#In R, we have a special value for missing data.
#It's the NA.
#We can get NAs from coercion.

#For example, when R fails to coerce something, it tries to coerce but it can't, we will get NA
x <- c("1","b","2")
x

as.numeric(x)
# Warning message in eval(expr, envir, enclos): “NAs introduced by coercion”
# R does not have any guesses of what to do. So instead of converting b to a number, it tells us it's an NA