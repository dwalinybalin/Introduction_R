### R code from vignette source 'Rcourse_CREAL_session_nvilor.Rnw'

###################################################
### code chunk number 1: Rcourse_CREAL_session_nvilor.Rnw:41-42
###################################################
options(width = 50)


###################################################
### code chunk number 2: Rcourse_CREAL_session_nvilor.Rnw:56-57
###################################################
library(MASS)


###################################################
### code chunk number 3: Rcourse_CREAL_session_nvilor.Rnw:60-61
###################################################
data(birthwt)


###################################################
### code chunk number 4: Rcourse_CREAL_session_nvilor.Rnw:67-68
###################################################
names(birthwt)


###################################################
### code chunk number 5: Rcourse_CREAL_session_nvilor.Rnw:70-71
###################################################
?birthwt


###################################################
### code chunk number 6: Rcourse_CREAL_session_nvilor.Rnw:78-79
###################################################
b.s <- birthwt[,c("bwt", "smoke", "race", "age", "low")]


###################################################
### code chunk number 7: Rcourse_CREAL_session_nvilor.Rnw:82-83
###################################################
head(b.s) 


###################################################
### code chunk number 8: Rcourse_CREAL_session_nvilor.Rnw:117-119
###################################################
x<-rnorm(300,sd=10,mean=100)
head(x)


###################################################
### code chunk number 9: Rcourse_CREAL_session_nvilor.Rnw:122-124
###################################################
mean(x); median(x)            
quantile(x)  


###################################################
### code chunk number 10: Rcourse_CREAL_session_nvilor.Rnw:127-128
###################################################
summary(x) 


###################################################
### code chunk number 11: Rcourse_CREAL_session_nvilor.Rnw:135-136
###################################################
hist(x)   


###################################################
### code chunk number 12: Rcourse_CREAL_session_nvilor.Rnw:143-144
###################################################
boxplot(x)                                                       


###################################################
### code chunk number 13: Rcourse_CREAL_session_nvilor.Rnw:163-164
###################################################
var<-c(0,1,0,0,0,1,1,0,0,1,1,1,1,1);var


###################################################
### code chunk number 14: Rcourse_CREAL_session_nvilor.Rnw:167-168
###################################################
var<-factor(var,labels=c("control","case"));var


###################################################
### code chunk number 15: Rcourse_CREAL_session_nvilor.Rnw:171-172
###################################################
recvar<-table(var); recvar


###################################################
### code chunk number 16: Rcourse_CREAL_session_nvilor.Rnw:175-176
###################################################
frelvar<-prop.table(table(var)); frelvar                      


###################################################
### code chunk number 17: Rcourse_CREAL_session_nvilor.Rnw:183-184
###################################################
barplot(recvar)   


###################################################
### code chunk number 18: Rcourse_CREAL_session_nvilor.Rnw:191-192
###################################################
pie(recvar)                                                       


###################################################
### code chunk number 19: Rcourse_CREAL_session_nvilor.Rnw:199-200
###################################################
head(b.s) 


###################################################
### code chunk number 20: Rcourse_CREAL_session_nvilor.Rnw:222-223
###################################################
summary(b.s)


###################################################
### code chunk number 21: Rcourse_CREAL_session_nvilor.Rnw:233-238
###################################################
b.s$race <- factor(b.s$race, 
                   labels = c("white", "black", "other"))
b.s$low <- factor(b.s$low, labels = c("normal", "< 2.5kg"))
b.s$smoke <- factor(b.s$smoke, 
                    labels = c("non smoker", "smoker"))


###################################################
### code chunk number 22: Rcourse_CREAL_session_nvilor.Rnw:248-249
###################################################
summary(b.s)


###################################################
### code chunk number 23: Rcourse_CREAL_session_nvilor.Rnw:262-265
###################################################
frsmoke<-prop.table(table(b.s$smoke));frsmoke
frrace <- prop.table(table(b.s$race)); frrace
frlow <- prop.table(table(b.s$low));frlow


###################################################
### code chunk number 24: Rcourse_CREAL_session_nvilor.Rnw:272-275
###################################################
frsmoke*100
frrace*100
frlow*100


###################################################
### code chunk number 25: Rcourse_CREAL_session_nvilor.Rnw:289-292
###################################################
b.c <- b.s$bwt
hist(b.c, main="Histogram of birth weight", 
     xlab=c("birth weight in grams"), col="red")


###################################################
### code chunk number 26: Rcourse_CREAL_session_nvilor.Rnw:299-302
###################################################
s.c <- table(b.s$smoke)
barplot(s.c, names.arg=c("No Smokers", "Smokers"), 
        main="Smoking status during pregnancy", col="red")


###################################################
### code chunk number 27: Rcourse_CREAL_session_nvilor.Rnw:309-312
###################################################
a.c <- b.s$age
hist(a.c, main="Histogram of mother's age", 
     xlab=c("mother's age in years"), col="red")


###################################################
### code chunk number 28: Rcourse_CREAL_session_nvilor.Rnw:320-323
###################################################
s.r <- table(b.s$race)
barplot(s.r, names.arg=c("white", "black", "other"), 
        main="Mother's race", col="red")


