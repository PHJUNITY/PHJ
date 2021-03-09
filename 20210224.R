as.Date("03/02/2022",format("%m/%d/%Y"))
Sys.Date()

?strptime()
format()
weekdays(as.Date("2021-02-24"))
Sys.time()

Sys.setlocale()

Sys.setlocale("LC_TIME","C")
Sys.time()
months(as.Date("2021-02-24"))

a<-as.Date("2021-02-24,16:28",format="%Y-%m-%d, %H:%M")
a

POSIXlt()
POSIXct()
b<-as.POSIXct("2021-02-24,16:28",format="%Y-%m-%d, %H:%M")

as.integer(b)

c<-as.POSIXlt("2021-02-24,16:28",format="%Y-%m-%d, %H:%M")

str(c)
unlist(c)


y<-2020
m<-12
d<-31
a<-ISOdate(y,m,d)
class(a)

as.Date(a)

years<-c(2025,2026,2027,2028)
month1<-c(1,3,2,4)
days<-c(21,12,15,9)

ISOdate(years,month1,days)

jdate<-as.Date("2025-12-31")
jdate
as.integer(jdate) #1970년대를 기준으로 며칠이 지났는지
julian(jdate)
weekdays(as.Date("1970-01-01"))

starting<-as.Date("1988-09-17")
ending<-as.Date("2018-02-09")
starting
ending

ending-starting

difftime(Sys.Date(),as.Date("1997-09-27"), units="hours")

Sys.Date()> "2010-01-01"

d
install.packages("github")
search()
getwd()

save.image()
ls()
