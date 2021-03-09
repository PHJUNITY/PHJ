a<-3
a
b<-c(3,0.22,62,-2)
b
k<-c(3+2,2,0,-1*-32+5*(21-3))
k
a<-seq(1,100,3) # seq함수는 등차수열 seq(from=2,to=10,length5)
b<-seq(0,77,3)
b
b<-seq(100,1,-5)
b

b<-rep(2021^2,5) # rep함수는 반복되는 자료값 함수 rep(2016,3) 2016을 세번 반복 
b
b<-rep("하나님 맙소사",3)
b
x<-c(1,3,2,6,77)
x
y<-c("실화냐","이거 꿈임임")
y
xy<-c(x,y)
xy

m<-matrix(c(1,2,3,4,5,6),ncol = 6)
m
ma<-matrix(seq(1,10,1),nrow=2)
ma
dimnames(ma)<-list(c(1,2),c("one","two","three","four","five"))
ma
six<-c(77,88)
cbind(ma,six)

a1<-c(7,77.8,-730)
b1<-c("a","b",32)
c1<-c(FALSE,TRUE,FALSE)
Daframe1<-data.frame(number=a1,character=b1,TrueOrFalse=c1)
Daframe1

array(1:12,dim = c(3,2,2))

#리스트는 서로다른 유형의 데이터를 담을수 있다 
x<-list(name="Park Hyeong Jo",age=25)
x$name
