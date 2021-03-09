coffee<-c("2000won","3000won","coupon","Limited","2000won","3000won")
coffee
coffee<-factor(coffee,levels=c("coupon","Limited","2000won",
                               "3000won"),ordered=TRUE)
str(coffee)
coffee

exam<-c(1,1,2,2,1,2,1,2)
exam<-factor(exam)
exam<-factor(exam,labels=c("철수","영희"),ordered=TRUE,levels=
               c("영희","철수"))
exam
nlevels(exam)

#----------------------------------------------------------
v<-1:12
v
dim(v)<-c(3,4)
v
k<-matrix(1:12,ncol=4,byrow=FALSE) #ncol이 열
k
dimnames(k)<-list(c("3","33","333"),c("4444","444","44","4"))
k
str(v)

dim(k)[1]
ncol(k)
length(k)


rbind()  #행의 방향으로 결합
cbind()  # 열 방향으로 결합

v1<-c(1,2,3,4,5)
v2<-c(5,6,7,8,9)
rbind(v1,v2)
cbind(v1,v2)


k[,1]
k[,]
k[,3]

v<-1:12
dim(v)<-c(3,4)
v[1,3]

v[1,3,drop=FALSE]
v[,3,drop=FALSE]

v[c(2,3),4,drop=FALSE]
v[-1,-1]
v[1,3]<-7777
v[2,]<-c(333,222)
v


city.distance<-c(0,331,238,269,195,32,353,32)
dim(city.distance)<-c(2,4)
city.distance<-matrix(city.distance,ncol=4,byrow=TRUE)
city.distance
colnames(city.distance)<-c("first","second","third","forth")
rownames(city.distance)<-c("1행","2행")
city.distance["1행","second"]


a<-1:36
dim(a)<-c(3,3,4)
a

a<-array(1:12,c(2,3,2))
a[2,3,,drop=FALSE]

list(0.322,0.3234,0.64,c(23,0.33))

list(1.23,"Apple",c(1:4),matrix(1:6,ncol=3),mean)
lst<-list()
lst[[1]]<-1.23
lst[[2]]<-"Apple"
lst[[3]]<-c(1:5)
lst[[4]]<-matrix(1:8,ncol=4)
lst[[5]]<-mean
lst

names(lst)<-c("하나","둘","셋","넷","다섯")
lst
length(lst)


worldcup1<-list("Brazil","Russia","Korea")
worldcup2<-list("Germany","spain","USA")
worldcup1
worldcup2
c(worldcup1,worldcup2)

a<-list(1:7)
a

mean(a)

mean(unlist(a))
min(unlist(a))


product<-list("AOO2","Mouse",c(30000,22222,767676,453))
product[[1]]
unlist(product)
as.numeric(unlist(product))[3]

product[[3]]
str(product[[3]])
class(product[[3]])
product[c(1,2)]
product[-1]
product[[3]]

product<-list(id="A002",
              name="Mouse",
              price=30000)
product[[3]]
names(product)<-c("11","22","44")


product[["fourth"]] #NULL반환, 에러메시지가 안나옴
product$fourth  # NULL반환,  에러메시지가 안나옴
product[[4]]    #오류메시지

product[c(4,2,5)]

lst<-list(1,2,list(55,66,77))
lst[[3]][[1]]
