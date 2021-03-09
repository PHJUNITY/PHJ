apply(iris[,1:3],2,mean)
lapply(iris[,1:3],mean)

b<-as.data.table(french_fries)
french_fries
b
setkey(b,potato)
b
tables()
#----------------------------------------------------------
iris$Petal.Width
iris$Petal.Width[!complete.cases(iris$Petal.Width)]
iris[!complete.cases(iris$Petal.Width),]
#------------------------------------------------
install.packages("Amelia")
library(Amelia)
version
freetrade
class(freetrade)
data(freetrade)
state.name[grepl("New",state.name)]
grep("NEW",state.name,value = FALSE,ignore.case = TRUE)
is.na(!complete.cases(iris))
iris
iris[!complete.cases(iris),]
iris[iris$Species=="setosa",]

head(freetrade)

a.out<-amelia(freetrade,m=5,ts="year",cs="country") #m=imputation 데이터셋 수
a.out
hist(a.out$imputations[[4]]$tariff,col="black",border="yellow")
a.out$imputations[[3]]$tariff

missmap(a.out)
missmap(freetrade)
?missmap
freetrade$tariff<-a.out$imputations[[5]]$tariff
a.out$imputations[[5]]$tariff
missmap(freetrade)
freetrade$fiveop<-a.out$imputations[[5]]$fiveop
missmap(a.out$imputations[[5]])
a.out$imputations[[5]]$intresmi


#이상값 관련 패키지
search()
install.packages("outliers")
library(outliers)
search()
set.seed(1234)
y=rnorm(100)
outlier(y) #평균과 가장 차이가 많이 나는 값 출력 
outlier(y,opposite = TRUE)
dim(y)<-c(20,5)
outlier(y)
boxplot(y)

x<-rchisq(100,5)
x
outlier(x,opposite = T)
boxplot(x)
hist(x)
library(psych)
describe(x)
?describe
set.seed(2)
x=runif(10,0,11)
y=2+3*x+rnorm(10,0,0.2)

dfrm<-data.frame(x,y)
dfrm

lm(y~x,dfrm)
#dfrm에서 회귀방정식은 y=2.213+2.979x

set.seed(2)
u<-runif(10,0,11)
v<-runif(10,11,20)
w<-runif(10,1,30)
y=3+0.1*u+2*v-3*w+rnorm(10,0,0.1)
dfrm1<-data.frame(y,u,v,w)
dfrm1
lm(y~u+v+w,dfrm1)

data(cars)
cars
head(cars)
lm(dist~speed,cars)

m<-lm(y~u+v+w,dfrm1)
m
summary(m)


chick<-ChickWeight[ChickWeight$Diet==1,]
chick
chick<-ChickWeight[ChickWeight$Chick==1,]
chick

lm(weight~Time,chick)

m1<-lm(weight~Time,chick)
m1
summary(m1)


m3<-lm(dist~speed,cars)
m3
summary(m3)

par(mfrow=c(2,2))
plot(m3,col="red",pch=21,bg="yellow")


cars
ca<-lm(dist~speed,cars)
str(ca)
ca
m4<-lm(weight~Time,chick)
par(mfrow=c(2,2))
plot(m4,col="blue",pch=21,bg="yellow")
summary(m4)
#--------------------------------2021/03/08

x1<-c(7,1,11,11,7,11,3,1,2,21,1,11,10)
x2<-c(26,29,56,31,52,55,71,31,54,47,40,66,68)
x3<-c(6,15,8,8,6,9,17,22,18,4,23,9,8)
x4<-c(60,52,30,47,33,22,6,44,22,26,34,12,12)
y<-c(78.5,74.3,104.3,87.6,95.9,109.2,102.7,72.5,93.1,115.9,83.8,113.3,109.4)
df<-data.frame(x1,x2,x3,x4,y)
df
head(df)
a<-lm(y~x1+x2+x3+x4,df)
a
summary(a)
a<-lm(y~x1+x2+x4,df)
a
summary(a)

a<-lm(y~x1+x2,df)
summary(a)

x1<-c(5,7,3,7,1,1.5)
y<-c(11,15,7,15,3,4)
df<-data.frame(x1,y)

a<-lm(y~x1,df)
a
summary(a)
plot(a)
a
step(lm(y~1,df),scope=list(lower=~1,upper=~x1+x2+x3+x4),direction="forward")

install.packages("ridge")
library(ridge)
data("longley")
longley
class(longley)
sum(is.na(longley))
longley<-na.omit(longley)
?na.omit()
names(longley)[1]<-"y"
names(longley)

mod<-linearRidge(y~.-1,longley,lambda = "automatic")
mod
options(scipen = 999)
summary(mod)
install.packages("genridge")
library(genridge)
lambda<-c(0,0.005,0.01,0.02,0.04,0.08)
r<-ridge(y~.,longley,lambda = lambda)X
traceplot(r)
par(mfrow=c(1,1))

cor.test(c(1,2,3,4,5), c(1,0,5,7,9), method="pearson")


loc<-cmdscale(eurodist)
loc
eurodist

x<-loc[,1]
y<-loc[,2]
plot(x,y,type="n",main = "eurodist")
text(x,y,rownames(loc),cex=0.8,col="blue")

abline(v=0,h=0)

install.packages("datasets")
library(datasets)
search()
data("USArrests")
head(USArrests)
fit<-prcomp(USArrests,scale=TRUE)
fit
summary(fit)
fit$rotation
plot(fit,type="line",bg="green",pch=21)

biplot(fit)
?prcomp()

data(Nile)
plot(Nile,col="blue")
Nile
Nile.diff<-diff(Nile,differences = 2)
Nile.diff
plot(Nile.diff)

ldeaths
plot(ldeaths)
ld.de<-decompose(ldeaths)
ld.de$seasonal
plot(ld.de)
ld.de.adj<-ldeaths-ld.de$seasonal
plot(ld.de.adj,col="blue")

acf(Nile,lag.max = 20)
acf(Nile,lag.max = 20,plot = FALSE)

pacf(Nile,lag.max = 20,plot=FALSE)

install.packages("forecast")
library(forecast)
auto.arima(Nile)

Nile.arima<-arima(Nile,order=c(1,1,1))
Nile.arima

Nile.forecast<-forecast(Nile.arima,h=50)
Nile.forecast
plot(Nile.forecast)
