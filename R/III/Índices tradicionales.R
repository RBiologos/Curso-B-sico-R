## ÍNDICES TRADICIONALES

library(entropart)
library(iNEXT)
library(vegan)
library(dplyr)

## MARGALEF Y MENHINICK
# Vector para almacenar el número de especies por unidad de muestreo
S <- c()

# Ciclo para recorrer la matriz de datos
for(i in 1:nrow(BCI)){ # Ciclo desde 1 hasta el total de filas de los datos (unidades de muestreo)
  S.tmp <- length(which(BCI[i, ] > 0)) # Número de especies (columnas) con abundancia > 0 por unidad de muestreo
  S <- append(S, S.tmp) # Añadimos el número de especies del sitio i al vector de especies
}

# Suma de las abundancias por unidad de muestreo (filas)
N <- rowSums(BCI)

# Índice de Margalef
Margalef <- (S - 1) / log(N)

# Índice de Menhinick
Menhinick <- S / sqrt(N)

# Combinamos ambos índices en una misma tabla
indices <- cbind(Ma = Margalef, Me = Menhinick)

## Creamos gráficos para interpretación de valores
# Histograma índice de Margalef
hist(indices[, 1], # Valores de todas las filas de la primera columna de la tabla índices
     xlab = "Margalef", # Etiqueta del eje X
     main = NA) # Sin  título principal

# Histograma índice de Menhinick
hist(indices[, 2], # Valores de todas las filas de la segunda columna de la tabla índices
     xlab = "Menhinick", # Etiqueta del eje Y
     main = NA)


## ÍNDICES DE DOMINANCIA Y EQUITATIVIDAD
# Índice de Gini-Simpson
Simpson <- diversity(BCI, index  = "simpson")

# Índice de Shannon
Shannon <- diversity(BCI, index = "shannon")

# Índice de Pielou
Pielou <- Shannon / log(S) 

# Combinamos los índices en una tabla
indices <- cbind(Simpson = Simpson, Shannon = Shannon, Pielou = Pielou)

## Creamos gráficos para interpretación de valores
#Histograma índice de Simpson
hist(indices[, 1],
     xlab = "Simpson",
     main = NA)

#Histograma índice de Shannon
hist(indices[, 2],
     xlab = "Shannon",
     main = NA)

#Histograma índice de Pielou
hist(indices[, 3],
     xlab = "Pielou",
     main = NA)