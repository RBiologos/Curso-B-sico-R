## En este script están contenidas algunas funciones para el uso
## del paquete dplyr

library(dplyr)

## select()
# Selecciona un subconjunto de variables
selec <- select(iris, Sepal.Length, Petal.Length)
head(selec)

# O especifica la variable que NO necesitamos
selec2 <- select(iris, -(Sepal.Length))
head(selec2)

## filter()
# Selecciona un subconjunto del data.frame
filt1 <- filter(iris, Species == "setosa")
unique(filt1$Species)

# Filtramos los datos menores a 6.0
filt2 <- filter(iris, Sepal.Length < 6.0)
range(filt2$Sepal.Length)

## order()
# Reordena nuestros datos de mayor a menor
ord <- arrange(iris, Sepal.Length)
head(ord, 10)

# Ordena de menor a mayor la variable2 
ord2 <- arrange(iris, desc(Sepal.Length))
head(ord2, 10)

## mutate()
# Creación de variables a partir de las originales
mut <- mutate(iris, sum = (Sepal.Length + Petal.Length))
head(mut, 10)

## group_by()
# Agrupar datos según una variable
gro <- group_by(iris, Species)
head(gro, 10)
