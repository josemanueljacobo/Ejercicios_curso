# Ejercicio 1: Definir una Función sin Parámetros

saludo <- function() {
  print("Hola, bienvenido a R")
}

# Ejercicio 2: Definir una Función con Parámetros y Condicionales

calificar_edad <- function(edad) {
  if (edad < 18) {
    print("menor de edad")
  } else {
    print("mayor de edad")
  }
}

# Ejercicio 3: Bucle con Operaciones Aritméticas

tabla_multiplicar <- function(n) {
  for (i in 1:10) {
    resultado <- n * i
    print(paste(n, "x", i, "=", resultado))
  }
}


# Ejercicio 4: Bucle con Condicionales y Operaciones con Vectores

numeros_pares <- function(limite) {
  for (i in 1:limite) {
    if (i %% 2 == 0) {
      print(i)
    }
  }
}


# Ejercicio 5: Bucle Anidado con Condicionales y Operaciones de Listas

matriz_cuadrada <- function(n) {
  for (i in 1:n) {
    fila <- c()
    for (j in 1:n) {
      fila <- c(fila, i + j)
    }
    print(fila)
  }
}

