install.packages("dplyr")
library(dplyr)


# ¿Qué tipo de datos es cada variable?

#Usando estos comandos podemos obtener el tipo de cada variable
?starwars
starwars

#Resultado: 

# name: <chr>
# height: <int>
# mass: <dbl> 
# hair_color: <chr>
# skin_color: <chr>
# eye_color: <chr>
# birth_year: <dbl>
# sex: <chr>
# gender: <chr>
# homeworld:  <chr>
# species: <chr>
# films: <list>
# vehicles: <list>
# starships: <list>


# ¿Cuál es el tamaño total del data frame?

nrow(starwars)
# Tiene 87 filas

ncol(starwars)
# Tiene 14 columnas

# ¿Cuáles son los límites de cada período de observación (por ejemplo, qué período de tiempo abarcan las observaciones en el data frame)?

#Como tal no tiene una variable de tiempo, lo unico es que tiene fecha de nacimiento. Asi que se usaran fechas de  nacimientos
arrange(starwars, (birth_year)) %>% select(birth_year) %>% head(1)
#Resultado = 8

arrange(starwars, desc(birth_year)) %>% select(birth_year) %>% head(1)
#Resultado = 896


#Respuesta: Los cumpleaños de los personajes de starwars van desde el año 8 hasta el 896 BBY (Before Battle of Yavin - Antes de la batalla de Yavin)




# ¿Alguna de las variables tiene valores perdidos y, de ser así, cuáles tienen más NA que otras? ¿Por qué podría ser ese el caso?

sum(is.na(starwars))
#Resultado = 105
#Repuesta:  Se tiene 105 datos perdidos



library(ggplot2)




#PRIMER GRAFICO
ggplot(data = starwars) + geom_point(mapping =  aes(x =height, y =hair_color ))


#Lo que dice es que no tiene color de pelo en su mayoria sin importar el peso, el que mas diversidad de colores
#tiene es entre 150-200 cm de altura.
#El comando lo que hace es hacer un grafico de dispersion entre dos variables,
#height(continua) en el eje x,  y Hair color(categorica) en el eje Y.
#Que muestra la relacion entre la altura de los personajes y sus colores de pelo,
#el que mas elementos tiene es el que no tiene color de pelo. 
#El que menos tiene es unknown que no tiene ningun elemento.\
#Lo que se espera que el lector entienda o deduzca es como es que existen distintos colores
#de pelo en funcion de la altura.






#SEGUNDO GRAFICO
ggplot(data = starwars) + geom_bar(mapping =  aes(x =sex ))


#Esta grafica representa la cantidad de tipos de sexo que existen en starwars. El que mas tiene es
# male con 60 y el que menos tiene es Hermaphroditic con 2
#Esta grafica es un grafico de barras que representa la cantidad de tipos de sexo que 
#existen en starwars. El que mas tiene es male con 60 y el que menos tiene es Hermaphroditic
#con 2. Se utilizo la variable sex, porque es una variable categorica que tiene relativamente
#pocos datos, 5 especificamente. Lo que se espera obtener de parte del usuario es que deduzca
#o detecte de que tipo de sexo es al que pertenecen los personajes de starwars asi como de 
#saber que sexo tiene mas personajes, y asi tambien quien tiene menos.








   
  