# Variables de Tipo Numerico 

Edad <- 38 
tipoCambio <- 520.87 

# Variables de tipo caracter 

nombreCliente <- "Marco"
ApellidoCliente <- "Monge"


# Variables de tipo logicas 
#True o F (False)

asisteEvento <- T 

# OPERADORES ARITMETICOS 

10 + 10
10 - 10
10 * 10
10 / 10
10 ^ 2
10 %% 10

valor1 <- 15 
valor2 <- 5

valor1 + valor2 

resultado <- valor1 + valor2
resultado

# Operadores condicionales 

10 > 5
10 < 5
10 == 6
10 != 5 
10 >= 5
10 <= 6

resultadocomparacion <- valor1 > valor2 
resultadocomparacion

# Operadores relacionales 

10 > 5 & 10 < 30
10 > 5 & 5 > 6

10 > 5 | 5 > 6

resultadoComparacionCound <- valor1 > 10 & valor2 < 30 
resultadoComparacionCound

# Union de operadores 

a <- 10 
b <- 6
c <- 4

(b + a) == 16 & (c*2) > 10 & (a+b+c) < 100

((b + a) == 16 & (a+b+c) < 100) | ((c*2)) > 10 

# Vectores 

numeros <- c(10,20,30,40,50,60,70,80,90,100)
numeros2 <- c(10,20,30,40,50,60,70,80,90,100,102,103)

numeros2 + numeros
numeros2 - numeros
numeros2 / numeros
numeros2 * numeros

numeros[2]
numeros[2:6]
numeros[-5]
numeros[c(2,5,8)]
numeros[-c(1,6,3,9)]
max(numeros)
min(numeros)
mean(numeros)

nuevoVector <- numeros + 15
nuevoVector 

resultadoCondicion <- numeros < 55
resultadoCondicion

sum(resultadoCondicion)
numeros[resultadoCondicion]

numerosAlazar <- sample(1:200, 35)
numerosAlazar

resultadoCondicion <- numerosAlazar %% 2 == 0 & numerosAlazar > 100
resultadoCondicion

sum(numerosAlazar[resultadoCondicion])

vector1 <- c(1,2,3,4,5)
vector2 <- c(6,7,8,9,10) 

vector3 <- vector1 + vector2
vector3