# Vamos a limpiar unos datos que nos enviaron
# se trata de datos de niños en un colegio
# en relación al tiempo gastado en lectura, matemáticas
# si tienen almuerzo, la zona donde viven, entre otras

# Pero nuestro estudio se va a basar en el tiempo
# gastado en la lectura

# Vamos a cargar el paquete dplyr
# Si no lo tienes, puedes instalarlo

# Puedes leer bases de datos en línea directo
url <- "https://vincentarelbundock.github.io/Rdatasets/csv/AER/STAR.csv"

# Leemos los datos y la guardamos en la variable "datos"
datos <- ...(url, header = )

# Necesitamos conocer las dimensiones y nombres de la base
di...
na...

# ¿Cuántas variables y observaciones tenemos?

# Vemos los primeros 10 datos de la base
he...

# Queremos seleccionar los datos X, readk, read1, read2 y read3
datos_select <- datos %>% 
  select(...)
View(datos_select)

# Vamos a crear una variable, será el promedio entre 
# readk, read1, read2 y read3
nueva_base <- datos_select %>% 
  mutate(...)
View(nueva_base)

# Necesitamos conoces los valores máx y mín de lectura
...(nueva_base)

# Necesitamos conoces los valores de la media y desviación
# estándar de la variable read1 as variables
me...
...names(nueva_base)

# Necesitamos conoces los valores de la media y desviación
# estándar de todas las variables
...(nueva_base)
