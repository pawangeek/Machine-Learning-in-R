# dplyr package, provides intuitive functionality for working with tables.
library(dplyr)
library(dslabs)

# For example, to change the data table by adding a new column or changing an existing one
# we use mutate

# To filter the data by subsetting rows, we use the function filter

# And to subset the data by selecting specific columns, we use select.

# We can also perform a series of operations--
# for example, select this and then filter that by sending the results of one function to another function
# called the pipe operator.

data(murders)
murders

# We say mutate, then murders. That's the first argument.
# That's the table we're going to manipulate. And then we define a new column called rate
murders <- mutate(murders,rate=total/population*100000)
murders

#The mutate function knows to look for these variables in the murders data frame rather than in the workspace.

#Suppose that we want to filter the data table to only show the entries for which the murder rate is lower than 0.71.
#filter function takes data table as first argument and the conditional statement as the next.
filter(murders,rate<0.71)

# So it's useful to select just the columns that you want to work with.
# Here we defined a new object, new_table. And it's the murders data table, but only three columns
new_table <- select(murders,state,rate,region)
new_table

# Note that in the call to select, the first argument, murders, is an object. It's the data table.
# But state, region, and rate are variable names from that table.

# pipe operator
murders %>% select(state,region,rate) %>% filter(rate <=0.71)

# Know that when using the pipe, we no longer need to specify the required argument as the dplyr function assumes that whatever is being piped is what should be operated on.

# Now, be warned, by default, data.frame turns characters into factors.
# To avoid this, we use the rather cumbersome argument stringsAsFactors

grades <- data.frame(names=c("Pawan","Abhishek","salil"),exam_1 = c(85,87,89),exam_2 = c(89,87,85))
class(grades$names) # to avoid this put stringsAsFactors=False while creating dataframe

# Note that if you want ranks from highest to lowest you can take the negative and then compute the ranks
# Use nrow() to calculate the number of rows

"Basic plot"

population_in_million <- murders$population/10^6
total_murders <- murders$total

# scatter plot
plot (population_in_million,total_murders)

#histogram
# powerful graphical summaries of a list of numbers that gives you a general overview of the types of values you have.
hist(murders$rate)

# boxplot
# box plots provide a more terse summary than the histogram, but easier to stack against each other
boxplot(rate~region,data=murders)

#South has the highest murder rate of all regions.