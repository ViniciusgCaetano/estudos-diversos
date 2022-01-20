#Listar pacotes já carregados
search()

install.packages(c("ggvis", "tm", "dplyr"))
library(ggvis)
library(tm)
require(dplyr)

search()
?require

detach(package:dplyr)
?attach

ls(pos = "package:tm")
ls(getNamespace("tm"), all.names = TRUE)

lsf.str("package:tm")
library(ggplot2)
lsf.str("package:ggplot2")

#Datasets pré-instalados

library(MASS)
data()

plot(lynx)
summary(lynx)

iris$Sepal.Length
sum(iris$Sepal.Length)

#Attach elimina necessidade de referenciar elemtno pai de uma coluna de dataset

attach(iris)
sum(Sepal.Length)
