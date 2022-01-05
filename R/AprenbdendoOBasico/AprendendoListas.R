lista_caracter <- list('A', 'Bem-vindo', 'DSA')
lista_caracter

lista_inteiros <-  list(2,3,4)
lista_inteiros

lista_numerico <-  list(1.90, 45.3, 300.5)
lista_numerico

lista_complexos <- list(5.2+3i, 2,4+8i)
lista_complexos

#listas compostas
lista_composta1 = list("A", 3, TRUE)
lista_composta1

lista1 <- list(1:10, c("Maria", "João","Alfredo"), rnorm(10))

#slicing de lista
lista1[[1]][2]
lista1[[2]][1] <- "Mônica"
lista1

#nomeando listas
names(lista1) <- c("inteiros", "caracteres", "Númericos")

vec_num <-  1:4
vec_char <- c("A","B","C","D")
lista2 <- list(Numeros = vec_num, Letras = vec_char)
lista2


length(lista1)
mode(lista1$numericos)

#Combinando listas
lista3 <- c(lista1, lista2)
lista3



#Combinando dois elementos 
mat <- matrix(1:4, nrow = 2)
mat
vec <- c(1:9)
vec
lis = list(mat, vec)
lis
