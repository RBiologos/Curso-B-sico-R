# Tipos de datos ----
d <- 2L 
class(d)

n <- 1
class(n)

c <- TRUE
class(c)

combinado <- c(2, 1.62, "alelo", "HardyWeinberg")
class(combinado)

## Comprobación ----
is.integer(n)
ls(pattern = "^is", baseenv())

## Coerción ----
n <- as.character(n)
class(n)
n
ls(pattern = "^as", baseenv())


# Estructura de datos ----

## Vector
num <- c(1233, 555, 88, 99, 17)
num
class(num)
is.vector(num)

## Matriz ----
mat <- matrix(1:12, nrow = 6, ncol = 2)
mat
class(mat)

## Data frame ----
mi_df <- data.frame("entero" = 1:4, 
                    "factor" = c("a", "b", "c", "d"),
                    "numero" = c(1.2, 3.4, 4.5, 6),
                    "cadena" = as.character(c("a", "b", "c", "d")))
mi_df
class(mi_df)

## Lista ----
mi_vector <- 1:10
mi_matriz <- matrix(1:4, nrow = 2)
mi_df     <- data.frame("num" = 1:3, "let" = c("a", "b", "c"))

mi_lista <- list("un_vector" = mi_vector, "una_matriz" = mi_matriz, "un_df" = mi_df)

mi_lista
str(mi_df)
