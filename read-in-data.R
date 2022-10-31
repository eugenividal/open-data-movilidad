# Read the data
data = read.table(gzfile("datos/202104_maestra1_mitma_distrito/20210401_maestra_1_mitma_distrito.txt.gz"), header = TRUE, sep = "|")

names(data)

municipios = read.table("datos/relaciones_municipio_mitma.csv", header = TRUE, sep = "|")
distritos = read.table("datos/relaciones_distrito_mitma.csv", header = TRUE, sep = "|")

zonificacion_distritos <- sf::st_read(
  "datos/zonificacion_distritos/zonificacion-distritos/distritos_mitma.shp")

zonificacion_municipios <- sf::st_read(
  "datos/zonificacion_municipios/zonificacion-municipios/municipios_mitma.shp")

