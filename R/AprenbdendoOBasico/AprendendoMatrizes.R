#Número de Linhas

matrix(c(1,2,3,4,5,6), nr = 2)
matrix(c(1,2,3,4,5,6), nr = 3)
matrix(c(1,2,3,4,5,6), nr = 6)

#Número de linhas

matrix(c(1,2,3,4,5,6), nc=2)

meus_dados <-  c(1:10)
matrix(data = meus_dados, nrow = 5, ncol = 2, byrow = T)
matrix(data = meus_dados, nrow = 5, ncol = 2)

#Matriz diagonal

matriz <- 1:3
diag(matriz)
vetor = diag(matriz)
vetor

#Pivotar Matriz
W <- matrix(c(2,4,8,12), nr=2,ncol=2)
W
t(W)
U <- t(W)
U

#invertendo matriz
solve(W)

#Multiplicação de Matrizes
mat1 <- matrix(c(2,3,4,5), nr=2)
mat1
mat2 <- matrix(c(6,7,8,9), nr=2)
mat2

mat1 * mat2

# Multiplicando matriz com vetor
x <- c(1:4)
y <- matrix(c(2,3,4,5), nr = 2)
x * y

#Nomeando a Matriz
mat3 <- matrix(c("Futebol", "Natação", "Campo", "Piscina"), nr=2)
mat3
dimnames(mat3) <- (list(c("Linha1", "Linha2"), c("Coluna1", "Coluna 2")))
mat3

#Nomeando a matriz na hora de criar
mat3 <- matrix(c(1:4), nc=2, nr=2, dimnames=list(c("Linha1", "Linha2"), c("Coluna1", "Coluna2")))
mat3

#Combinar matrizes
mat4 <- matrix(c(2,3,4,5), nr=2)
mat5 <- matrix(c(6,7,8,9), nr=2)
cbind(mat4,mat5)
rbind(mat4,mat5)

#desconstruindo a matriz
c(mat4)
