texto <- "Isso é uma string"

x = as.character(3.15)
x
class(x)

nome <- "Vinicius"; sobrenome <- "Caetano"
paste(nome, sobrenome)
cat(nome, sobrenome)

#formatando print
sprintf("%s governa os EUA há %d anos", "Barack Obama", 8)

#parte de um texto
texto <-  "Isso é uma string!"
substr(texto, 12, 17)

#Contar tamanho de um a string
length(texto) #Retorna 1
nchar(texto)

#Alterando a capitalização
tolower("Histogramas e Elementos de Dados")
toupper("Histogramas e Elementos de Dados")

#Utilizando stringr
library(stringr)

#Divindo uma string
strsplit("Histogramas e Elementos de Dados", NULL)
strsplit("Histogramas e Elementos de Dados", " ")

#Trabalhando com strinfs
string1 <- c("Esta é a primeira parte da minha string e será a primeira parte do meu vetor", "Aqui a minha string continua mas será transformada")
string2 <- c("Precisamos testar outras strings - @???$",
             "Analise de dados")

#Concatenar strings

str_c(c(string1,string2),sep="")

#localizar quantidade de aparições de caracteres em um texto
str_count(string2, "s")

#localizar a primeira e ultima posição em que um caracter aparece
str_locate_all(string2,"dados")

#substituir a primeira ocorrência de um caracter
str_replace(string2,"\\s", "")
str_replace_all(string2, "\\s", "")

#Detectando padrões

string1 <- "23 mai 2000"
string2 <- "1 mai 2000"
padrao <-  "mai 20"
grepl(pattern = padrao, x = string1)
padrao <-  "mai20"
grepl(pattern = padrao, x = string1)

#importando arquivo txt
arquivo <- read.delim("http://www.gutenberg.org/cache/epub/100/pg100.txt", skipNul = T)
?read.csv
head(arquivo)


strtail <- function(s, n=1){
    if(n<0)
        substring(s,1-n)
    else
        substring(s,nchar(s)-n+1)
    }

strtail("String de teste", 6)
 