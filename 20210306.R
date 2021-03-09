search()
library(data.table)

DT<-data.table(x=c("b","b","b","a","a"),v=rnorm(5)) #rnorm은 정규분포함수
DT
str(DT)
#데이터 테이브은 데이터프레임과 달리 :클론으로 프린트되어 첫번째 열과 눈으로 쉽게 분리해서 볼수있다. 
str(cars)
head(cars)
CARS<-data.table(cars)
tables()

sapply(CARS,class)
CARS
apply(CARS,2,mean)
apply(cars,1,function(x){median(x^2)})
lapply(cars,mean)
sapply(cars,mean,simplify = FALSE)
sapply(iris,mean,na.rm=TRUE)
apply(iris1,2,mean,na.rm=TRUE)
iris1<-iris[,1:4]
vapply(iris,fivenum,c("Min"=0,"1st Qu"=0,"Median"=0,"3rd"=0,"Max"=0))
fivenum(1:14)
sapply(CARS,class)
setkey(DT,x)
DT
tables()
setkey(CARS,speed)
CARS
DT["b",mult="last"]
DT["b",mult="first"]
DT["b"]

head(iris)
detach(iris)
search()
head(iris)
str(iris)
class(iris)

a<-"hello guys~~!. heaven even know what you bad ideas!@!.~ "
length(a)
nchar(a)
b<-strsplit(a,split = " ")
b<-unlist(b)
paste(b,collapse = " ")
a
length(unlist(regmatches(a,gregexpr("\\w+",a))))
b<-c("What are you going?",
     "what the fuck?",
     "we are what we made",
     "The tree is good",
     "A paper of the pet")
gsub("what","where",b,ignore.case=TRUE)
v<-regmatches(b,gregexpr("(\\w+)",b,ignore.case = TRUE))
unlist(v)
grep("the|a",unlist(v),ignore.case = TRUE,value=TRUE)
gsub("*(the|a)","",unlist(v),ignore.case = TRUE)

summary(iris)
library(sqldf)
sqldf("select * from iris group by [Sepal.Length]")

plot(c(3,2),c(6,5),pch="♬",bg="blue")
cov(iris[,1:4])
cor(iris[,1:4])
height=c(12,23,44,21,6,32)
fivenum(height)
summary(height)

y<-c(1,2,3,NA)
y
y[is.na(y)]
iris[iris$Petal.Width==0.2,"Petal.Width"]<-NA
iris$Petal.Width
is.na(iris$Petal.Width)
x<-c(1,3,2,4,NA)
mean(x,na.rm=TRUE)
search()
library(reshape)

data(french_fries)
french_fries[!complete.cases(french_fries),]
!complete.cases(french_fries)
french_fries
nrow(french_fries)
ncol()
french_fries[french_fries$time==5,]
