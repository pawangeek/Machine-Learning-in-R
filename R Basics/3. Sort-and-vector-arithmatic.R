#The function sort, sorts a vector in increasing order.
library(dslabs)
data(murders)
murders$total

# The function sort, sorts a vector in increasing order
#this does not give us any information about the states
sort(murders$total)

# The function order takes vector and return indices thaa sort vector
order(murders$total) #this is index to put this in order

# Rather than sort the vector, the function order gives us back the index that if used to index the vector, will sort it.
index <- order(murders$total)
murders$total[index]

#Let's define index with the order of the totals, and then index the murders abbreviations to see the states ordered by murder totals.
murders$abb[index] # so we see 'VT' has loweest total

#If we are only interested in the entry with the largest value,
#we can use the function max.
max(murders$total)
# which.max gives us the index where this number resides
which.max(murders$total)

# For the minimum, we can do the same with min and which.min
min(murders$total)

# For any given list, it gives you a vector with the rank of the first entry, second entry, et cetera.
x <- c(31,4,15,92,26)
rank(x)

# we create daraframe by data.frame
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)
city_temps

# The is.na returns a logical vector that tells us which entries are NA. 
# Assign the logical vector that is returned by is.na(na_example) to an object called ind

"Vector Arithmatic"
# In R, arithmetic operations on vectors occur element-wise.

#Suppose you want to convert them to centimeters.
#Note what happens when we multiply the object heights by the value 2.54. We get back each element multiplied by 2.54.
heigth <- c(54,46,78,65,43,74,86,58,69)
heigth*2.54

#we can subtract the average from every entry
mean(heigth)
heigth-63

#If we have two vectors of the same length,
# if we have two vectors or same length they get added entry by entry.
murder_rate = (murders$total/murders$population) *100000
murder_rate

# I'm going to look at the states ordered by murder rate, in this case, in decreasing order.
murders$state[order(murder_rate,decreasing=TRUE)]