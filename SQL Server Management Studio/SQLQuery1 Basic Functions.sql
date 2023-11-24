-- Seleccionar todas las columnas tabla "test".
SELECT * FROM test;

-- Query para traer solo la segunda y tercera fila de nuestra tabala "test."
-- Notas: El que las funciones est�n en may�sculas e indentadas, es solo el est�ndar pero no es necesario para que funcionen.
SELECT * FROM test
	WHERE Id = 2 AND Id = 3;

-- Update para una tabla dentro de una base de datos.
UPDATE test
	SET Neighborhood = 'CAUCEL' -- Asignamos nuevo valor igualado a una columna.
	WHERE
		Neighborhood = 'SawyerW' -- Valor por el cual vamos a cambiar o actualizar igualado a una columna.
	AND
		Id > 1450 -- Asiganmos que la actualizaci�n solo sea en un rango espec�fico.
	AND
		Id < 1850;

-- Insert: Sirve para poner una nueva fila al final de nuestra tabla.
INSERT INTO test
	(FullBath, HalfBath, Street)
VALUES
	(2, 2,'Sascab');
SELECT * FROM test
	WHERE Street =  'Sascab'

-- Delete: Pues para eliminar
DELETE FROM test
	WHERE FullBath = 2 AND HalfBath = 2 AND Street = 'Sascab';

-- Concatenate: Sirve para a�adir columnas.