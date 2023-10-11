import pandas as pd
#Importamos la librería pandas y la nombramos como "pd" para abreviar

bankdf = pd.read_csv("C:/Users/marit/OneDrive/UPY programming stuff/UPY DATA PREPROCESSING/bank-additional/bank-additional.csv")
#Declaramos una variable para poder llamar al csv o nuestra base de datos y leerla
#C:/Users/marit/OneDrive/UPY programming stuff/UPY DATA PREPROCESSING/bank-additional/bank-additional.csv

print(bankdf)
#Imprimimos nuestra variable para que nos muestre el csv en la Terminal

print(bankdf.head(5))
#Son demasiadas filas en el csv porque son muchos datos entonces con .head acortamos a solo las primeras 5 filas

bankdf2 = pd.read_csv("C:/Users/marit/OneDrive/UPY programming stuff/UPY DATA PREPROCESSING/bank-additional/bank-additional.csv",sep = ";")
#Aqui declaramos una segunda variable para tener un csv pero separado y sin los puntos y comas"

print(bankdf2.head(5))
#Imprimimos este nuevo csv, aparte le agregamos el .head para que no se nos muestren todas las filas

print(bankdf2.describe())
#Ahora con el .describe haremos que se nos entreguen los datos estadisticos sobre nuestro csv
