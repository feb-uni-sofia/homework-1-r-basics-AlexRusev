## WARNING: please write your solution in the files Problem_1.R, Problem_2.R, etc. 
## otherwise your files will _not_ be reviewed and will _not_ graded.

# a)
x <- c(4, 1, 1, 4)

# b)
y <- c(1, 4)

# c) - since y is shorter than x, the elements of y (2 elements: 1 and 4) are repeated until y
# becomes the same length as x (we get y <- c(1,4,1,4)) and this can only happen if the longer
# vector's length is a multiple of the shorter vector's legth. In our case this holds true and
# we get x(4,1,1,4)-y(1,4,1,4)=z(3,-3,0,0)
z <- x - y

# d)
s <- c(x, y)

# e)
length <- rep(s, 10)
length(length)

# f)
rep(s, each=3)

# g)
seq(7, 21)
7:21

# h)
length(seq(7, 21))
length(7:21)
