a = 25
b <- "Hi"
False -> C
d = 5

# operators
## 1. Arithmetic
# +,-,*,/
# ^, %% : remainder, %/% : floor division
a%%3
a%/%3 # ans : 8
a%/% 26
3.8 %/% 2

## 2. Assigment operator
# = , <-, <<-,->
## 3. Relational
# >,<,==,!=, >=,<=
## 4. Logical 
# &,|,!
x = TRUE
y = FALSE
x & x  # TRUE
x & y # FALSE
x| y # TRUE
y | y # FALSE
!y # TRUE

## 5. Special operators
# : range operators
  # - it creates the series of numbers 
# %in% : if element belongs to a vector
h = 1:5
4 %in% h # TRUE
6 %in% h # FALSE

#### DATATYPES
#  Dataframes, Factors, Arrays, Matrices,
  # Lists, Vectors

# ------------------VECTORS------------------
# 1. VECTORS
  # - sequence of data elements of same data types
  # 5 classes of vectors
  # a. Character
    # "a", "Hello"
  # b. Complex
    # 3+2i
  # c. Integer
    # 2L, 34L
  # d. Numeric
    # 5,3.14
  # e.Logical
    # True, False
A = TRUE
B <- FALSE
C = 5
D = 5L # L tells R it is integer
# integers cannot store decimal values
# in numeric we can hold both type of values
# .'. numeric is whole set, integer is subset
F = "R is fun"

# c function is to combine into a vector or list
vtr <- c(1,3,5,11,45,23,67,55,51)
vtr1 <- c("Hi","Hello","Hey")
vtr2 <- c(2,"hi",1) # chr

sortedvtr <- sort(vtr)

vtr[2:6]
vtr[-1] # exclusing -1 give all

vtr[3] <- 15
vtr

vtr[11] <- 15
vtr # 1  3 15 11 45 23 67 55 51 NA 15
# value becomes NA ie. non applicable

#--------------------- LISTS --------------------
# Lists can store elements of diff data types
vtr2 <- c("hi",123,2L)
class(vtr2) # character

list1 = list("hey",FALSE, 123L)
sorted1 = sort(list1) # ERROR

# Operations on list
# 1. Merging
list2 = list("Hellom","R",45,25)
list3 <- merge(list1,list2)
list3
# merge or c both works
list4 <- c(list1,list2)
list4[2]

#------------ ARRAY ----------------
# Store data in more than 2 dimensions
vtr1 = c(2,6,123,44)
vtr2 <- c(5,15,25,35,85)
arr <- array(c(vtr1))
arr
arr2 <- array(c(vtr1,vtr2),dim=c(5,5,3))
arr2

# ----------- MATRIX --------------
# matrix is R object in which the elements are arranged
  # in a 2-D layout
# matrix(data,nrow,ncol,byrow, dimnames)
vtr1 <- c(2,4,6,8)
vtr2 <- c(3,33,333)
str <- matrix(c(vtr1,vtr2),6,5)
str


#----------- FACTORS --------------------
# Factors are data objects used to categorize the data
  # and store it as levels
# they can store both strings and integers
# they are useful in data analysis for statitical modeling
vt1 <- c(3,5,7,11,2,11,4)
# now we will create a factor out of this vector
factvtr <- factor(vt1)
factvtr # [1] 3  5  7  11 2  11 4 
  # Levels: 2 3 4 5 7 11
  # levels will give the unique values


# ----------- DataFrames-----------------
# A data frame is a table or a 2-d array like 
  # structure in which each column contains values of one
  # variable and each row contrains
  # one set of values from each column
id <- c(100:105)
name <- c("Dave","Eric","ZZ")
# now we will create a dataframe that will combine
classstd <- data.frame(id,name)
classstd

   id name
1 100 Dave
2 101 Eric
3 102   ZZ
4 103 Dave
5 104 Eric
6 105   ZZ

# so they are getting linked together