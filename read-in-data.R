# Read the data
# getwd()
# 
# setwd("/home/eugeni/Documents/INE-estudio-mobilidad-datos/")

data = read.table(gzfile("202104_maestra1_mitma_distrito/20210401_maestra_1_mitma_distrito.txt.gz"), header = TRUE, sep = "|")

municipios = read.table("relaciones_municipio_mitma.csv", header = TRUE, sep = "|")

distritos = read.table("relaciones_distrito_mitma.csv", header = TRUE, sep = "|")

names(data)

zonificacion_distritos <- sf::st_read(
  "zonificacion_distritos/zonificacion-distritos/distritos_mitma.shp")

zonificacion_municipios <- sf::st_read(
  "zonificacion_municipios/zonificacion-municipios/municipios_mitma.shp")

install.packages("XML")

# Load the package required to read XML files.
library("XML")

# Also load the other required package.
library("methods")

# Give the input file name to the function.
result <- xmlParse(file = "RSS.xml")

# Print the result.
print(result)
