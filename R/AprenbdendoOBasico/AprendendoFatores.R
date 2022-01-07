# Criando um  fator

vec1 <-  c("Macho", "Femea", "Femea", "Macho","Macho", "Macho")
vec1
fac_vec1 <- factor(vec1)
fac_vec1

#Fator com vvarriáveis categóricas nominais
animais <-  c("Zebra", "Pantera", "Rinoceronte", "Macaco", "Tigre")
fac_animais <- factor(animais)
fac_animais

#Fator com variáveis categóricas ordinais
grad <- c("Mestrado", "Doutorado", "Bacharelado", "Mestrado", "Mestrado")
fac_grad <-  factor(grad, order=T, levels = c("Doutorado", "Mestrado", "Bacharelado"))
fac_grad
levels(fac_grad)

#Sumarizandop
summary(fac_grad)
summary(grad)

vec2 <- c("M", "F", "F", "M", "M", "M", "F", "F", "M", "M", "M", "F", "F", "M", "M")
fac_vec2 <- factor(vec2)
fac_vec2
levels(fac_vec2) <- c("Femea", "Macho")
fac_vec2
summary(fac_vec2)


#Mais exemplos
data = c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata <- factor(data)
fdata
rdata <-  factor(data, labels=c("I", "II", "III"))
rdata

#Fatores Não-Ordenados
set1 <- c("AA", "B", "BA","CC","CA", "AA", "BA", "CC", "CC")
f.set1 <-  factor(set1)
f.set1
is.ordered(f.set1)

#Ordenando
o.set1 <-  factor(set1, 
                  levels = c("CA", "BA", "AA", "CC", "B"),
                  ordered = T)

o.set1
is.ordered(o.set1)
as.numeric(o.set1)
table(o.set1)

#Fatores e Dataframes
df <- read.csv2("etnias.csv", sep = ",", as.is = FALSE)
?read.csv2
df

str(df)


levels(df$Etnia)
levels(df$Sexo)

#Plotando etnia e idade
plot(df$Idade~df$Etnia, xlab="Etnia", ylab="Idade", main="Idade por Etnia")


#Convertendo coluna em variável categórica
df
str(df)
df$Estado_Civil <-  factor(df$Estado_Civil, labels=c("Solteiro", "Casado","Divorciado"))
df$Estado_Civil
df
summary(df)
str(df)
