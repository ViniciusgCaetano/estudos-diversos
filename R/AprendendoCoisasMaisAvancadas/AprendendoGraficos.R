# Gráficos em R

# demo
search()
demo('graphics')

# Plot simples

x = 5:7
y = 8:10
plot(x,y)

altura <- c(145, 167, 176, 123, 150)
largura <-  c(51, 63, 64, 40, 55)
plot(altura, largura)

#plotando um dataframe
plot(lynx)
plot(lynx, ylab = "plots com dataframes", xlab = "")
plot(lynx, ylab = "plots com dataframes", xlab = "Observações")
plot(lynx, ylab = "plots com dataframes", col = "red")
plot(lynx, main = "plots com dataframes", col = "red", col.main = 22, cex.main = 2)

library(datasets)
hist(warpbreaks$breaks, main = "Plot de um DF")

airquality &lt;- transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab = "Month", ylab = "Ozone (ppb)")
