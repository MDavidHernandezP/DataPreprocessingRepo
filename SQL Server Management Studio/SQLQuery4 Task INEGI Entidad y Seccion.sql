-- Ahora queremos aplicar el mismo proceso con las otras dos tablas de la base de datos del INEGI.

-- Select para poder tener un vistazo general de la tabla
SELECT * FROM entidad;
-- Ok, aqu� el problema es que la tabla como tal no tiene ninguna columna categ�rica y sus c�racteres especiales no afectan.
-- Entonces ya no hay nada que podamos hacer ya est� limpia la tabla.
-- Esto lo podemos comprobar llamando a los valores Yucat�n en la tabla.
SELECT 'Yucat�n' FROM entidad;
-- Al correr esto no nos da ningun problema y nos muestra las filas con Yucat�n.

-- Select para poder tener un vistazo general de la tabla
SELECT * FROM seccion;
-- Ahora con esta tercera tabla estamos practicamente igual.
-- Ya que podemos ver que ninguna columna tiene nombre o algo, todas son puros n�meros a los que no podemos moverle nada.