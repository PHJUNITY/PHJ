a<-matrix(c(1,4,-23.22,55,33,76,8,96,23,52,34,23,76,868,41,-16),ncol = 4)
a
solve(a)

gugu<-function(x,y){
    i=0
    for (i in 1:y) {
    print(x*i)
      i=i+1
  }
}
gugu(2,10)
solma<-function(m,n){
  m<-matrix(m,nrow=n)
  solve(m)
}
solma(c(1,4,-23.22,55,33,76,8,96,23,52,34,23,76,868,41,-16),4)

format(Sys.Date())

a<-c(1,2,3)
b<-c("12","gnl","car")
c<-c(TRUE,FALSE,TRUE)
d<-data.frame("숫자"=a,"문자"=b,"진실혹은 거짓"=c)
d
