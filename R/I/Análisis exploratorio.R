## En este script están contenidas algunas funciones para el análisis
## exploratorio de nuestros datos

# vamos a utilizar la base de datos "Iris"

# Muestra las 6 primeras filas de la base
head(iris)

# Muestra las 10 primeras filas de la base
head(iris, 10)

# Muestra las 6 últimas filas de la base
tail(iris)

# Muestra las dimensiones de la base
dim(iris)

# Muestra los datos únicos de la variable
unique(iris$Species)

# vamos a utilizar la base de datos "faithful"

# Muestra un valor numérico decimal redondeado
rou <- round(faithful$eruptions, 1)
head(rou, 10)

# Muestra el próximo número entero
cei <- ceiling(faithful$eruptions)
head(cei, 10)

# Muestra únicamente el número entero
tru <- trunc(faithful$eruptions)
head(tru, 10)

# Modificar los nombres de las variables
names(faithful)
ren <- rename(faithful, 
                   Erupciones = eruptions, 
                   Espera = waiting)
names(ren)



