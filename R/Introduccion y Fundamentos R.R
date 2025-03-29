# Ejercicio 1: Variables y Tipos de Datos
nombre <- "Jose Manuel"

# Ejercicio 2: Funciones class e is.numeric
numero <- 10
tipo_numero <- class(numero)
es_numerico <- is.numeric(numero)

# Ejercicio 3: Operaciones Aritméticas
suma_numero <- numero + 5  

# Ejercicio 4: Vectores y Listas
edades <- c(25, 30, 18)  
doble_edades <- edades * 2  
informacion <- list(nombre = "Juan", edad = 25) 

# Ejercicio 5: Funciones is.character e is.logical
es_caracter <- is.character(nombre)
es_logico <- is.logical(TRUE)  # Ejemplo con un valor lógico

# Ejercicio 6: Operaciones Lógicas
mayor_de_edad <- edades[1] >= 18  # Verifica si la primera edad es mayor o igual a 18

# Ejercicio 7: Comparaciones de Vectores
esta_30_en_edades <- 30 %in% edades  # Verifica si 30 está en edades

# Ejercicio 8: Operadores de Comparación
doble_numero_mayor_edad3 <- (numero * 2) > edades[3]  # Compara si el doble de numero es mayor que edades[3]

# Ejercicio 9: Utilizar Operador Lógico
condicion1 <- TRUE
condicion2 <- TRUE
ambas_verdaderas <- condicion1 & condicion2  # Comprueba si ambas son TRUE

# Ejercicio 10: Utilizar Operador Lógico con Negación
verdadero <- TRUE
negacion_verdadero <- !verdadero  # Comprueba que su valor NO sea verdadero

# Imprimir resultados para verificación
print(list(
  tipo_numero = tipo_numero,
  es_numerico = es_numerico,
  suma_numero = suma_numero,
  edades = edades,
  doble_edades = doble_edades,
  informacion = informacion,
  es_caracter = es_caracter,
  es_logico = es_logico,
  mayor_de_edad = mayor_de_edad,
  esta_30_en_edades = esta_30_en_edades,
  doble_numero_mayor_edad3 = doble_numero_mayor_edad3,
  ambas_verdaderas = ambas_verdaderas,
  negacion_verdadero = negacion_verdadero
))
