
search()
detach(iris)
iris
head(iris)

x<-1:32
y<-seq(4,43,length=32)
plot(x,y)
iris[1:4]
?pairs
data(iris)
attach(iris)
pairs(iris[1:4],main=" 분할 산점도 그래프 ",pch=21,
      bg=c("red","green","blue")[unclass(iris$Species)])


a<-as.numeric(iris$Species)
color<-c("red","green","blue")
plot(iris[2:4],main="colorful iris plot",pch=a,col=color[a])
#pch는 점의 모양 숫자에따라서 다양함

height<-c(182,160,150,128,177,181,192,157,148)
hist(height)

boxplot(height)
search()

library(reshape)
library(reshape2)

data("airquality")
head(airquality)
colnames(airquality)
colnames(airquality)<-tolower(colnames(airquality))

names(airquality)
head(airquality)

T<-melt(airquality,id.vars = 1:4,na.rm=TRUE,variable.name = "VVV",
        value.name=" VALUE")
T  #melt함수는 wide >> long 의 느낌

airquality
melt(airquality,na.rm=TRUE,id=c("month","day"))

sqldf("select [Sepal.Length] as Length,Species from iris group by Species")
a<-as.integer(iris$Species)
plot(iris$Sepal.Length,pch=a,col=c("red","green","blue")[a])
iris[71,]$Specie

search()
plot(x)


head(iris)

set.seed(1)
d<-data.frame(year=rep(c(2012,2013,2014),each=6),count=round(runif(9,0,20)))
d

search()
install.packages("plyr")

library(plyr)
search()

d
ddply(d,"year",function(x){
  mean.count=mean(x$count)
  sd.count=sd(x$count)
  cv=sd.count/mean.count
  data.frame(cv.count=cv)
})
d$year
d$count

ddply(d,.(year),summarise,mean.count=mean(count))

summarise() # 데이터의 요약정보를 새로운 변수에 만드는 함수

transform() #연산결과를 데이터 프레임의 새로운 칼럼에 저장하는 함수
ddply(d,.(year),transform,NameWhatyouWant=sum(count))

install.packages("data.table")
library(data.table)

DT<-data.table(x=c("b","b","b","a","a"),v=rnorm(5))
DT
str(DT)

y<-c(4,3,5,2,NA)
y
y[is.na(y)]

data(french_fries)
search()
library(reshape)
french_fries
