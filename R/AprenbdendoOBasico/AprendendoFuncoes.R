#Funções

#Documentação de uma função
?sample
args(sample)

#Usando funções
vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)
vec2

#Funções dentro de funções
plot(rnorm(10))
mean(c(abs(vec1), abs(vec2)))

#Criando funções
myfunc <-  function(x) { x + x }
myfunc(10)

myfunc2 <- function(a, b){
    valor <- a ^ b
    print(valor)
}

myfunc2(2,4)

jogando_dados <-  function(){
    sample(1:6, size = 1)
}

jogando_dados()

#Funções sem número definidio de argumentos
vec1 <-  (10:13)
vec2 <- c("a", "b", "c", "d")
vec3 <- c(6.5, 9.2, 11.9, 5.1)

myfunc3 <- function(...){
    df <- data.frame(cbind(...))
    print(df)
}

myfunc3(vec1, vec2, vec3)
