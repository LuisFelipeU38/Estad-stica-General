'''Laboratorio 1.

Bloque 0.
Problema 1. '''

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

## Problema 2.

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

# Bloque 1

## Problema 12

# Tabla de frecuencias por sede y rendimiento primaria

ftable(Estudiantes$Sede, Estudiantes$Clasificacion_Primaria)
prop.table(ftable(Estudiantes&Sede, Estudiantes&Clasificacion_primaria))

ftable(Estudiantes$Sede, Estudiantes$Clasificación_Bachillerato)
prop.table(ftable(Estudiantes$Sede, Estudiantes$Clasificacion_Bachillerato))

# De acuerdo cob la salida computacional en la cual se presenta la distribucion de frecuencias absolutas 
(conteos) y relativa, se puede establecer que la regla aplicada por la secretaria de educacion fue igua