"""
-- Crear la tabla (ALMACEN POR SUCURSAL RESUMEN)
CREATE TABLE ALMACEN POR SUCURSAL RESUMEN (
    ID_Sucursal _Pedido INT PRIMARY KEY,
    ID_Sucrsal INT,
    ID_Pedido INT,
    ID_Empleado_Recibio INT,
    TS_Ingreso INT
);
"""

"""
-- Crear la tabla (TICKETS DETALLE)
CREATE TABLE TICKETS DETALLE (
    ID_ProductosTicket INT PRIMARY KEY,
    ID_Ticket INT,
    ID_Producto INT,
    Cantidad INT,
    Subtotal_Producto INT
);
"""
import pyodbc

# Conectar a la base de datos de SQL Server
conexion = pyodbc.connect('DRIVER={SQL Server};'
                          'SERVER=BATLAPTOP-MKN6N;'
                          'DATABASE=master;'
                          'UID=nombre_de_usuario;'
                          'PWD=contraseña')

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
