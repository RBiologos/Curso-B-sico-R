## En este script están contenidas algunas funciones para la elaboración
## de plots de RBase

## Diagrama de dispersión
plot(iris$Sepal.Length)

plot(iris$Sepal.Length, 
     iris$Sepal.Width)

plot(iris$Sepal.Length, 
     iris$Sepal.Width,
     col = iris$Species)

## Diagrama lineal
r <- read.csv(choose.files())
head(r)

# Gráfica sin línea
plot(r$dgran, r$dmedia, main="Gráfica sin línea")
# Gráfica con línea
plot(r$dgran, r$dmedia, 
       type = "l", # Traza la línea entre puntos
       main="Gráfica con línea")

## Diagrama de cajas
plot(iris$Species, iris$Petal.Length)

plot(iris$Species, iris$Petal.Length,
     main = "Longitud de pétalos de 3 especies del género Iris", 
     xlab = "Especies", 
     ylab = "Longitud (cm)", 
     col = c("orange", "yellow", "green"),
     font = 3)

## Diagrama de barras
plot(x = chickwts$feed,
     col=c('red','black','green','blue', 'orange', 'grey'),
     xlab="Suplementos alimenticios",
     ylab="Total de experimentos",
     main="Suplementos alimenticios en pollos")

## Diagrama de histograma
hist(faithful$waiting, main = "Histograma",
       ylab = "Frecuencia",
       xlab = "Tiempo de espera",
       col = "cyan3")



