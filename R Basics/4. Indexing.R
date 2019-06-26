# R provides a powerful and convenient way of indexing vectors.
# We can, for example, subset a vector based on properties of another vector.

#  we can use logicals to index vectors.

library(dslabs)
data(murders)

murder_rate = murders$total/murders$population *100000
murder_rate

#We're going to define index as the murder rate smaller than 0.71,
#if it's less or equal, we can use less than or equal.

index <-murder_rate<0.71
index

# To see which states these are, we can leverage the fact that vectors can be indexed with logicals.
murders$state[index]

#Another nice feature is that to count how many entries are true,
#function sum returns the sum of these entries.

#This is because the logical vector gets coerced to numeric.
sum(index)

#Knowing this, we can use the "&" to get a vector of logicals and find out which states satisfy our two conditions.
west <- murders$region == 'West'
safe <- murder_rate <1

murders$state[west & safe]

"Indexing Function"

# "which" gives us the entries of a logical vector that are true
x <- c(FALSE,TRUE,FALSE,FALSE,TRUE)
class(x)
which(x)

#type index which, state equals Massachusetts. And index will be 22.
#That's because that's the only entry that was true.
index <- which(murders$state=='Massachusetts')
index

murder_rate[index]

# "match" looks for entries in a vector and returns the index needed to access them.
# This function tells us which indices of the second vector match each of the entries of a first vector.
index <- match(c("New York","Florida","Texas"),murders$state)
murder_rate[index]

# If rather than an index, we want to know whether or not each element of a first vector is in a second vector, we use the function %in%.
x<-c(1,4,3,7,9)
y<-c(2,4,7,6)

y %in% x

# You type Boston, Dakota, Washington and check to see if they're in the state vector.
state <- c("Boston","Washington","Mumbai")
state %in% murders$state