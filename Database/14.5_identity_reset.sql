--borra todos los registros de una tabla pero no resetea el IDENTITY
DELETE FROM users;

--borra todos los registros de una tabla y resetea el IDENTITY
TRUNCATE TABLE users;

----------------------Script para encontrar el id maximo y ajustarlo--------------------
DECLARE @max_id INT;

-- Obtener el valor máximo de columna_PK con el IDENTITY asinado en la tabla 
SELECT @max_id = MAX(column_name) FROM users;

-- Si la tabla está vacía, establecer a 0 para que el próximo sea 1
IF @max_id IS NULL
    SET @max_id = 0;

-- Ajustar el IDENTITY con el valor correcto
DBCC CHECKIDENT ('nombre_de_la_tabla', RESEED, @max_id);
------------------------------------------------------------------------

--resetear el IDENTITY a un numero en especifico (se va a resetear a el numero que pongas despues del RESEED +1)
DBCC CHECKIDENT ('nombre_de_la_tabla', RESEED, 0);


-- Para asignar manualmente un id que hace uso del identity se necesita encender el IDENTITY_INSERT y apagarlo al final
SET IDENTITY_INSERT users ON;

INSERT INTO users (user_id, name, lastname, age, email)
VALUES
	(23, 'joel', 'gallardo', 26, '4joelon@gmail.com'); 

SET IDENTITY_INSERT users OFF;