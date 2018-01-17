## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# sum() returns the sum of all values present in the argument, since the
# addition of ints and strings won't work (or just strings), sum(my.vector) 
# won't work

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# Need to load the package after installing it either with library(string)
# or through the "Packages" window and marking the stringr checkbox. After
# loading the package, it works

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# Variable name is incorrect, "initial" should be "initials"


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
vector1 <- c(1, 2, 3)
vector2 <- c("Hi", "this", "is", "library")
typeof(vector1) # type: double
typeof(vector2) # type: character

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vector1, vector2) {
  difference <- abs(length(vector1) - length(vector2))
  return (paste("The difference in lengths is", difference))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), c(1, 2, 3))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vector1, vector2) {
  v1 <- length(vector1)
  v2 <- length(vector2)
  if (v1 >= v2) {
    return (paste("Your first vector is longer by", v1 - v2, "elements"))
  } else {
    return (paste("Your second vector is longer by", v2 - v1, "elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c(1, 2, 3, 4, 5), c(1, 2, 3))
DescribeDifference(c(1, 2, 3), c(1, 2, 3, 4, 5))
DescribeDifference(c(1, 2, 3), c(1, 2, 3))

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(vector1, vector2, vector3) {
  c(vector1, vector2, vector3)
}

# Send 3 vectors to your function to test it.
CombineVectors(c(1, 2, 3), c(4, 5), c(6, 7))

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(vector) {
  
}