###################################################
### code chunk number 29: Rcourse_CREAL_session_nvilor.Rnw:332-335
###################################################
s.l <- table(b.s$low)
barplot(s.l, names.arg=c("normal", "< 2.5kg"), 
        main="Indicator of birth weight", col="red")


###################################################
### code chunk number 30: Rcourse_CREAL_session_nvilor.Rnw:367-368
###################################################
smoke.race<-table(b.s$smoke, b.s$race); smoke.race


###################################################
### code chunk number 31: Rcourse_CREAL_session_nvilor.Rnw:371-372
###################################################
prop.table(smoke.race) 


###################################################
### code chunk number 32: Rcourse_CREAL_session_nvilor.Rnw:375-376
###################################################
smoke.race.r<-prop.table(smoke.race,1); smoke.race.r


###################################################
### code chunk number 33: Rcourse_CREAL_session_nvilor.Rnw:381-382
###################################################
smoke.race.c<-prop.table(smoke.race,2); smoke.race.c


###################################################
### code chunk number 34: Rcourse_CREAL_session_nvilor.Rnw:385-387
###################################################
margin.table(smoke.race, 1) # smoke frequencies (summed over race) 
margin.table(smoke.race, 2) # race frequencies (summed over smoke)


###################################################
### code chunk number 35: Rcourse_CREAL_session_nvilor.Rnw:393-395
###################################################
smoke.race
chisq.test(smoke.race)


###################################################
### code chunk number 36: Rcourse_CREAL_session_nvilor.Rnw:404-407
###################################################
smoke.low <-table(b.s$smoke, b.s$low); smoke.low
smoke.low <- smoke.low[,c(2,1)]; smoke.low
smoke.low <- smoke.low[c(2,1),]; smoke.low


###################################################
### code chunk number 37: Rcourse_CREAL_session_nvilor.Rnw:412-414
###################################################
source("Riskfunctions.R")
calcRelativeRisk(smoke.low)


###################################################
### code chunk number 38: Rcourse_CREAL_session_nvilor.Rnw:422-423
###################################################
calcOddsRatio(smoke.low)


###################################################
### code chunk number 39: Rcourse_CREAL_session_nvilor.Rnw:433-434
###################################################
barplot(smoke.race, legend=rownames(smoke.race)) 


###################################################
### code chunk number 40: Rcourse_CREAL_session_nvilor.Rnw:440-441
###################################################
barplot(t(smoke.race), legend=colnames(smoke.race)) 


###################################################
### code chunk number 41: Rcourse_CREAL_session_nvilor.Rnw:466-468
###################################################
cor(b.s$bwt, b.s$age) 
plot(b.s$bwt, b.s$age, col=c("red", "blue")) 


###################################################
### code chunk number 42: Rcourse_CREAL_session_nvilor.Rnw:474-476
###################################################
cor(b.s$bwt, b.s$age)
cor.test(b.s$bwt, b.s$age)


###################################################
### code chunk number 43: Rcourse_CREAL_session_nvilor.Rnw:503-505
###################################################
m1 <- lm(bwt ~ age, data=b.s)
summary(m1)


###################################################
### code chunk number 44: Rcourse_CREAL_session_nvilor.Rnw:514-517
###################################################
ans <- summary(m1)
names(ans)
ans$adj.r.squared


###################################################
### code chunk number 45: Rcourse_CREAL_session_nvilor.Rnw:530-533
###################################################
b.s.w <- subset(b.s, race=="white")
b.s.b <- subset(b.s, race=="black")
var.test(b.s.w$bwt, b.s.b$bwt)


###################################################
### code chunk number 46: Rcourse_CREAL_session_nvilor.Rnw:542-547
###################################################
b.s.w <- subset(b.s, race=="white")
b.s.b <- subset(b.s, race=="black")
t.test(b.s.w$bwt, b.s.b$bwt,
       var.equal=ifelse(var.test(b.s.w$bwt, b.s.b$bwt)$p.value
                        > 0.05,TRUE,FALSE))


###################################################
### code chunk number 47: Rcourse_CREAL_session_nvilor.Rnw:556-558
###################################################
shapiro.test(b.s.w$bwt)
shapiro.test(b.s.b$bwt)


###################################################
### code chunk number 48: Rcourse_CREAL_session_nvilor.Rnw:567-571
###################################################
aa <- runif(100,0,1); bb <- runif(100,1,5); cc <- runif(100,0,1)
shapiro.test(aa)
shapiro.test(bb)
shapiro.test(cc)


###################################################
### code chunk number 49: Rcourse_CREAL_session_nvilor.Rnw:582-584
###################################################
m1 <- glm(bwt ~ age, data=b.s)
summary(m1)


###################################################
### code chunk number 50: Rcourse_CREAL_session_nvilor.Rnw:590-593
###################################################
m2 <- glm(low ~ age, data=b.s, family=binomial)
ans2 <- summary(m2)
ans2$coefficients


###################################################
### code chunk number 51: Rcourse_CREAL_session_nvilor.Rnw:598-601
###################################################
mli <- glm(bwt ~ -1+age+smoke+race, data=b.s)
summary(mli)



###################################################
### code chunk number 52: Rcourse_CREAL_session_nvilor.Rnw:606-608
###################################################
mlo <- glm(smoke ~ age+race, data=b.s, family=binomial)
summary(mlo)




