##### Manejo de Erroes #####
def divide(x,y): 
    try:
        z = x / y
        if z < 0:
            raise ValueError("Lo siento, no hay numeros por debajo de 0")
    except (ZeroDivisionError):
        print("Error con la entrada de argumentos")
        try:
            v = 1 / "a"
        except TypeError:
            print("Error")
    except ValueError as ve:
        print(ve)
    else:
        return z
    finally:
        print("Clasula de ejecucion final")

# Ejecucion del programa 
result = divide(12,1)
print(result)