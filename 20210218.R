a<-data.frame(name=c("zlatan","son"),weight=c(85,75))
a
rownames(a)<-c("1번째","2번째")
a$age<-c(33,29)
rbind(a,c("kee",33,24,99))
a<-cbind(a,power=c(55,44))
a
list1<-list(name=c("a","b","c","d"),
            school=c("elem","meddile","high"),
            grade=c(4,3,2,1,5,6))

list2<-list(name=c("a1","b1","c1","d1"),
            school=c("elem1","meddile1","high1"),
            grade=c(14,13,12,11,15,16))
k<-c(list1,list2)
p<-lapply(k,as.data.frame)
class(p)


list1
list2
lst<-c(list1,list2)
lst
lapply(lst,cbind)
l<-do.call(rbind,lst)
class(l)
colnames(l)<-c("11","22","33","44","55","345")
#---------------------------------------------------------------------------
?state
state.abb
state.area
state.name
state.region
us.state<-data.frame(state.abb,state.name,state.region,
                     state.area,stringsAsFactors=FALSE)
us.state
colnames(us.state)<-c("약자","이름","지역위치","면적")
us.state

str(us.state)

us.state[[2]]
us.state[2]
us.state[c(2,4)]
us.state[,2,drop=FALSE]
us.state[,c(2,4)]

class(us.state[["면적"]])
class(us.state["면적"])
state.x77
str(state.x77)
head(state.x77)

states<-data.frame(state.x77)
states
str(states)
row.names(states)
states$Name<-row.names(states)
states
row.names(states)<-NULL
states

head(states)

rich.states<-states[states$Income>5000,c("Name","Income")]
rich.states
states[states$Name=="New York",]

large.states<-states[states$Area>100000,c("Name","Area")]
large.states

merge(rich.states,large.states) #교집합 반환 all=TRUE는 합집합을 반환
merge(rich.states,large.states,all=TRUE)
states$Name[states$Name=="New York"]
states$Name[32]

head(iris)
iris[[1]]

r<-iris$Sepal.Length
#with함수는 $일일이 사용안하고 해도 된다는 장점,대신 with함수 안에서 생겨난 변수는 
# with함수 밖에서는 사라진다 <<-를 사용하면 밖에서도 사용가능
r<-with(iris,Sepal.Length/Sepal.Width)
head(r)
colnames(iris)
with(iris,{
  print(summary(Sepal.Length))
  plot(Sepal.Length,Sepal.Width)
  plot(Petal.Length,Petal.Width)
})

with(iris,{
  stats<<-summary(Sepal.Length)
  stats
})
stats
mean(iris$Sepal.Length)
with(iris,Sepal.Length)

iris$Sepal.Ratio<-r
iris$Sepal.Ratio
head(iris)

iris<-within(iris,
       Sepal.pdpdp<-Sepal.Length/Sepal.Width)
head(iris)

attach(iris) #경로에 iris를 지정함으로써 $를 지정하지 않아도 접근가능(복사 개념이기 때문에,
# 값을 변경하더라도 복제한값은 안바뀜)
search()
r<-Sepal.Length/Sepal.Width
r
detach(iris)
search()

attach(iris)
iris$Sepal.Length<-0
iris
Sepal.Length
iris$Sepal.Length

detach(iris)

attach(iris)
Sepal.Width<-Sepal.Width*10
Sepal.Width
iris$Sepal.Width
(iris$Sepal.Width==Sepal.Width)
ls()
detach(iris)
iris
rm(Sepal.Width)

Sepal.Length<-c(4,5,6)
Sepal.Length
rm(Sepal.Length)
attach(iris)
detach(iris)
attach(iris)
detach(iris)
iris$Sepal.Width
plot(Sepal.Length)
rm(Sepal.Length)
