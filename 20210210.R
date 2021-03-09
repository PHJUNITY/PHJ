install.packages("reshape")
install.packages("reshape2")
install.packages("sqldf")
install.packages("plyr")
library("reshape2")
library("reshape")
library("psych")
library("sqldf")
library("plyr")
a<-seq(1,77,3)
range(a)
a
summary(a)
describe(a)
x=0
while (x<10) {
  print(x)
  x=x+1
  if(x==5){
    print("탈출 렛츠기릿")
    break
    
  }
}
methods(plot)

x<-3
y<-7
plot(x,y)
toeic<-c(300,464,210,670,770)
drive<-c(100,433,422,622,999)
plot(toeic,drive)

#확장된 산점도 행렬
pairs(iris[1:4],main="그냥 제목",pch=21,bg=c("red3","green3","blue3")[unclass(iris$Species)])
pairs(iris[1:4],main="그냥 제목",pch=21,bg=c("red","green","blue")[unclass(iris$Species)])
methods(pairs)

h<-c(170,123,188,180,165)
hist(h)
boxplot(h)

data(airquality)
colnames(airquality)<-tolower(colnames(airquality))
head(airquality)
names(airquality)
airquality
colnames(airquality)<-tolower(colnames(airquality))
colnames(airquality)
T<-melt(airquality,id=c("month","day"),na.rm = TRUE)
head(T)

cast(T,day~month~variable)
b<-acast(T,month~variable,mean)
b

data(iris)
iris
2*7
head(iris)
sqldf("select*from iris")
sqldf("select*from iris limit 10")
sqldf("select count(*) from iris where species like 'se%'")


set.seed(1)
d<-data.frame(year=rep(2012:2014,each=6),count=round(runif(9,0,20)))
d
ddply(data,variables,fun=NULL)

ddply(d,"year",function(x){
  mean.count=mean(x$count)
  sd.count=sd(x$count)
  cv=sd.count/mean.count
  data.frame(cv.count=cv)
})
