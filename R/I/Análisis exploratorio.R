## En este script est?n contenidas algunas funciones para el an?lisis
## exploratorio de nuestros datos

library(dplyr)

# vamos a utilizar la base de datos "Iris"

# Muestra las 6 primeras filas de la base
head(iris, 10)

# Muestra las 10 primeras filas de la base
head(iris, 10)

# Muestra las 6 últimas filas de la base
tail(iris)

# Muestra un rango definido
iris[10:17,]

# Muestra las dimensiones de la base
dim(iris)

names(iris)

# Muestra los datos únicos de la variable
unique(iris$Species)


# vamos a utilizar la base de datos "faithful"

# Muestra un valor num?rico decimal redondeado
rou <- round(faithful$eruptions, 1)
head(rou, 10)

# Muestra el pr?ximo n?mero entero
cei <- ceiling(faithful$eruptions)
head(cei, 10)

# Muestra ?nicamente el n?mero entero
tru <- trunc(faithful$eruptions)
head(tru, 10)



# Modificar los nombres de las variables
names(faithful)
ren <- rename(faithful, 
                   Erupciones = eruptions, 
                   Espera = waiting)
names(ren)

head(ren)


