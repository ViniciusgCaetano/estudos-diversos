# Funções especiais

#unlist()
#Produz um vetor com os elemtnos da lista
lst1 <-  list(6, "b", 15)
lst1
class(lst1)

unlist(lst1)
vec1 <- unlist(lst1)
class(vec1)
vec


lst2 <- list(v1 =6, v2 = list(381, 2190), v3 = c(30, 217))

# do.call
# Excecuta uma função em um objeto

data <- list()
N <- 100

for(n in 1:N){
    data[[n]] = data.frame(index = n, char = sample(letters, 1), z = rnorm(1))
}
head(data)

do.call(rbind,data)

#lapply() X do.call()
y <- list(1:3, 4:6, 7:9)
lapply(y, sum)
do.call(sum, y)

install.packages('plyr')
library(plyr)

 #Benchmark
install.packages('rbenchmark')
library(rbenchmark)
benchmark(do.call(sum, y), ldply(y, sum))

N <- list(as.numeric(1:30000), as.numeric(4:60000), as.numeric(7:90000))
benchmark(do.call(sum, N), ldply(N, sum))

#strsplt()
texto <-  "Esta é uma sring"
strsplit(texto, "")
 