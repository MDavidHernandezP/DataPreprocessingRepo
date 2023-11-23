"""
-- Crear la tabla usuarios
CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(255),
    edad INT
);
"""

import sqlite3

# Conectar a la base de datos SQLite (si no existe, se creará)
conexion = sqlite3.connect('mi_base_de_datos.db')

# Crear un cursor para ejecutar comandos SQL
cursor = conexion.cursor()

# Insertar datos en la tabla usuarios
datos_usuario = [
    (1, 'Juan', 25),
    (2, 'María', 30),
    (3, 'Pedro', 22)
]

# Consulta SQL para insertar datos
consulta_insertar = "INSERT INTO usuarios (id, nombre, edad) VALUES (?, ?, ?)"

# Ejecutar la consulta para insertar datos
cursor.executemany(consulta_insertar, datos_usuario)

# Confirmar los cambios y cerrar la conexión
conexion.commit()
conexion.close()
