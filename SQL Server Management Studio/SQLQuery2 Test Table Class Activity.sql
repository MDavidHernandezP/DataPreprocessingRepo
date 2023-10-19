-- Query para primer tabla base de datos "test" y su respectiva tabla "test".

-- Query con el objetivo de primero ordenar y luego cambiar valores en ciertas columnas de la tabla.
SELECT BsmtFullBath, BsmtHalfBath, Fullbath, HalfBath, Id from test 
WHERE Neighborhood = 'SawyerW' 
AND Id>1449 
AND ID<1851e
ORDER BY HalfBath
UPDATE test 
SET Neighborhood = 'Caucel'
WHERE Neighborhood = 'SawyerW' 
AND Id>1449 
AND ID<1851e
UPDATE test
SET Street = 'Pave'
WHERE Street = 'Pavimento'
UPDATE test
SET Street = 'Grvl'
WHERE Street = 'Sascab';
