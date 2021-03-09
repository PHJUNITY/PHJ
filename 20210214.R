1+2
c(1,3,3)+c(2)
TRUE+TRUE
TRUE+TRUE*43

y<-c(0,32,-43,53,666,321,9,21,66,50)
sum(y>50)

any(-3:3>0) #단 하나라도 참이면 true를 반환
all(-3:3>0) #모두 참이여야 true를 반환
sqrt(2)^2==2
identical(sqrt(2)^2,2)
all.equal(sqrt(2)^2,2)

fruit<-c("banana","melon","apple")
food<-c("pie"," is good"," is wonderful")
paste(fruit,food,"휘바휘바!")
paste(fruit,"juice")

abs(-3:3)
log(1:5)
log(1:5,base = exp(1))

log2(4)
log10(1000)

exp(1:5)

y<-exp(1:5)
y
log(y)

factorial(1:5) #팩토리얼 값 4! 5!
choose(5,2) #5개에서 2개를 뽑는 경우의 수 

options("digits")

sqrt(1:5) #제곱근

options("digits") #유효자리수 알아보기 소수점
pi*100

signif(436.789,digits = 1)

round(456.782,digits = 2)

round(456.23,digits=-1)
round(12.5)

floor(14.32423)
ceiling(-5.432)
trunc(-456.32) #0에 가까운 수 반환

3/0
5-Inf
Inf-Inf  #NaN NOT a Number이라는 뜻
is.infinite(10^(305:310))

1.8*10^307
log(-2)

NA #Not Available

k<-NA
k+5
is.na(54)
z<-c(1:5)
sum(z)
prod(z) #모든 값을 다 곱한 값
max(z)
min(z)
z

mean(z)
median(z)
range(z) # 최대값에서 최소값을 뺀값
sd(z)
var(z,na.rm = TRUE)
z<-c(1:5,NA)
z
sum(z,na.rm=TRUE)

sum(na.omit(z))

v<-rep(NA,5)
v
sum(v,na.rm=TRUE)
prod(v,na.rm = TRUE)
max(v,na.rm = TRUE)
min(v,na.rm=TRUE)

traffic.death<-c(842,729,111,532,654,8,777)

cumsum(traffic.death)
cumprod(traffic.death)
cummax(traffic.death)
cummin(traffic.death)

cumsum(c(3,5,7,NA,2,3,5555))

traffic.death
diff(traffic.death)

union() #합집합
intersect() # 교집합
setdiff() # 차집합
setequal() # 두개의 집합이 동일한지 확인
p<-1:10
q<-6:15
p

union(p,q)
intersect(p,q)
setdiff(p,q)
setdiff(q,p)
setequal(p,q)
is.element(setdiff(p,q),q)
x<-matrix(c(3,4,2,1,2,4),ncol=3)
dimnames(x)<-list(c("12","13"),c("행인지","나도몰라","ㅋㅋ"))
x
