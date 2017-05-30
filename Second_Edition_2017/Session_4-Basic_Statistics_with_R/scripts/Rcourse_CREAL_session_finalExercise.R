###################################################
### code chunk number 49: session3_nvilor.Rnw:480-488 (eval = FALSE)
###################################################
myData <- read.table("myData.txt", header=T)
head(myData)


###################################################
### code chunk number 50: session3_nvilor.Rnw:492-495 (eval = FALSE)
###################################################
names(myData)
myData$sex <- factor(myData$sex, labels=c("male", "female"))
head(myData)


###################################################
### code chunk number 51: session3_nvilor.Rnw:499-501 (eval = FALSE)
###################################################
myData$Ebin <- factor(ifelse(myData$exposure<=median(myData$exposure), "low", "high"))
head(myData)


###################################################
### code chunk number 52: session3_nvilor.Rnw:509-513 (eval = FALSE)
###################################################
summary(myData)
hist(myData$age)
hist(myData$bmi)
hist(myData$exposure)


###################################################
### code chunk number 53: session3_nvilor.Rnw:516-522 (eval = FALSE)
###################################################
sex.t <- table(myData$sex)
Ebin.t <- table(myData$Ebin)
prop.table(sex.t)
prop.table(sex.t)*100
prop.table(Ebin.t)
prop.table(Ebin.t)*100
barplot(sex.t)
pie(sex.t)
barplot(Ebin.t)
pie(Ebin.t)


###################################################
### code chunk number 54: session3_nvilor.Rnw:530-531 (eval = FALSE)
###################################################
table(myData$Ebin,myData$sex)


###################################################
### code chunk number 55: session3_nvilor.Rnw:534-535 (eval = FALSE)
###################################################
plot(myData$exposure, myData$bmi, col=c("red", "blue"))


###################################################
### code chunk number 56: session3_nvilor.Rnw:543-544 (eval = FALSE)
###################################################
cor.test(myData$exposure, myData$bmi)


###################################################
### code chunk number 57: session3_nvilor.Rnw:548-549 (eval = FALSE)
###################################################
shapiro.test(myData$exposure)


###################################################
### code chunk number 58: session3_nvilor.Rnw:557-558 (eval = FALSE)
###################################################
mod1 <- lm(bmi~ exposure+sex+age, data=myData)


###################################################
### code chunk number 59: session3_nvilor.Rnw:562-563 (eval = FALSE)
###################################################
summary(mod1)


###################################################
### code chunk number 60: session3_nvilor.Rnw:571-572 (eval = FALSE)
###################################################
mod2 <- glm(Ebin~ bmi+sex+age, data=myData, family=binomial)


###################################################
### code chunk number 61: session3_nvilor.Rnw:575-576 (eval = FALSE)
###################################################
summary(mod2)



