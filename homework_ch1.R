# 1) Create variables x and y with numbers of your choice and illustrate 
# algebraic operations with them.
x <- sample(1:100, 1)
y <- sample(1:100, 1)
z = x^y+sample(1:100, 1)-x%%sample(1:15, 1)

# Create a vector xv of numbers from -3 to 6 using colon operator and illustrate
# arithmetic operations with it. 
xv <- -3:6
xv + 5; xv-10; xv^2;

# Use xv = seq(-10,10,by=5) to create a vector with different step, cube its 
# elements, and sum them using sum() function.
xv <- seq(-10, 10, by = 5)
sum(xv^3)

# Create several strings and combine them into a list
fname <- "Abraham"
lname <- "Neuwirth"
major <- "Computer Science"
minor <- "Mathematics"
info <- list(fname, lname, major, minor)

# 2) Let our small data set be 2 5 4 10 8. Enter this data into a vector x using
# c(). Find the square of each number. Subtract 6 from each number. Subtract 9 
# from each number, square the answers, and average them.

x <- c(2, 5, 4, 10, 8)
x^2
x-6
mean((x-9)^2)

# 3) Make a vector, z, containing a sequence of 10 randomly generated men's 
# height using normal distribution with a mean of 69 and a standard deviation of
# 2.5. Perform operations on it similar to section 1.3.1. Replace one element by
# NA and compute mean() with and without this NA element.
z <- rnorm(n = 1000000, mean = 69, sd = 2.5)
mean(z)
sd(z)
z[sample(1:10, 1)] <- NA
mean(z)
mean(z, na.rm = T)

# 4) Produce a 3 by 3 matrix with numbers of your choice and carry operations
# similar to section 1.3.4
A <- matrix(seq(2, 18, by =2), nrow = 3)


# 5) Create a ragged (different size) list of 4 data vectors and find mean and 
# sd of each element similar to 1.3.5
vec1 <- rnorm(n= 10)
vec2 <- c(123, 653, 653,1234)
vec3 <- seq(1, 50, by =5)
vec4 <- runif(25, min = 4, max = 100)
vector_list <- list(vec1, vec2, vec3, vec4)
lapply(vector_list, mean)
lapply(vector_list, sd)
