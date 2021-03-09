b<-step(lm(y~1,df),scale=20,direction = "forward")
x1
x2
df
step()
summary(b)
plot(b)

par(mfrow=c(2,2))

x<-c(27.2,27.7,28.3,28.4,29.9)
male<-c(2,17,26,19,27)
female<-c(25,7,4,8,1)
total<-male+female
total
pmale<-male/total
pmale
