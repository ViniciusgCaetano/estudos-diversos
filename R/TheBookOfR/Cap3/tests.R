A <- matrix(data=c(-3,2,893,0.17), nrow=2, ncol=2)
matrix(data=c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=T)

mat <-  rbind(c(1,3,4), 5:3, c(100, 20, 90), 11:13)


A <- rbind(c(2,5,2),c(6,1,4))
B <- cbind(c(3,-1,1),c(-3,1,5))
A%*%B

AR <-  array(data=1:24, dim=c(3,4,2))
BR <- array(data=rep(1:24,times=3),dim=c(3,4,2,3))
