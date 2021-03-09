search()
iris
data(iris)
str(iris)
sqldf("select [Sepal.Width] as width, Species as sss from iris where [Sepal.Length]>5
      group by [Sepal.Width]")

sqldf("select *from iris where Species in ('setosa','virginica')")

a<-paste("sogumm","encouraging",sep = " - ")
b<-"robot is good"
a
b
c<-strsplit(a,split = " ")
nchar(c)
nchar(a)
nchar(unlist(c))
length(unlist(c))
a<-"are are Are elephant"
b<-strsplit(a,split=" ")
c<-unlist(b)
c
unique(toupper(c))
k<-unique(c)
sort(k,decreasing=TRUE)
k


Sys.Date()
month.abb[12]
state.name
p<-paste(state.name,collapse = "")
nchar("dd dd")
nchar(p)
#-----------------------------------------------------------------------------

outer(c(1,2,3),c(10,21,22))
info<-c("GDP","Population","Area")
asian<-c("k","c","d")
a<-outer(asian,info,FUN = paste,sep=" ")
as.vector(a)[2]

x<-outer(asian,info,FUN = paste,sep=" ")
x
x[!lower.tri(x)]

customer<-c("jobs","Gates","Bezos")
buysize<-c(10,20,22)
deliverday<-c(3,3,4.5)
paste("Hello",customer, ", your order of",buysize,
      " product(s) will be dilivered within",deliverday,"day(s)", sep=" ")

sprintf("Hello %s your order of %s product(s) will be delivered with in %.1f day(s)",
        customer,buysize,deliverday)



substr("DATA Analytics",start = 1,stop=6)
substring("Data Analytics",6) #6부터 끝가지의 문자 반환

hp<-c("Data analytics","Data mining","Data visual")
substr(hp,start=1,stop=4)

countries<-c("Korea, KR","Unites States, US")
substr(countries,nchar(countries)-1,nchar(countries))

islands
land<-names(islands)
land

grep(pattern = "New",x=land)
land[grep(pattern = "New",x=land)]

grep(pattern = "New",x=land,value=TRUE) #value=TRUE시 인덱스가 아닌 값을 반환환
grep(pattern = " ",x=land,value = TRUE)
grep(" ",land,value = TRUE)

sub() #일치하는 처음문자만 바꿔준다
gsub() #일치하는 모둔 문자를 바꿔준다
tt<-"it is greater than god. poor have it you are eat it you will die"
sub(pattern = "it","Nothing",tt)
gsub("it","Nothing",tt)
x<-c("product.csv","customer.csv","supplier.csv")
x
a<-gsub(".csv","",x)
paste(a,collapse = " ")[2]

words<-c("apple","char","cheap","epple","coconut","horse","check","chick",
         "chaenomeles","chase","chasse")
grep("ch",words,value=TRUE)

grep("[ch]",words,value=TRUE) #[ch]= c또는 h가 포함된 것들 반환
grep("ch(e|i)ck",words,value=TRUE)

grep("chas?e",words,value = TRUE)
grep("chas*e",words,value = TRUE)
grep("^c",words,value=TRUE)
grep("t$",words,value=TRUE)
grep("^c.*t$",words,value=TRUE)

?regex #r에서 사용도는 정규표현식 형태를 알고싶을때 사용
