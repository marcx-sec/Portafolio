# 1. Realice una función personalizada llamada “ValidaMorosidad” 
#    la cual reciba por parámetro un vector de 12 datos numéricos 
#    que representen días de atraso en 12 operaciones financieras 
#    y con base en el promedio de esos valores, califique al cliente de la siguiente forma:
#    a. Si el promedio es de 30 días o menos, indique “Morosidad Baja”.
#    b. Si está entre 31 y 60 días, indique “Morosidad Media”.
#    c. Si está entre 61 y 90 días, indique “Morosidad Alta”.
#    d. Si está entre 91 y 120 días, indique “Morosidad muy Alta”.
#    e. Más de 120 días, indique “Morosidad Crítica”.

ValidaMorosidad <- function(Datos){
  x <- mean(Datos)
  if(x <= 30){
    print("Morosidad Baja")
  } else if(x >= 31 & x <= 60){
    print("Morosidad Media")
  } else if(x >= 61 & x <= 90){
    print("Morosidad Alta")
  } else if(x >= 91 & x <= 120){
    print("Morosidad muy Alta")
  } else {
    print("Morosidad Critica")
  }
  return(x)
}

D <- c(sample(1:12, 12))
D
ValidaMorosidad(D)

# 2. Se dispone de los siguientes datos: 1,3,4,2,3,2,4,4,5,3,2,1,2 y 5 
#    que representa la consulta a varias personas sobre su grado académico, 
#    donde 1 = primaria, 2 = secundaria, 3 = técnico, 4 = diplomado, 5 = universitario.
#    Cree en R un vector de nombre "grados" con los valores anteriores.
#    A partir de dicho vector, cree una variable llamada “No Profesional” 
#    donde indique “Si” cuando el valor en el vector creado sea diferente de 5 
#    y “Profesional” para todos los demás.
#    Para ello debe usar la función ifelse de R.

Grados <- c(1,3,4,2,3,2,4,4,5,3,2,1,2)

NoProfesional <- ifelse(Grados != 5, "Si", "Profesional")
NoProfesional

# 3. Realice un procedimiento que evalúe un vector numérico del 1 al 150 
#    y si el dato es impar muestre el número, 
#    de lo contrario no muestre nada.

y <- sample(1:150, 1)
y

ifelse(y %% 2 != 0, y,"")

# 4. Desarrolle una función personalizada para que tome dos valores numéricos cualesquiera 
#    y sobre ellos se puedan hacer las 4 operaciones básicas: 
#    a) suma, b) resta, c) división y d) multiplicación. 
#    La función debe contener 3 argumentos para indicar: 
#    valor1, valor2 y operación. 
#    Utilice la función SWITCH.

Mate <- function(n1, n2, op){
  switch(op,
         suma = n1 + n2,
         resta = n1 - n2,
         multiplicacion = n1 * n2,
         division = n1 / n2)
}

Mate(5,2,"multiplicacion")

# 5. Desarrolle una función personalizada que reciba tres valores numéricos como parámetro 
#    y determine cuál de los tres números es menor. 
#    En caso de que se presenten dos números iguales menores, 
#    debe mostrar un mensaje indicando que hay números iguales.

numeroMenor <- function(n1, n2,n3){
  y <- c(n1, n2, n3)
  x <- min(y)
  r <- sum(y == x)
  if(r == TRUE){
    print("Los numeros no se repiten")
  } else {
    print("Los numeros se repiten")
  }
  print("En orden menor a mayor:")
  return(sort(y))
}

numeroMenor(100,400,100)