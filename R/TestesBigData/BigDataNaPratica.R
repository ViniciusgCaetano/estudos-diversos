install.packages("readr")
install.packages("data.table")
library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)

#Calcular tempo de execução
system.time(df_teste1 <- read.csv2("TemperaturasGlobais.csv"))
system.time(df_teste2 <- read.table("TemperaturasGlobais.csv"))
system.time(df <- fread("TemperaturasGlobais.csv"))
dim(df)

#Criando Subset
cidadesBrasil <-  subset(df, Country == "Brazil" )
cidadesBrasil <- na.omit(cidadesBrasil)
head(cidadesBrasil)
nrow(cidadesBrasil)

#Convertendo dados
cidadesBrasil$dt <- as.POSIXct(cidadesBrasil$dt, format="%Y-%m-%d")
cidadesBrasil$Month <- month(cidadesBrasil$dt)
cidadesBrasil$Year <- year(cidadesBrasil$dt)

#Carregando datasetes
plm <- subset(cidadesBrasil, City=="Palmas")
plm <- subset(plm, Year %in% c(1796, 1846, 1896, 1946, 1996, 2012))

crt <- subset(cidadesBrasil, City=="Curitiba")
crt <- subset(cidadesBrasil, Year %in% c(1796, 1846, 1896, 1946, 1996, 2012))

recf <- subset(cidadesBrasil, City=="Recife")
recf <- subset(cidadesBrasil, Year %in% c(1796, 1846, 1896, 1946, 1996, 2012))

p_plm <- ggplot(plm, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
    geom_smooth(se = FALSE,fill = NA, size = 2) +
    theme_light(base_size = 20) +
    xlab("Mês")+
    ylab("Temperatura Média") +
    scale_color_discrete("") +
    ggtitle("Temperatura Média ao longo dos anos em Palmas") +
    theme(plot.title = element_text(size = 18))

p_crt <- ggplot(crt, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
    geom_smooth(se = FALSE,fill = NA, size = 2) +
    theme_light(base_size = 20) +
    xlab("Mês")+
    ylab("Temperatura") +
    scale_color_discrete("") +
    ggtitle("Temperatura Média ao longo dos anos em Curitiba") +
    theme(plot.title = element_text(size = 18))

p_recf <- ggplot(recf, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
    geom_smooth(se = FALSE,fill = NA, size = 2) +
    theme_light(base_size = 20) +
    xlab("Mês")+
    ylab("Temperatura Média") +
    scale_color_discrete("") +
    ggtitle("Temperatura Média ao longo dos anos em Recife") +
    theme(plot.title = element_text(size = 18))

p_crt
p_recf
