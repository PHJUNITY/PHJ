Toz<-list(people=c("사장","사장 아내","나","청년"),price=c(50000,80000,120000),
          book=list(exam1=c("기출의 바이블","수학의 정석"),exam2=c("합격하는 진짜관리",
                                                        "몰라 나도")))
Toz
Toz[[1]][3]
Toz$price
a<-unlist(Toz[2])
a+100
b<-50
a*b
class(a)
Toz[[3]][[1]][2]
a<-list(500,400,33)
a<-unlist(a)
a<-a[c(1,3)]
a[-2]

base::t(matrix(1:4,ncol=2))
matrix(1:4,ncol=2,byrow=TRUE)
a<-matrix(1:4,ncol=2)
a
colnames(a)<-c("이게 열열일걸?","ㅋㅋㅋ")
a
a<-1:4
dim(a)<-c(2,2)
a
dimnames(a)<-list(c("dd","kk"),c("fffffffffff","asdfasdff"))
a

#----------------------------------------------------------------------------
  

product<-list(name="a002",
              price=40000)
product[2]<-30000
product[[2]][2]<-77777
product[[2]]<-c(5555,333)
product[2]<-list(c(333333333,222222))
product$price
product[1:2]<-list("휘바휘바!",c(777777777777,2))
product[[2]][2]
product$whisper<-c("위스퍼~","whee")
product[3]<-list(c(33,222))
product$whisper
product[6]<-list(c(50,43))
product[6:10]<-c(6,7,8,9,10)
product

month.name
class(month.name)
mona<-month.name
mona
values<-c(43,3423,565,835,9234,5,234,231,999,4353,21312,12)

traffic.death<-list()
traffic.death["mona"]<-list(values)
traffic.death
traffic.death["me"]<-4
traffic.death[["me"]]<-NULL
traffic.death

traffic.death[c("추가임","나도 추가야")]<-c(53,23)
traffic.death[["mona"]]<-NULL

traffic.death <300
traffic.death[traffic.death==300]


v1<-c("a","b","c")
v2<-c("apple","base","cat")
v3<-c(800,7777,666666666)
product<-data.frame(row.names=v1,열투=v2,열쓰리=v3,
           stringsAsFactors=FALSE)
str(product)

mat<- matrix(c(1,3,5,7,9,
               2,4,6,8,10,
               2,3,5,7,11),ncol=3)
mat
as.data.frame(mat)
number<-as.data.frame(mat)
number
colnames(number)<-c("odd","even","prime")
number

lst<-list(v1,v2,v3)
lst
lst<-as.data.frame(lst)
colnames(lst)<-c("odd","even","prime")
lst

ncol(lst)
nrow(lst)
length(lst) #열의 갯수 반환

id<-c("A001","A002","A003")
name<-c("Mouse","Keyboard","USB")
price<-c(30000,90000,50000)

product<-data.frame(id,name,price,
                    stringsAsFactors = FALSE)
product

product<-rbind(product,
      c("A004","Monitor",25000))
product

new.rows<-data.frame(id=c("A005","A006"),
                     name=c("Memory","CPU"),
                     price=c(350000,3243))
rbind(product,new.rows)

product<-cbind(product,
               madein=c("korea","c","D","e"))
product$nado<-c(3,23,3,4)
product

k<-data.frame(yo=c(1,2,3,3),
              man=c(66,55,23,2))
k
k<-cbind(product,k)
k$exam<-c("백점","2백점")
k
rbind(k,
      c("A005","나도",33,"한국",3,2,1,"백점"),stringsAsFactors=FALSE)

df1<-list(sex="female",months=1,weight=3.5)
df2<-list(sex="male",months=3,weight=4.8)
df3<-list(sex="female",months=2,weight=2.5)
df4<-list(sex="female",months=9,weight=9.5)
df5<-list(sex="male",months=3,weight=7.5)
lst<-list(df1,df2,df3,df4,df5)
lst
rbind(df1,df2,df3,df4,df5)
lst
str(lst)
str(lst[[1]])
str(lst[1])
rbind(lst[[1]],lst[[2]])

do.call(rbind,lst)
df1
lst[1]
as.data.frame(lst[[1]])
k<-lapply(lst,as.data.frame)
class(do.call(rbind,k))
