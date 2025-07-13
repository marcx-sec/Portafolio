##### Tipos de Datos con entrada input #####
palabra = input("Introduce una palabra: ")
num_int = input("Introduce un numero entero: ")
num_float = input("Introduce un numero flotante: ")
num_compless = input("Introduce un numero complejo: ")

print("String: ", palabra)
print("Entero: ", num_int)
print("Flotante: ", num_float)
print("Numero Complejo: ", num_compless)

##### Operadores Relacionales #####
x=2; y=3
print("Operadores relacionales")
print("x == y ", x==y) # False 
print("x < y ", x<y) # True 
print("x > y ", x>y) # False
print("x != y ", x!=y) #True
print("x <= y ", x<=y) # True
print("x >=y ", x>=y) # False

##### Operadores Logicos ##### 
# And 

p=2; q=4

numero = int(input("Ingrese un numero: "))

if numero > p and numero > q: 
    print("El numero: ", numero, " es mayor a 4")
else:
    print("El numero: ", numero, " es menor a 4")

# Or

if p==numero or q==numero:
    print("El numero, ",numero, " es igual a 2 o 4")
else:
    print("El numero es distinto a 2 o 4")

# Not 

if not numero == 5: 
    print("El numero es diferente a 5")
else:
    print("El numero es 5")