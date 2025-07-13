# Declaramos variables 
nombre = input("Ingrese su nombre: ")
departamento = input("Ingrese su departamento: ")
mes_de_salario = input("Ingrese el mes de paga: ")
salario_bruto = int(input("Ingrese su salario bruto: ")) 
porcentaje_de_deducciones = int(input("Ingrese el valor de los impuestos (sin %): "))
salario_neto = salario_bruto - ((porcentaje_de_deducciones/100)*salario_bruto)
# Salida
print()
print("# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #")
print("Estimado ",nombre, " el departamento de ",departamento)
print("le informa que se ha procesado su salario del mes de ",mes_de_salario)
print("y se desglosa de la siguiente forma:")
print()
print("Salario Bruto: ",salario_bruto)
print("Deducciones: ",porcentaje_de_deducciones,"%")
print("Salario Neto: ",int(salario_neto))
print("# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #")
# Generar archivo .csv 
# Importar libreria 
import csv 
# Generar archivo
with open("salarios.csv", mode="w", newline="", encoding="utf-8") as archivo:
    escritor = csv.writer(archivo)
    escritor.writerow(["Nombre", "Departamento", "Mes de Salario", "Salario Bruto", "Porcentaje", "Salario Neto"])
    escritor.writerow([nombre, departamento, mes_de_salario, salario_bruto, porcentaje_de_deducciones, int(salario_neto)])
print("Datos Guardados en archivo csv")

# El archivo generado se encuentra con la enumeración 04 y la extensión .csv