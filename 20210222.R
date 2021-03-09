search()
detach(iris)
a<-c("why you always in a mood?",
     "we been here befor i won't be a vector",
     "i'm always in a mood.",
     "I'm talking with you.",
     "always in a mood.",
     "Fuckin round mood been here talk you word.",
     "why Why! why~!~!@!@",
     "the room",
     "a cook",
     "the great escape")
grep(pattern="why",a,value=TRUE,ignore.case=TRUE)
c<-grepl("why",a)
a[c]

gsub("why","hey",a,ignore.case=FALSE)

gregexpr("WHY",a,ignore.case = TRUE)[7]
x<-regmatches(a,gregexpr("why",a,ignore.case = TRUE))
length(unlist(x))
str_extract_all(a,fixed("why",ignore_case = FALSE))


a<-10
b<-"안녕하세요~"
paste(b,"반갑습니다~ 저희는",a,"개의 제품을 보유중입니다~!",sep="           ") #sep은 1개 collapse는 2개이상
sprintf("%s 반갑소 저희는 %s개의 제품을 보유중입니다!~!~!~!",b,a)

a<-c("ㅇㅇㅇ","ddddd")
b<-c("휘바휘바!","나니?!!")
c<-paste(a,b,collapse=" ")
d<-strsplit(c,split=" ")
class(d)
c
d
d<-unlist(d)
paste(d[1],d[3],sep=" ")
paste(d[2],d[4],sep=" ")
a
b

unlist(regmatches(a,gregexpr("(the|a|this) (\\w+)",a,ignore.case=TRUE)))
c<-unlist(regmatches(a,gregexpr("\\w+",a)))
length(c)
nchar(c)
sum(nchar(c))
c
v<-unique(tolower(c))
length(v)


sqldf("select * from iris limit 10")
head(iris,10)
iris[1:10,]
sqldf("select [Sepal.Length] as Length, Species as  super from iris where [Sepal.Width]>3.0|[Sepal.Width]<2.7 group by [Sepal.Width] limit 10")
sqldf("select ([Sepal.Length]*[Sepal.Width]) as NEW from iris")
iris$Sepal.Length[iris$Sepal.Length==5.9]
iris$Sepal.Length==5.9
c<-grep(5.9,iris$Sepal.Length,value=TRUE)
iris$Sepal.Length[c]
c
class(c)
c
c*10

sqldf("select [Sepal.Length],Species from iris where Species='setosa' and [Sepal.Length]=5.0")

a<-sqldf("select * from iris where [Sepal.Length]=4.9 group by [Sepal.Width]")
sort(a)
sort(a$Sepal.Width,decreasing=TRUE)

s<-sentences
paste(s,collapse=" ")
s
str_split(s," ",n=3) #분할후에 얻을 갯수 n=
str_split(s," ",3,simplify = TRUE) #simplify하면 행렬형태로

str_length(s)

str_count(s,"the")
str_count(s,"\\w+")

a<-c("the apple","the desk","the popular song","Ariana grande")
str_pad(string=c("a","abc","abcde"),
        width=6,side = "left",pad=" ")
mon<-1:12
mon
str_pad(mon,width =2,side="left",pad="0" ) #width는 길이 pad는 부족한 길이에 넣을거

str_pad(a,width=max(str_length(a)),side="both"," ")
length(a)
str_length(a)
k<-str_pad(a,width=max(nchar(a)),side="both"," ")
k
str_trim(k,side="both") #공백제거하는 함수

str_c("data","mining",sep=" ")
paste("data","mining",sep=" ")

str_c(c("data mining","text mining"),
      "is useful",sep="",collpase="+")

k<-paste(c("data mining","text mining"),
      "is useful",sep=" ")
str_c(k,collapse = "~!~!~!")

str_c(k,collapse="\n")
cat(str_c(k,collapse="\n")) #화면상으로 보여지는것

str_sub(k,start=1,end=4)
substr(k,1,7)
k
grep("\\w+",k,value=TRUE)
u<-unlist(regmatches(k,gregexpr("\\w+",k,ignore.case=TRUE)))
length(unique(u))
length(u)

str_sub(k,5,5)<-" "
k

str_sub("asdfghj",start=3)
str_sub("asdfghj",end=3)

a<-"pet"
b<-"human"
a
b
c<-paste(a,b,sep=" and ")
c[1]
unlist(strsplit(c,split=" and "))
c("pet","human")
a<-c("malt","buldog","shavet")
b<-c("man","woman")

a
b


c<-paste(a,b,collapse=" - ")
c
v<-unlist(strsplit(c,split=" - "))
v
k<-unlist(strsplit(v,split=" "))
c(k[1],k[3],k[5])
c(k[2],k[4],k[6])
k
v
unlist(regmatches(c,gregexpr("\\w+",c,ignore.case=TRUE)))
grepl("\\w+",v)
