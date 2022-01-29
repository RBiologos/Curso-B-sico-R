## En este script est?n contenidas algunas funciones para realizar la 
## estadística descriptiva de nuestros datos

# vamos a utilizar la base de datos "Iris"

# Muestra el valor mínimo existente en el vector
min(iris$Sepal.Width)

# Muestra el valor máximo existente en el vector
max(iris$Sepal.Width)

# Muestra el valor máx y mín del vector
range(iris$Sepal.Width)

# Muestra el valor de la media de la variable
mean(iris$Sepal.Width)

# Muestra el valor de la mediana de la variable
median(iris$Sepal.Width)

# Muestra el valor de la varianza de la variable
var(iris$Sepal.Width)

# Muestra los nombres de nuestras variables
names(iris)

# Muestra el valor de la desviación estándar
sd(iris$Sepal.Length)

# Muestra el valor de los quantiles en el vector
quantile(iris$Sepal.Width)

## Resumen de nuestra base

# Muestra un resumen de las funciones
summary(iris)

# Muestra un resumen de las funciones
library(Hmisc)
describe(iris)