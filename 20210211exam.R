library("psych")
library("plyr")
x<-seq(3,14)
y<-seq(1,12)
plot(x,y)
hist(c(32,21,777,-32,42.44))
x<-c(1:5)
x<=3

as.logical(1)

lo<-array(seq(1,307,length=30),dim=c(2,3,5))
lo
attributes(k)
x<-1
k<-matrix(1:30,ncol=5)

k<-list(c("mood","seq",1),c(TRUE,FALSE))
k
as.numeric(c("1","2","3"))
as.integer(c("21","32","55.3"))

changetoNum<-function(x){
  x<-as.list(x)
  print(x)
  #attributes(x)
  typeof(x)
}
changetoNum(c("32","44.32","-77"))
typeof(c("ds",2,TRUE))
library()
Sys.setlocale("LC_ALL","English")
Sys.setlocale()
installed.packages()
colnames(installed.packages())
installed.packages()[, c("Package","Version")]

search()
install.packages("ggplot2")

.libPaths()
help(package="ggplot2")

m<-matrix(c(4,3,2,1,5,4),ncol=3)
m
t(m)
base::t(m)
Sys.Date()
