# Laboratorio 1.

## Bloque 0.
### Problema 1. 

# Asigne a una variable llamada u el n ́umero 318.

u <- 318

# Imprima la variable u de modo que se muestre en el reporte.

print(u)

# Asigne a una variable llamada puntaje el ńumero 826 y agrege ;puntaje al final de la l ́ınea de c ́odigo. Explique qu ́e efecto tuvo agregar ;puntaje.

puntaje <- 826 ;puntaje # ; Sirve como print.

# Genere una secuencia de n ́umeros del 12 al 82 utilizando la funci ́on seq ¿se utiliz ́o print o ; para imprimir la secuencia? ¿por qu ́e?

seq(12,82) # No se utiliza en este caso esas opciones, el resultado se muestra automaticamente, ya que no esta asignado a una variable. Parte del comportamiento predeterminado de R.

# Guarde en una variable llamada v_1 una secuencia de nu´meros del 113 al 245. Imprima.

v_1 <- seq(113, 245) ;v_1

# Guarde  en  una  variable  llamada  v_2  una  secuencia  de  nu´meros  del  113  al  245  sin  utilizar  la  funci´on seq. Imprima. ¿Encuentra alguna diferencia con v_1?
  
v_2 <- 113:245 ;v_2 #No se encuentra ninguna diferencia entre las secuencias generadas (Excepto el met empleado).

# Modifique  la  variable  v_1  de  modo  que  solo  contenga  la  secuencia  de  nu´meros  de  3  en  3.  Asigne  esta secuencia a la variable v_3. Imprima.

v_3 <- seq(113, 245, by = 3) ;v_3

# Intente desarrollar el ejercicio anterior utilizando el c´odigo 113:245,by=3 ¿Funciona?
# 113:245, by = 3 # Se genera un error porque la sintaxis 113:245 solo especifica el inicio y el final de la secuencia y no permite especificar un incremento como argumento.

### Problema 2.

# Genere un vector con números del 113 al 128 y guárdelo en una variable llamada vector  1. Utilice la función matriz. Imprima. ¿Cuál es la diferencia con v_1?

vector_1 <- matrix(c(113:128)) ;vector_1 
class(vector_1) ;class(v_1)    # La diferencia, se puede mostrar con la funcion class. Mientras que vector_1 será de clase matrix, v_1 será de clase numeric, indicando que vector_1 es una estructura bidimensional (matriz) mientras que v_1 es un vector unidimensional.

# Genere  una  matriz  de  cuatro  filas  y  cuatro  columnas  con  números  del  113  al  128  y  guárdela  en  una variable llamada matriz 1.

matriz_1 <- matrix(c(113:128), nrow = 4, ncol = 4) ;matriz_1

# Genere  una  variable  llamada  t  con  una  secuencia  de  números  del  0  al  20.  Genere  un  vector  con  la función t^3 y asígnele una variable llamada vector_2. Imprima

t <- seq(0,20) ;t
vector_2 <- t^3 ;vector_2

# Haga una grafica de puntos de la variable t. 

plot(t, pch = 20)

# Haga una grafica de linea del vector_2.

plot(vector_2, type = "l")

# Modifique  la  matriz  1  cambiando  la  posición  [3, 2]  de  la  matriz  por  un  118.  Imprima  nuevamente  la matriz 1.

matriz_1[3, 2] <- 118 ;matriz_1 # Se cambia el valor de la posicion 3,2 por 118.

plot(matriz_1[,2], pch = 20)
grid()

## Bloque 1

library(readxl)
datos_estudiantes <- read_excel("C:/Users/Luis Felipe/Documents/Estadistica/Estudiantes.xlsx")

### Problema 4. Clasifique las variables de la base de datos dependiendo si son cualitativas o cuantitativas, discretas o continuas, nominales u ordinales.

# Sol. problema 4
#Cualitativas:

## - Nominales:
#  Categoría (numérica)
#  Sede (categórica)
#  Clasificación_Bachillerato (categórica)
#  Clasificación_Primaria (categórica)
#  Estímulo_Municipal (numérica)
#  Beca_Municipal (numérica)
#  Estímulo_Departamental (numérica)
#  Estímulo_Nacional (numérica)
#  Beca_Nacional (numérica)

#Cuantitativas:

## - Discretas:
#  ID_estudiante (numérica)
  
## - Continuas:
#  Interés_Biología (numérica)
#  Puntaje_Biología (numérica)
#  Interés_Lenguaje (numérica)
#  Puntaje_Lenguaje (numérica)
#  Interés_Matemáticas (numérica)
#  Puntaje_Matemáticas (numérica)
#  Interés_Humanidades (numérica)
#  Puntaje_Humanidades (numérica)
#  Beca_Departamental (numérica)

### Problema 5. Realice e interprete un análisis de frecuencias absolutas y relativas para las variables Categoría, Sede, Clasificación_Bachillerato y  Clasificación_Primaria.

