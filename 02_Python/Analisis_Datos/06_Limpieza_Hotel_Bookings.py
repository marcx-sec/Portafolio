# Importar el .csv 
import pandas as pd
df_train = pd.read_csv('Hotel_Bookings.csv')

# Ver columnas
print(df_train.columns)
print("Total de valores nulos en children")
print("Antes de la limpieza:")

# Buscar valores nulos 
print(df_train['children'].isnull().sum())

# Tipo de dato de children 
print("Tipo de dato de children antes del cambio:")
print(df_train['children'].dtypes)

'''
# Generar meal sin cambios
mealS = df_train[['meal']]
mealS.to_csv("Meal sin cambios", index=False)
'''

# Cambiar valores 
df_train['children'] = df_train['children'].fillna(0) # NA es un tipo de float en este caso, use .fillna para rellenar los valores nulos con 0
df_train['meal'] = df_train['meal'].replace('Undefined', 'AA')
df_train['distribution_channel'] = df_train['distribution_channel'].replace('Undefined', 'comercial')
df_train['market_segment'] = df_train['market_segment'].replace('Undefined', 'Comercial')
df_train['agent'] = df_train['agent'].fillna(0)
df_train['company'] = df_train['company'].fillna(0)

'''
# Generar meal con cambios 
mealC = df_train[['meal']]
mealC.to_csv("Meal con cambios", index=False)
'''

# Buscar valores nulos 
print("Total de valores nulos en children")
print("Despues de la limpieza:")
print(df_train['children'].isnull().sum())
print("Datos Unicos:")
print(df_train['children'].unique()) # Lo use para ver si habia un valor NAN unico

# Cambiar children de float a int
df_train['children'] = df_train['children'].astype(int)

# Cambiar agent de float a int
df_train['agent'] = df_train['agent'].astype(int)

# Cambiar company de float a int
df_train['company'] = df_train['company'].astype(int)

# Tipo de dato de children 
print("Tipo de dato de children despues del cambio:")
print(df_train['children'].dtypes)

df_train.to_csv("Hotel Booking Limpio.csv", index=False)