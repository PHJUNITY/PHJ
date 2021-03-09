sample(x,size=1,replace = TRUE)
dice<-function(){
  x<-sample(1:6,size=1,replace = FALSE)
  y<-sample(1:6,size=1,replace = FALSE)
  if(x==y){
    print(x)
    print(y)
    print("이 둘의 숫자는 같습니다.")
    k=k+1
    return(k)
  }
  else{
    print(x)
    print(y)
    print("이 둘의 숫자는 같지 않습니다")
  }
  
}
dice()
for (i in 1:6) {
  dice()
}
result<-function(number){
  for (i in 1:number) {
    dice()
  }
  print("같은 숫자가 나올확률은:")
  print(k)
}
result(number=5)
search()
help("search")

help.start()
help(median)
?median

args(median)
median(1:5,na.rm=TRUE)
??xyplot
install.packages("sos")
library("sos")

findFn("social network analysis")

factor(c("a","b","c","a","b","1","12"))
matrix(1:12,3,4)
array(1:12,c(2,3,2))
data.frame(product=c("A","B","c"), price=c(100,200,300))


a<-list(x=c("a","b","c","a","b","1","12"), y=matrix(1:16,ncol=4),
     z= data.frame(product=c("D","b","c"),price=c(100,200,300)))
a$x
1:-4.5
num<-c(1,2,3)
cha<-c("x","y","Z")
str(num)
str(cha)
?str()
cha[3]
num[2]
length()
as.numeric(FALSE)
as.logical(-0.3424)
month.name
letters
month.abb
pi
month.name[c(9,3,12,12,12,9,9)]
library("sos")
