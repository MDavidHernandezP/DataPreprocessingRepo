#Importar Librerías
import pandas as pd

#Función para validar que los números son valores númericos
def is_numeric(value):
    try:
        float(value)
        return True
    except (ValueError, TypeError):
        return False

#Menú para escoger entre los dos csv
print("Escoge que csv usar, escribe (esau) ó (test)")
select = input()
#Selección del csv de esaú
if select == "esau":
    #Load Data
    data = pd.read_csv("C:/Users/Personal/OneDrive/Programming/UPY programming stuff/UPY DATA PREPROCESSING/Handling missing values resources/ModalidadVirtual.csv")
    print(data)
    #Corregir problema de indexado
    data.set_index(data.columns[0], inplace=True)

#Selección del csv extra
elif select == "test":
    #Load Data
    data = pd.read_csv("C:/Users/Personal/OneDrive/Programming/UPY programming stuff/UPY DATA PREPROCESSING/Handling missing values resources/test.csv")
    print(data)
else:
    print("Escribe una de las opciones")

#Delete features with more than 70% missing values
print("Delete features with more than 70% missing values")
umbral1 = 0.7 * len(data.columns)
data_missing_70 = data.dropna(thresh=umbral1)
print(data_missing_70)

#Delete observations with more than 50% missing values
print("Delete observations with more than 50% missing values")
umbral2 = 0.5 * len(data.columns)
data_missing_50 = data.dropna(thresh=umbral2)
print(data_missing_50)

#Check for duplicated rows
print("Check for duplicated rows")
data_unduplicate = data.drop_duplicates()
print(data_unduplicate)

data_duplicated_rows = data[data.duplicated()]
print(data_duplicated_rows)

#Delete features with average equal to Zero
print("Delete features with average equal to Zero")
description = data.describe()
means = description.loc['mean']
delete_columns = means[means == 0].index
data_avg_equal_zero = data.drop(columns=delete_columns)
print(data_avg_equal_zero)

#Identify Type of data of each feature
print("Identify Type of data of each feature")
datatypes = data.dtypes
print(datatypes)

#Validate that Numbers are numeric values
print("Validate that Numbers are numeric values")
is_numeric_dataset = data.applymap(is_numeric)
non_numeric_values_exist = not is_numeric_dataset.all().all()

if non_numeric_values_exist:
    print("There are non-numeric values in the dataset.")
else:
    print("All values in the dataset are numeric.")

#Identify Categorical Features -: Generate the corresponding Dummy columns
print("Identify Categorical Features -: Generate the corresponding Dummy columns")
data_categories = data.select_dtypes(include=['object', 'category'])
print(data_categories)
