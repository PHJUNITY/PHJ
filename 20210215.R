num<-1:30
num

prime<-c(1,2,3,5,7,11,13,17,19,23,29,31,37,41,47,57)
prime[8]

prime[c(2,3,4,6)]
prime[c(1,3,5,7)]

prime[-1:-7]
prime[9]
length(prime)
prime[16]
prime[1:length(prime)-1]

prime<-c(2,4,5,7,11,14,17,18)
prime[2]<-3
prime[2]
prime[c(6,8)]<-c(13,19)
prime[9]<-23
prime[11]<-29
prime %%2==0
prime[10]<-199
prime
seq_along(prime)
prime[seq_along(prime)%%2==0]
prime<-as.numeric(prime)
prime[c(FALSE,TRUE)]

which(FALSE)

rainfall<-c(21.6,23.6,45.8,77.0,102.2,133.3
            ,327.9,348.0,137.6,49.3,53.0,24.9)
rainfall[rainfall>100]
which(rainfall>100)
month.name[which(rainfall>100)]
which.max(rainfall)
month.name[which.max(rainfall)]
rainfall[which.max(rainfall)]
which.max(rainfall)
rainfall[c(FALSE,TRUE)]
month.name[c(FALSE,TRUE)]

traffic.death<-c(12,32,124,4235,3,22,78)
traffic.death
names(traffic.death)<-month.name[1:length(traffic.death)]
traffic.death["February"]
traffic.death[c("February","July","April")]
traffic.death[traffic.death>30]
names(traffic.death[traffic.death>30])


review<-c("Good","Good","Indifferent","Bad","Good","Bad")
review
review.factor<-factor(review)
review.factor #level=범주

str(review.factor)
as.numeric(review.factor)
eventday<-c("Mon","Mon","Tue","Wed","Mon",
            "Wed","Thu","Fri","Tue")
eventday.factor<-factor(eventday)
eventday.factor
str(eventday.factor)
eventday.factor<-factor(eventday,levels=c("Mon","Tue","Wed",
                                       "Thu","Fri","Sat","Sun"   ))
eventday.factor
levels(review.factor)
levels(review.factor)<-c("B","G","I")
str(review.factor)

review.factor
nlevels(review.factor)
month.name[1:3]

eval<-c("Med","Low","High","Low","High")

eval.factor<-factor(eval,levels=c("Low","Med","High"),
                    ordered = TRUE) # ordered=는 서열팩터
eval.factor
nlevels(eval.factor)
str(eval.factor)

table(eval.factor)

k<-factor(c(2,1,2,2,1,0),levels = c(1,2,0),
       labels = c("Male","Female","Trans"),
       ordered = TRUE)
table(k)
