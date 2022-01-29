## En este script est?n contenidas algunas funciones para la lectura 
## de nuestros datos

# Archivos .txt
txt <- read.table(choose.files(), # Nombre del archivo
           # Tambi?n puedes especificar la direcci?n
           header = TRUE)
txt

# Archivos .csv
url <- "https://vincentarelbundock.github.io/Rdatasets/csv/boot/cav.csv"
csv <- read.csv(url, # Nombre del archivo
                  # Tambi?n puedes especificar la direcci?n
                  header = TRUE)
csv

# Archivos .xlsx
library(readxl)
xlsx <- read_excel(choose.files(), # Direcci?n del archivo
                         sheet = "n",
                         col_names = TRUE)
xlsx



