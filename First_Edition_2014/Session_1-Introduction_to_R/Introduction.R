### R code from vignette source 'Introduction.Rnw'

###################################################
### code chunk number 1: setup
###################################################
options(width = 60)


###################################################
### code chunk number 2: workdir1
###################################################
getwd()


###################################################
### code chunk number 3: workdir2 (eval = FALSE)
###################################################
## setwd("/home/mlopez3/Documentos")


###################################################
### code chunk number 4: math1
###################################################
2+2
1+2*3-4/5
(19465*0.25)^23


###################################################
### code chunk number 5: helloword
###################################################
print("hello world")


###################################################
### code chunk number 6: exit (eval = FALSE)
###################################################
## q()


###################################################
### code chunk number 7: vector1
###################################################
a <- 1
b <- 10


###################################################
### code chunk number 8: vector2
###################################################
c <- c(a, 5)
d <- c(c, b, 50, 100)
d


###################################################
### code chunk number 9: Seq1
###################################################
1:10 ## With Colons forward and backward
seq(10,1) ## With seq function forward and backward too
seq(from=1,to=10,by=2) ## With seq can be also done 2 by 2
rep(c(1,2),times=5) ## repeat a element 5 times


###################################################
### code chunk number 10: Arith (eval = FALSE)
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
### code chunk number 11: Log1
###################################################
d1 <- d < 50
d1
d2 <- d < 75 & d >7
d2
!d2


###################################################
### code chunk number 12: Char1
###################################################
e <- "PFC"
f <- "PM"
c(e,f)


###################################################
### code chunk number 13: Char2
###################################################
paste(e, f) # allows to concatenate strings
ef <- c(paste(e, 1:3, sep=""), paste(f, c(2.5, 10), sep=""))
ef


###################################################
### code chunk number 14: Sub1
###################################################
d2 <- d < 75 & d >7
d3 <- d[d2]


###################################################
### code chunk number 15: Sub2
###################################################
d[3]
d[c(1,4,3,2,5)]
d[length(d):1]


###################################################
### code chunk number 16: Sub3
###################################################
d[-3]
d[-(2:4)]


###################################################
### code chunk number 17: Sub4
###################################################
exposures <- d
names(exposures) <- ef
exposures[c("PFC3", "PM2.5")]


###################################################
### code chunk number 18: Sum1
###################################################
summary(d)
class(d)
summary(ef)
class(ef)
casecontrol <- c(rep("case", 4), "control")
casecontrol <- as.factor(casecontrol)
class(casecontrol)
summary(casecontrol)


###################################################
### code chunk number 19: help1 (eval = FALSE)
###################################################
## help(solve)
## ?solve


###################################################
### code chunk number 20: help2 (eval = FALSE)
###################################################
## help.search("random")
## ??random


###################################################
### code chunk number 21: Save1 (eval = FALSE)
###################################################
## save.image("Rcourse.RData")
## save(d, file="d.RData")


###################################################
### code chunk number 22: Load2 (eval = FALSE)
###################################################
## load("d.RData")
## ls()
## load("Rcourse.RData")
## ls()


###################################################
### code chunk number 23: Library1 (eval = FALSE)
###################################################
## library() ## Show all packages installed
## library(boot) ## Load a package


###################################################
### code chunk number 24: Library2 (eval = FALSE)
###################################################
## install.packages("zoo")
## update.packages("base")


###################################################
### code chunk number 25: SessionInfo
###################################################

sessionInfo()



