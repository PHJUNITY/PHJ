Sys.Date()
date()
Sys.time()

class(Sys.Date())

d<-as.Date("2025-12-31")
as.Date("2025/12/31")
as.Date("12/31/2025",format("%m/%d/%y"))

?strptime
d
format(d,format="%m/%d/%y")

today<-Sys.Date()
today
format(today,"%y+%m+%d")

format(today,"%y/%m/%d +%a")
format(today,"%y/%m/%d +%A")

weekdays(today) #무슨요일인지 알고싶을때 date형태의 값을 집어넣으면 됨

d
d+7
d+1:7

seq(4,10,2)

weekdays(d+1:7)

starting<-as.Date("2025-01-01")
ending<-as.Date("2025-01-31")

seq(starting,by="7 days",length.out=7)

seq(starting,by="year",length=8)
seq(starting,by="7 years",length.out=7)
seq(starting,by="2 months",length.out=4)

months()
quarters()

starting
qrt<-seq(starting,,"5 months",length=4)
qrt
months(qrt)  # 달 반환
quarters(qrt) #쿼터 반환

#locale변수로 인해서 한국어로 1월 2월이렇게 나옴

Sys.getlocale()

Sys.setlocale("LC_TIME","C") #북미 기준으로 바꾸기
months(qrt)

Sys.setlocale("LC_TIME","Korean_Korea.949")
months(qrt)
Sys.setlocale() #아무 인수없이 실행시키면 초기상태로 되돌림 

as.POSIXct() #1970년 1월1일 이후 경과된 초 를 반환
as.POSIXlt()  #날짜와 시간요소를 각각의 원소로 가지는 리스트형식으로 저장됨

pct<-as.POSIXct("2021/02/23, 16:45:03",format="%Y/%m/%d, %H:%M:%S")
pct
class(pct)

as.integer(pct)

plt<-as.POSIXlt("2021/02/23, 16:45:03",format="%Y/%m/%d, %H:%M:%S")
plt
class(plt)

unclass(plt)

plt$mday
plt$mon #0부터 시작해서 1을 더해야함
plt$year # 1900년을 더해야함
plt$wday #0일이 일요일 1일이 월요일 2일이 화요일
plt$hour

dp<-as.Date("2025-12-25")
as.POSIXlt(dp)$wday
as.POSIXlt(dp)$year
as.POSIXlt(dp)$mon +1

a<-strptime("2025-12-31",format="%Y-%m-%d")
class(a)
a$year+1900

moon<-as.POSIXct("1969/07/20, 20:17:39",format="%Y/%m/%d, %H:%M:%S",
                 tz="UTC")
moon
format(moon,"the time of the Apollo moon landing was %Y/%m/%d,at %H:%M:%S")
