-- Ahora queremos aplicar el mismo proceso con las otras dos tablas de la base de datos del INEGI.

-- Select para poder tener un vistazo general de la tabla
SELECT * FROM entidad;
-- Ok, aquí el problema es que la tabla como tal no tiene ninguna columna categórica y sus cáracteres especiales no afectan.
-- Entonces ya no hay nada que podamos hacer ya está limpia la tabla.
-- Esto lo podemos comprobar llamando a los valores Yucatán en la tabla.
SELECT 'Yucatán' FROM entidad;
-- Al correr esto no nos da ningun problema y nos muestra las filas con Yucatán.

-- Select para poder tener un vistazo general de la tabla
SELECT * FROM seccion;
-- Ahora con esta tercera tabla estamos practicamente igual.
-- Ya que podemos ver que ninguna columna tiene nombre o algo, todas son puros números a los que no podemos moverle nada.