# Cálculo de frecuencias absolutas para la variable Categoría
absolutas_categoria <- table(datos_estudiantes$Categoría)
print("Frecuencias absolutas para la variable Categoría:")
print(absolutas_categoria)

# Cálculo de frecuencias relativas para la variable Categoría
relativas_categoria <- prop.table(absolutas_categoria) * 100
print("Frecuencias relativas para la variable Categoría (%):")
print(relativas_categoria)

# Cálculo de frecuencias absolutas para la variable Sede
absolutas_sede <- table(datos_estudiantes$Sede)
print("Frecuencias absolutas para la variable Sede:")
print(absolutas_sede)

# Cálculo de frecuencias relativas para la variable Sede
relativas_sede <- prop.table(absolutas_sede) * 100
print("Frecuencias relativas para la variable Sede (%):")
print(relativas_sede)

# Cálculo de frecuencias absolutas para la variable Clasificación_Bachillerato
absolutas_bachillerato <- table(datos_estudiantes$Clasificación_Bachillerato)
print("Frecuencias absolutas para la variable Clasificación_Bachillerato:")
print(absolutas_bachillerato)

# Cálculo de frecuencias relativas para la variable Clasificación_Bachillerato
relativas_bachillerato <- prop.table(absolutas_bachillerato) * 100
print("Frecuencias relativas para la variable Clasificación_Bachillerato (%):")
print(relativas_bachillerato)

# Cálculo de frecuencias absolutas para la variable Clasificación_Primaria
absolutas_primaria <- table(datos_estudiantes$Clasificación_Primaria)
print("Frecuencias absolutas para la variable Clasificación_Primaria:")
print(absolutas_primaria)

# Cálculo de frecuencias relativas para la variable Clasificación_Primaria
relativas_primaria <- prop.table(absolutas_primaria) * 100
print("Frecuencias relativas para la variable Clasificación_Primaria (%):")
print(relativas_primaria)

### Problema 6. Obtenga una tabla de frecuencias donde se muestre la cantidad de estudiantes clasificados en bachillerato con rendimiento superior por cada tipo de sede. Haga un diagrama de barras para esta información, interprete. 

superior_bachillerato <- datos_estudiantes[datos_estudiantes$Clasificación_Bachillerato == "REND_SUPERIOR", ]
tabla_frecuencias <- table(superior_bachillerato$Sede)
print("Tabla de frecuencias de estudiantes clasificados en bachillerato con rend superior por tipo de sede:")
print(tabla_frecuencias)

barplot(tabla_frecuencias, main = "Estudiantes clasificados en bachillerato con rendimiento superior por tipo de sede", xlab = "Tipo de sede", ylab = "Cantidad de estudiantes", col = "skyblue")

# Se puede entender que la mayor cantidad de estudiantes clasificados en bachillerato con rendimiento superior se encuentran las sedes de urbana ciudad y urbana municipio. Por otra parte, las sedes rural y rural etnico con las de menor rendimiento superior.

### Problema 7. Desarrolle el ejercicio anterior para los tipos de rendimiento restantes.

medio_bachillerato <- datos_estudiantes[datos_estudiantes$Clasificación_Bachillerato == "REND_MEDIO", ]
tabla_frecuencias <- table(medio_bachillerato$Sede)
print("Tabla de frecuencias de estudiantes clasificados en bachillerato con rend medio por tipo de sede:")
print(tabla_frecuencias)

barplot(tabla_frecuencias, main = "Estudiantes clasificados en bachillerato con rendimiento medio por tipo de sede", xlab = "Tipo de sede", ylab = "Cantidad de estudiantes", col = "skyblue")
# Se puede entender que hay mayor cantidad de estudiantes con rendimiento medio en la sede rural y urbana municipio.

inferior_bachillerato <- datos_estudiantes[datos_estudiantes$Clasificación_Bachillerato == "REND_INFERIOR", ]
tabla_frecuencias <- table(inferior_bachillerato$Sede)
print("Tabla de frecuencias de estudiantes clasificados en bachillerato con rend inferior por tipo de sede:")
print(tabla_frecuencias)

barplot(tabla_frecuencias, main = "Estudiantes clasificados en bachillerato con rendimiento inferior por tipo de sede", xlab = "Tipo de sede", ylab = "Cantidad de estudiantes", col = "skyblue")
# Se puede entender que hay mayor cantidad de estudiantes con rend inferior en rural y rural etnico.

## Problema 12

# Tabla de frecuencias por sede y rendimiento primaria

ftable(Estudiantes$Sede, Estudiantes$Clasificacion_Primaria)
prop.table(ftable(Estudiantes&Sede, Estudiantes&Clasificacion_primaria))

ftable(Estudiantes$Sede, Estudiantes$Clasificación_Bachillerato)
prop.table(ftable(Estudiantes$Sede, Estudiantes$Clasificacion_Bachillerato))

# De acuerdo cob la salida computacional en la cual se presenta la distribucion de frecuencias absolutas 
#(conteos) y relativa, se puede establecer que la regla aplicada por la secretaria de educacion fue igua