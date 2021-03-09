install.packages("psych")
library("psych")
a<-read.table("C:/Park/idon.txt",header=T)
a
rep(1:10,3)
seq(1,20,2)
seq(1,100,length=10)
a<-c(1:13)
a
a+a
a+1
a^3+1
a/a
a%%a
a<-c(1,3,2,7)
b<-c(32,44)
a
t(a)
a%*%t(a)
ma<-matrix(seq(1,79,length=9),ncol=3)
ma*20
ma
solve(ma) #역행렬 구하기

ma<-matrix(c(1,21,33,62),ncol=2)
ma
solve(ma)
a1<-seq(1,100)
mean(a1)
var(a1) #분산
sd(a1) #표준편차
sum(a1)
median(a1) #중앙값
log(16)
log(a1)
a<-c(1:120)
b<-log(1:10)
cor(a,b)
cov(a,b)
summary(a)
quantile(a)
describe(a)
describe(c(1,33333,-2342,222,6674))
IQR(a)

b<-c("a","b","c")
b
b[-c(1,2)]
b[c(1,2)]
b[-3]
b[1]
b[c(1,2)]
b[-c(1,2)]
a<-c()
a
for(i in 1:9)
{
  a[i]=i*i
}
a

x=1
x
while (x<5) {
  x=x+1
  print(x)
}
x
whatthe<-c("aa","bb","aa","Cccc","23")
whatthe<-ifelse(whatthe=="aa","정답","오답")
whatthe


gugudan<-function(q){
  for (i in 1:9) {
    print(q*i)
  }
}
gugudan(19)
number<-1:3
alpa<-c("a","b","c")
paste(number,alpa,sep = "and") #sep= 옵션을 통해 붙이고자 하는 문자열들 사이에 삽입 가능
country<-c("korea","japan")
substr(country,1,2)
as.list(country)
as.integer(3.141592)
as.integer(-23432)
as.numeric(TRUE)
as.logical(0)
as.Date("2021-02-09")
Sys.Date()
format(Sys.Date(),'%Y')
