--	Select general para tener un mejor vistazo a la tbala "distrito".
SELECT * FROM distrito;

-- Tarea (Jugar con el dataset).
-- Sustituir caracteres especiales (cols. Nom_ent, y Complejida).
-- Crear Dummy columns based on Categorical data.

-- Nos dimos cuenta que la base de datos no soporta acentos entonces se los cambiamos, poniendo media palabra y el simbolo de porcentaje.
UPDATE distrito
SET NOM_ENT = 'Yucatan'
WHERE NOM_ENT = 'Yucatán'
-- Aquí hice un update de todos los estado con la "Yucatán" por "Yucatan" para quitar el acento y evitar problemas.
UPDATE distrito
SET NOM_ENT = 'Ciudad de Mexico'
WHERE NOM_ENT LIKE 'Ciudad de M%'
-- Y así lo seguí haciendo con todos los demás estado que tenían acento.
UPDATE distrito
SET NOM_ENT = 'Mexico'
WHERE NOM_ENT LIKE '%xico'
-- Puede que en el código me haya saltado algún estado, pero es debido a que al principio estaba cambiando uno por uno los estados.
UPDATE distrito
SET NOM_ENT = 'Nuevo Leon'
WHERE NOM_ENT LIKE 'Nuevo Le%'
UPDATE distrito
SET NOM_ENT = 'Michoacan de Ocampos'
WHERE NOM_ENT LIKE 'Michoac%'
UPDATE distrito
SET NOM_ENT = 'Queretaro'
WHERE NOM_ENT LIKE 'Quer%'
UPDATE distrito
SET NOM_ENT = 'San Luis Potosi'
WHERE NOM_ENT LIKE 'San Luis Potos%'

-- Aquí realizo un select distinct para que solo me muestre la columna a la que le aplicamos cambios.
SELECT DISTINCT NOM_ENT FROM distrito;

-- También nos encontramos con que la columna complejida igual tenía valores con acento, entonces se los cambiamos.
UPDATE distrito
SET COMPLEJIDA = 'Concentracion Media'
WHERE COMPLEJIDA LIKE 'Concentraci%'
SELECT DISTINCT COMPLEJIDA FROM distrito;

-- Ahora queríamos agregar nuevas columnas por los 9 tipos de valores en la columna complejida.
ALTER TABLE distrito
ADD ALT_CON_1 INT, ALT_CON_2 INT, CON_MED INT, CON_1 INT, CON_2 INT, DIS_1 INT, DIS_2 INT, MUY_DIS_1 INT, MUY_DIS_2 INT;

-- Entonces ahora que ya tenemos las columnas queremos llenarlas porque mientras solo tiene valores nulos.
UPDATE distrito -- Update básico en distrito
SET -- Set para asignar los nuevos valores

-- Y aquí aplicamos algo distinto, aquí estamos diciendo que el valor de la fila será 1 o 0.
  ALT_CON_1 = CASE WHEN COMPLEJIDA = 'Altamente Concentrado 1' THEN 1 ELSE 0 END,
  ALT_CON_2 = CASE WHEN COMPLEJIDA = 'Altamente Concentrado 2' THEN 1 ELSE 0 END,
  CON_MED = CASE WHEN COMPLEJIDA = 'Concentración Media' THEN 1 ELSE 0 END,
  CON_1 = CASE WHEN COMPLEJIDA = 'Concentrado 1' THEN 1 ELSE 0 END,
  CON_2 = CASE WHEN COMPLEJIDA = 'Concentrado 2' THEN 1 ELSE 0 END,
  DIS_1 = CASE WHEN COMPLEJIDA = 'Disperso 1' THEN 1 ELSE 0 END,
  DIS_2 = CASE WHEN COMPLEJIDA = 'Disperso 2' THEN 1 ELSE 0 END,
  MUY_DIS_1 = CASE WHEN COMPLEJIDA = 'Muy Disperso 1' THEN 1 ELSE 0 END,
  MUY_DIS_2 = CASE WHEN COMPLEJIDA = 'Muy Disperso 2' THEN 1 ELSE 0 END;
-- El que sea 1 o 0 dependerá de si a columna busca que en esa fila se encuentra el valor al que originalmente pertenecía.

-- Y por último un select de todo para ver los cambios reflejados.
  SELECT * FROM distrito;