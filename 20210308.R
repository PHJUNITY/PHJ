x<-c(1,3,5,7,8,2)
y<-c(1,9,25,49,64,4)
plot(x,y,bg="blue",pch=21,cex=1.3,type="n")
text(x,y,c("aa","bb","cc","dd","ee","ff"),col="red")
abline(v=0,h=0)

df<-data.frame(x,y)
a<-lm(y~x,df)
summary(a)
a
