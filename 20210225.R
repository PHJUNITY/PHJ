a<-read.csv("daily-total-female-births.csv")
a
head(a)
tail(a)
length(a$Births)
sum(a$Births)
class(a)

search()
library(sqldf)
sqldf("select Births+10 as B from a where Births>30 and Births<45 limit 5")

a<- c("wind is so cool",
      "wind runner is good wind",
      "cool is better than hot",
      "wait holl up",
      "The greatest architecture",
      "I love the song",
      "The wolf of wall street")
b<-regmatches(a,gregexpr("wind",a,ignore.case = TRUE))
unlist(b)
length(unlist(b))

search()
library(stringr)
c<-str_extract_all(a,"wind")
c
unlist(c)
sub("wind","휘바휘바!",a)
a
v<-gregexpr("wind",a,ignore.case = TRUE)
unlist(v)

grep("the",a,ignore.case=TRUE,value=TRUE)

x<-regmatches(a,gregexpr("the (\\w+)",a,ignore.case = TRUE))
unlist(x)
a
a<-matrix(c(1,2,3,
         4,3,2,
         5,4,4),nrow=3,byrow=TRUE)
a
row.names(a)<-paste(c("1","2","3"),"행",sep="")
a
colnames(a)<-paste(c("1","2","3"),"열",sep="")
a
dimnames(a)<-list(c("11행","22행","33행"),c("11열","22열","33열"))
a+1
a*10
a[1,]
a[,1]
a[]
a[,]
a[-1,]
a[-1,-3]
a[1,3]<-NA
a
length(a,NA.rm)
sum(a,na.rm = TRUE)

mogrampard<-data.frame(c("4d","23f"),c(1,2),c(TRUE,FALSE))
mogrampard
colnames(mogrampard)<-c("첫번째 열이고ㅛ","22222222222","3번째 열입니다요")
mogrampard$april<-c("D의 의지","몽키 d루피피")
mogrampard
plus<-data.frame("3g",6,FALSE)
rbind(mogrampard,c("3g",4,TRUE))
class(Sys.Date())
class(4)
class("4")
class(4.1)
as.integer("44")
as.integer(Sys.Date())
z<-as.POSIXct(Sys.Date())
as.integer(z)
class(z)
a<-as.POSIXlt(Sys.Date())
a
months(Sys.Date())
class(a)
unlist(a)
a
Sys.setlocale()
Sys.setlocale("LC_TIME","C")

search()
rm(a)
a+1

attach(iris)
nchar(as.character(Species[144]))
??co()
