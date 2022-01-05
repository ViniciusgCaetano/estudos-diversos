df <- data.frame()

#criando vetores vazios
nomes <-  character()
idades <- numeric()
datas <- as.Date(character())
codigos <- integer()

df <- data.frame(c(nomes, idades, datas, codigos))
df


#Criando vetores
paises = c("EUA", "Dinamarca", "Holanda", "Espanha", "Brasil")
nome = c("Mauricio", "Pedro", "Aline", "Beatriz", "Marta")
altura = c(1.78, 1.72, 1.63, 1.59, 1.63)
codigo = c(5001, 2183, 4702, 7965, 8890)

#Criando mais um dataframe

pesquisa <- data.frame(paises, nome, altura, codigo)
pesquisa
View(pesquisa)

#Adicionando coluna e linha ao dataframe
olhos = c("verde", "azul", "azul", "castanho", "castanho")
pesq <- cbind(pesquisa,olhos)
observacao = c("China", "Carla", 1.60, 4523, "preto")
pesq <- rbind(pesq, observacao)

#informações
str(pesq)
dim(pesq)
length(pesq)

#Acessando elementos
pesq$paises
pesq$olhos

#Extraindo um único valor
pesq[1,1]
pesq[3,2]

#Descobrir número de linhas e colunas
nrow(pesq)
ncol(pesq)

#ver inicio e fim de um ddataframe
head(mtcars)
tail(mtcars)

#Filtro de dataframes
pesq[altura < 1.60,]
pesq[altura <1.60, c("nome", "codigo")]

#Nomear Dataframes 
names(pesq) <- c("País", "Nome", "Altura", "Código", "Olhos")
pesq
colnames(pesq) <- c("Var 1", "Var 2", "Var 3", "Var 4", "Var 5")
rownames(pesq) <- c("Obs 1", "Obs 2", "Obs 3", "Obs 4", "Obs 5", "Obs 6")
pesq
#Importando arquivos
# read.xls() - Excel
# read.mtp(
#read.spss
#read.table()
#read.csv()

df2 <- data.frame(read.csv(file = "dframe.csv", header = T, sep= ","))
df2
head(df2)
summary(df2)

#Obtendo linhas
df2$Diabetes
df2$Status

length(df2$Admdate)
#Plotando 
barplot(df2$Idade)
summary(mtcars$mpg)
plot(mtcars$mpg, mtcars$disp)

