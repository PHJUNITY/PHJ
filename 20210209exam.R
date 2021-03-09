exam1<-matrix(seq(3,60,3),ncol = 4)
exam1
dimnames(exam1)<-list(c("1","22","333","4444","55555"),c("첫번째","두","세","네번째째"))
exam1

name<-c("park","kim","jung")
age<-seq(20,25,2)
sex<-c("Man","Woman","Man")
exam2<-data.frame(name,age,sex)
exam2

exam3<-array(1:45,dim =c(3,3,5) )
exam3
