-------------------------------------------
-- AUTHOR: Guillermo Ayllon --
-- DATE: 24/11/2024 --
-- Final project of the IBM and DataHack SQL master --
-------------------------------------------

/**
    1. Create a STORED PROCEDURE to insert new customers into the Customers table

    2. Add the DNI field as in the course exercise (previous records will be left blank or null).

    3. The STORED PROCEDURE must be executed with the following expression:
        EXPRESSION: EXEC Nuevo_Cliente '2351365', 'Raúl', 'Stuart', '19850521', 'La regasta 25',
        'ESP', '655821547', 'Raul@krokimail,com'

    Consider the information given by the previous expression, for example the name of the table you should use.
*/

EXEC  Nuevo_Cliente '2351365', 'Raúl', 'Stuart', '19850521', 'La regasta 25', 'ESP', '655821547', 'Raul@krokimail.com','','20241124 20:45:00.000'

-- We will modify the word CREATE once the STORED PROCEDURE has been created by ALTER in order to be able to insert records
-- ALTER PROC Nuevo_Cliente(
CREATE PROC Nuevo_cliente(
	@Dni VARCHAR(7),
	@Nombre VARCHAR(50),
	@Apellido VARCHAR(50),
	@Fnacimiento DATE,
	@Domicilio VARCHAR(50),
	@idPais CHAR(3),
	@Telefono VARCHAR(30),
	@Email VARCHAR(30),
	@Observaciones VARCHAR(1000),
	@FechaAlta DATETIME
)
AS

IF NOT EXISTS (SELECT * FROM Clientes WHERE Dni = @Dni)
BEGIN
	INSERT INTO Clientes(Dni, Nombre, Apellido, Fnacimiento, Domicilio, idPais, Telefono, Email, Observaciones, FechaAlta)
	VALUES( @Dni, @Nombre, @Apellido, @Fnacimiento, @Domicilio, @idPais, @Telefono, @Email, @Observaciones, @FechaAlta)
	PRINT 'El cliente se agrego correctamente'
	RETURN
END
BEGIN
	PRINT 'El cliente ya existe'
END