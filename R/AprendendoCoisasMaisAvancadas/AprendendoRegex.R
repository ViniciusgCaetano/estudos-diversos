#Expressões Regulares

str <-  c("Expressões", "regulares", "em linguagem R",
          "permitem a busca de padrões", "e exploração de textos",
          "podemos buscar padrões em dígitos", "como por exemplo",
          "10992451280")

length(str)

#grep()
grep("ex", str, value = F) #Indica o índice onde encontrou o padrão
grep("ex", str, value = T) #Mostra em que contexto o padrão foi encontrado
grep("\\d", str, value = F)
grep("\\d", str, value = T)

#grepl() - Informa se o padrão foi encontrado
grepl("\\d+", str)
grepl("\\D", str)

#gsub() - substitui o padrão encontrado por um outro padrão especificado em todas as ocorrências
gsub("em", "|", str)
gsub("ex", "EX", str, ignore.case = T)

#sub() - o mesmo que gsub(), porém substitui a primeira ocorrência dentro de um elemento
sub("em", "EM", str)


#regexps() - retorna se ele encontrou o padrão e em que posição
frase <-  "Isso é uma string"
regexpr(pattern = "u", frase)

#gregexs() - faz a mesma coisa que o regexps, mas com uma saída diferente
gregexpr(pattern = "u", frase)

str2 <- c("2678 é maior que 45 - ???!$",
          "Vamos escrever 14 scripts R")

str2

#gsub()
gsub("\\d", "", str2)
gsub("\\D", "", str2)
gsub("\\s", "", str2)
gsub("[iot]", "Q", str2)
gsub("[[:punct:]]", "", str2)
gsub("[^@]", "", str2)
