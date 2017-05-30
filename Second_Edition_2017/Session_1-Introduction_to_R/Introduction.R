### R code from vignette source 'Introduction.Rnw'

###################################################
### code chunk number 1: setup
###################################################
options(width = 60)


###################################################
### code chunk number 2: object
###################################################
a <- 1 # Assign the number 1 to the object a.
a # Print the contents of the object a.


###################################################
### code chunk number 3: print
###################################################
print(a) # Print in the terminal the contents of the a object.


###################################################
### code chunk number 4: workdir
###################################################
getwd() # Prints the current working directory.


###################################################
### code chunk number 5: workdir2 (eval = FALSE)
###################################################
## setwd("C:/Users/Marcos/Documents") # Set the working directory.


###################################################
### code chunk number 6: ls
###################################################
ls() # Show the names of all objects in memory.


###################################################
### code chunk number 7: rm
###################################################
rm(a) # Remove the object 'a' from memory.
rm(list = ls()) # Remove all objects from memory.


###################################################
### code chunk number 8: help1 (eval = FALSE)
###################################################
## ?ls # Look for help about the 'ls' function
## help("ls") # Look for help about the 'ls' function


###################################################
### code chunk number 9: help2 (eval = FALSE)
###################################################
## apropos("ls") # Search all the functions that contain a "ls" in its name.


###################################################
### code chunk number 10: help3 (eval = FALSE)
###################################################
## ??"List Objects" # Search all the functions that contain "List Objects" words in its description.
## help.search("List Objects") # Search all the functions that contain "List Objects" words in its description.


###################################################
### code chunk number 11: search (eval = FALSE)
###################################################
## library() # Show the libraries installed.
## search() # Show the libraries loaded in memory.


###################################################
### code chunk number 12: installpackage (eval = FALSE)
###################################################
## install.packages("ggplot2") # Installs the ggplot2 package.


###################################################
### code chunk number 13: library
###################################################
require(ggplot2) # If not installed, installs and loads.
library(ggplot2) # Load the library ggplot2.


###################################################
### code chunk number 14: Saving_Loading
###################################################
a <- 1
save(a, file = "test.rda") # Save the 'a' object in the 'test.rda' file.
rm(list = ls()) # Remove all the objects in the workspace.
ls()# list all the objects in workspace
load(file = "test.rda") # Load the 'a' object in the 'test.rda' file.
ls()# list all the objects in workspace


###################################################
### code chunk number 15: Saving_Loading2
###################################################
save.image("Rcourse.RData") # Save all objects in the workspace 
# to the 'Rcourse.RData' file.
rm(list = ls()) # Remove all the objects in workspace
ls() # list all the objects in workspace
load(file = "Rcourse.RData") # Load all objects in the workspace
# from the 'Rcourse.RData' file.
ls()# list all the objects in workspace


###################################################
### code chunk number 16: exit (eval = FALSE)
###################################################
## q()


###################################################
### code chunk number 17: numeric1
###################################################
a <- 1
b <- 10


###################################################
### code chunk number 18: numeric2
###################################################
c <- c(a, 5)
d <- c(c, b, 50, 100)
d


###################################################
### code chunk number 19: character1
###################################################
a <- "a"
b <- "10" # Number as a string


###################################################
### code chunk number 20: character2
###################################################
c <- c(a, "c")
d <- c(c, b, "Hello", "Affected")
d


###################################################
### code chunk number 21: complex
###################################################
a <- 3i
mode(a)


###################################################
### code chunk number 22: logical
###################################################
b == "123"
d <- TRUE
d


###################################################
### code chunk number 23: vector
###################################################
a <- c(1,2,3,4,5)
a
b <- c("a", "b", "c", "d")
b


###################################################
### code chunk number 24: factor
###################################################
c <- as.factor(c(1,2,3,4,5))
c
d <- as.factor(c("a", "b", "c", "d"))
d


###################################################
### code chunk number 25: matrices
###################################################
e <- matrix(data = c(1,2,3,4,5,6), nrow = 2, byrow = T)
e
f <- array(data = c(1,2,3,4,5,6,7,8), dim = c(2,2,2))
f


###################################################
### code chunk number 26: dataframe
###################################################
g <- data.frame(sample=c(1, 2, 3, 4, 5),
                treated=c(TRUE, TRUE, TRUE, FALSE, FALSE),
                hair=c("blond", "black", "auburn", "red", "gray"))
g


###################################################
### code chunk number 27: timeseries
###################################################
h <- ts(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
        frequency = 4,
        start = c(2017, 2))
h


###################################################
### code chunk number 28: lists
###################################################
d <- c(1, 5, 10, 50, 100)
i <- list(a, b, c, d, e, f, g, h)
str(i)


###################################################
### code chunk number 29: sequence1
###################################################
g <- 1:20
g
h <- seq(from = 20, to = 100, by = 20)
h


###################################################
### code chunk number 30: rep
###################################################
i <- rep(13, 6)
i


###################################################
### code chunk number 31: expand.grid
###################################################
j <- expand.grid(h=c(60,80), w=c(100, 300), sex=c("Male", "Female"))


###################################################
### code chunk number 32: arith (eval = FALSE)
###################################################
## log(d) ## Logarithm
## exp(d) ## Exponential
## sin(d); cos(d); tan(d) ## Trigonometric functions
## sqrt(d) ## Squared Root
## max(d) ## Returns the maximum
## min(d) ## Returns the minimum
## length(d) ## Returns the number of elements in the vector
## sum(d) ## Returns the sum
## prod(d) ## Returns the product
## mean(d) ## Returns the mean
## var(d) ## Returns the variance


###################################################
### code chunk number 33: Log1
###################################################
d1 <- d < 50
d1
d2 <- d < 75 & d >7
d2
!d2


###################################################
### code chunk number 34: Char1
###################################################
e <- "PFC"
f <- "PM"
c(e,f)


###################################################
### code chunk number 35: Char2
###################################################
paste(e, f) # allows to concatenate strings
ef <- c(paste(e, 1:3, sep=""), paste(f, c(2.5, 10), sep=""))
ef


###################################################
### code chunk number 36: Sub1
###################################################
d2 <- d < 75 & d >7
d3 <- d[d2]


###################################################
### code chunk number 37: Sub2
###################################################
d[3]
d[c(1,4,3,2,5)]
d[length(d):1]


###################################################
### code chunk number 38: Sub3
###################################################
d[-3]
d[-(2:4)]


###################################################
### code chunk number 39: Sub4
###################################################
exposures <- c(2, 5, 10, 50, 100)
names(exposures) <- c(paste("PFC", 1:3, sep=""), paste("PM", c(2.5, 10), sep=""))
exposures
exposures[c("PFC3", "PM2.5")]


###################################################
### code chunk number 40: Sub5
###################################################
mtcars[1:2, ]
mtcars$mpg > 20
mtcars[mtcars$mpg > 25, ]
mtcars[mtcars$mpg > 25 & mtcars$carb == 1, ]
mtcars[mtcars$mpg > 25 & mtcars$carb == 1, ]$cyl


###################################################
### code chunk number 41: SessionInfo
###################################################

sessionInfo()



