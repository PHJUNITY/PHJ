iris
head(iris,1)
iris[1,]
colnames(iris)
iris$Species[iris$Species=="setosa"]
iris$Species
iris
head(iris)
iris[iris$Species=="setosa",]
detach(iris)
rm(Petal.Width)
Sepal.Length
rm(Sepal.Length)
with(iris,
     Petal.Length,
     print(1))
#--------------------------------------------------------------------------
search()
detach(iris)
attach(iris)
k<-Sepal.Length/Sepal.Width
iris123<-within(iris,Sepal.phj<-k)
iris123
detach(iris)
iris123
rm(iris123)
search()
#---------------------------------------------------------------------------


?subset()
head(mtcars)
length(state.name)

subset(mtcars,subset=(mpg>30),select=mpg)

subset(mtcars,subset=(cyl==4 & am==0),
       select = c(mpg,hp,wt))
subset(mtcars,subset = (mpg>mean(mpg)),
       select = c(mpg,cyl,wt))

head(USArrests)
cor(USArrests)

subset(USArrests,select=-UrbanPop)

install.packages("Sqldf")
library(sqldf)
sqldf()
rm(mtcars)
data("mtcars")
sqldf("select* from mtcars where mpg>30",row.names=TRUE)
sqldf("select* from mtcars where cyl=6 order by mpg")
sqldf("select avg(mpg) as avg_mpg,avg(wt) as avg_wt,gear,cyl from mtcars where cyl in (
      4,6) group by gear")
search()
data(iris)
sqldf("select distinct Species from iris")
sqldf("select [Sepal.Length] from iris limit 3")

sqldf("select avg([Sepal.Length]) as good,Species from iris where Species='setosa'" )


#------------------------------------------
x<-"we have a dream"
x
nchar(x)
length(x)

y<-c("we","have","a","dream")
y
length(y)
nchar(y[2])

letters
sort(letters,decreasing = TRUE)
sort(letters)

tolower() #모두 소문자로
toupper(letters) #모두 대문자로

a<-"What are you doing man? are are you Are"
b<-"I'm talking to you!"
length(unlist(strsplit(a,split=" ")))
k<-unlist(strsplit(a,split=" "))
k[3]
p<-strsplit(a,split=" ")
nchar(p[[1]][2])
a
b
c<-"What the fire truck"
c
hab<-c(a,b,c)
hab[3]
class(hab)

strsplit(hab,split=" ")
f<-strsplit(a,split=" ")[[1]]
f
unique(tolower(f))  #unique함수는 중복을 없애준다고 생각하면 됨

paste("Everybody","wants","to","fly!")
paste(c("Everybody","wants","to","fly!"))
f
paste(f)

paste("Everybody","wants","to","fly!",sep=" ")
paste0("Everybody","wants","to","fly!")

paste(pi,sqrt(pi))
paste("휘바휘바!=",25*1.8+43)
paste("ㅋㅋㅋ 실화임?",1*43+54,"ㅋㅋ진짜짜")

heros<-c("Batman","Superman","Hulk")
color<-c("Blak","Red")
paste(heros,color)
paste("Zz",1:50)

paste(heros,"wants","to","fly",collapse = ", ")

paste(heros,"wants","to","fly",sep="-",collapse = ";")

paste(month.abb,1:12)
paste(month.abb,1:12,sep="_",collapse = " - ")
outer(c(1,2,3),c(1,5,7))[3,2]
