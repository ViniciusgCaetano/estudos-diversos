  # Família Apply

# apply() - arrays e matrizes
# tapply() - Os vetores podem ser divididos em diferentes subsets
# lapply() - vetores e listas
# sapply() - versão amigável da lapply
# vapply() - similar a sapply, com valor de retorno modificado
# rapply() - simpliar a lapply()
# eapply() - gera uma lista
# maplly() - similar a sapply, multivariada
# by


# list, numeric, character (list/vetor) => sapply ou lapply
#matrix, data.frame (agregação por coluna) => by / tapply
# Operações por linha ou operações específicas => apply

#Usando um Loop
lista1 <- list(a = (1:10), b = (45:77))

#Calculando o valor total de cada elemento usando for
valor_a <- 0
valor_b <- 0

for (i in lista1$a){
    valor_a <- valor_a + i
}
for (j in lista1$b){
    valor_b <- valor_b + j
}
print(valor_a)
print(valor_b)


#Usando sapply
?sapply
sapply(lista1, sum)
sapply(lista1, mean)

# apply()
?apply

x <- matrix(rnorm(9), nr = 3, byrow =T)
x

apply(x, 1, mean)
apply(x, 2, mean)
apply(x, 1, plot)


resultapply <- apply(x, 1, mean)


escola <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Aline', 'Alex', 'Ajay'),
                     Matematica = c(90, 80, 85, 87, 56, 79),
                     Geografia = c(100, 78, 86, 90, 98, 67),
                     Quimica = c(76, 56, 89, 90, 100, 87))

escola

#$Calculando a Média

escola$Media = NA

escola$Media = apply(escola[,c(2, 3, 4)], 1, mean)
escola$Media = round(escola$Media)

# tapply() vs sqldf
install.packages('sqldf')
require(sqldf)

escola2 <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Alan', 'Alice', 'Alana'),
                     Semestre = c(1 ,1 ,1 ,2 , 2, 2),
                     Matematica = c(90, 80, 85, 87, 56, 79),
                     Geografia = c(100, 78, 86, 90, 98, 67),
                     Quimica = c(76, 56, 89, 90, 100, 87))

escola2
sqldf("select Aluno, sum(Matematica), sum(Geografia), sum(Quimica) from escola2 group by Aluno")
tapply(c(escola2$Matematica), escola2$Aluno, sum) 

?by
by(escola2[, c(2, 3, 4, 5)], escola2$Semestre, colSums)


?lapply
lista1 <- list(a = (1:10), b = (45:77))
lapply(lista1, sum)
sapply(lista1, sum)


?vapply

vapply(lista1, fivenum, c(Min. = 0, "1stQu." = 0, Median = 0, "3rdQu." = 0, Max. = 0))


?replicate
replicate(7, runif(10))

mapply(rep, 1:4, 4:1)


rapply()