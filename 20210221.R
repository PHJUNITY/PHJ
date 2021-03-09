a<-50
b<-"product"
sprintf("your %s of %.3f is good~",b,a)
a<-c("Aa","bbbb")
a
paste(a,collapse = "")
a<-"aa aadd"
paste(a,sep = "")
v<-strsplit(a,split="")[[1]]
v
unique(tolower(v))

a<-c("stella","jang","jam","starship","state","name","jetski","prejudice","la",
     "super","stella")
a
grep("^s.*a$",a,value=TRUE)

grep("^s(t|u).*(a|r)$",a,value=FALSE)
a[1]
a[10]
a
sub("stella","휘바휘바!",a)

b<-"stella jang is so beautiful oh god! stella great!"
gsub("stella","휘바!~",b)
substring(b,nchar(b)-5,nchar(b))
length(b)
nchar(b)

substring(b, 3)
substr(b,3,nchar(b))
substr(b,start=34,stop=44)

a<-outer(c(1,2,3),c(4,4,4))
a
dimnames(a)<-list(c("1행 :1","2행 :2","3행 :3"),
                  c("1열 :4","2열 :4","3열 :4"))
class(a)
a

row.names(a)
rownames(a)

outer(c("arena","king","whibawhiba"),c(" war","'s crown","휘바휘바!"),FUN=paste0)
#-------------------------------------------------------------------------------


s<-c("data analytics is useful",
     "business analytics is helpful",
     "visualization of data is interesting for data everyone who live in earth")
grep("data",s,value=TRUE,invert=TRUE)
grep("useful|helpful",s,value=TRUE,invert=TRUE)

grepl("data",s)

state.name
b<-state.name[grepl("New",state.name,ignore.case = TRUE)]#ignore.case=TRUE를 하게되면 대소문자 구분하지 않음
c<-grepl("New",state.name,ignore.case = TRUE)
sum(c)
c<-grep("nEw",state.name,value=TRUE,ignore.case = TRUE)
c

regexpr(pattern="data",text=s) #1= 1번째에 시작 -1=data가 없음, 18=18번째에 시작
gregexpr("data",s)  #list형태로 보여줌
class(b)

regmatches(s,gregexpr("data",s)) #gregexpr은 모두 다 regexpr은 하나만
regmatches(s,gregexpr("data",s),invert=TRUE) #regmatches함수는 매칭해주는 함수

regexpr("data",s)

gsub("data","text",s)

a<-strsplit(s,split=" ")
b<-unlist(a)
length(unique(tolower(b)))
a<-"apple is good"
b<-strsplit(a,split=" ")
b
c<-unlist(b)
paste(c,collapse="")
a<-c("ddd ssss","휘바휘바!")
paste(a,collapse = " sdfadsf")
a<-"apple is apple"
paste(1,2,3,4, sep="-")

install.packages("stringr")
library(stringr)
s

str_detect(s,"data")
grepl("Data",s,ignore.case = TRUE)

regexpr("Data",s,ignore.case=TRUE)


str_detect(s,fixed("DATA",ignore_case = TRUE))
fixed() #문자패턴을 정규표현식이 아닌 그대로를 매칭할때 유용하다
str_detect(c("abz","ayz","a.z"),"a.z") #정규표현식에서 .은 특별한 의미를 갖기때문에

str_detect(c("abz","ayz","a.z"),fixed("a.z"))
str_detect(c("abz","ayz","a.z"),"a\\.z") #\\는 탈출의 의미가 있으므로 정규표현식의 표현을 탈출할때 사용 

str_locate() #첫매칭이 이루어진 시작위치와 종료 위치를 행렬식으로 반환
str_locate_all() #모든 매칭 위치를 리스트로 반환

str_locate(s,"data")
s
str_locate_all(s,"data")


a<-c("data data datt datt daewt datas dtsadata",
     "apdata datas datda data, DATA DATAS")
a
factor(a)
gregexpr("data",a)
c<-regmatches(a,gregexpr("data",a,ignore.case = TRUE))
unlist(c)
x<-tolower(unlist(c))
length(x)


str_extract()  #첫번째만 추출
str_extract_all() #모두 추출
regmatches()

str_extract(s,"data")
v<-str_extract_all(s,"data")
str_extract_all(s,"data",simplify = TRUE)

str_match()
str_match_all()


search()
data(iris)
sqldf("select [Sepal.Length] as Length, [Sepal.Width] as Width,[Petal.Width] as p_W from iris
      where Species in ('setosa','virginica') 
      group by [Sepal.Width]" )
iris
class(iris)
a<-data.frame(c(3,2,1,2),c("d","a","b","c"),c(TRUE,FALSE,TRUE,TRUE))
a
colnames(a)<-c("1번째 열","2번째 열","3번째 열열")
a
rownames(a)<-paste(c("1","2","3","4"),"행",sep="")
a
dimnames(a)<-list(c(1,2,3,4),c("11","22","33"))
a
list(1,2,3,4,"dsaf")
search()
attach(iris)
iris$Sepal.Length
Sepal.Length+0.1
length(Sepal.Length)
paste(Sepal.Length,"행")
a<-56
a

head(sentences,8)
s5<-sentences[1:5]
s5
str_extract(s5,"(a|A|the|The) (\\w+)")
str_match(s5,"(a|A|the|The) (\\w+)")
str_match_all(s5,"(a|A|the|The) (\\w+)")

str_replace() #첫번째 매칭된 값을 치환
str_replace_all() #모든 값을 치환
str_replace(s,"data","휘바휘바!")
gsub("data","ddddddd",s)
