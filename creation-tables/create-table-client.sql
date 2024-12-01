-- CREATE TABLE CLIENT--

-------------------------------------------
-- AUTHOR: Guillermo Ayllon --
-- DATE: 24/11/2024 --
-------------------------------------------

CREATE TABLE Clientes(
	idCliente int NOT NULL IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL,
	Apellido VARCHAR(50) NOT NULL,
	Fnacimiento DATE NOT NULL,
	Domicilio VARCHAR(50) NOT NULL,
	idPais CHAR(3) NOT NULL,
	Telefono VARCHAR(30) NULL,
	Email VARCHAR(30) NOT NULL,
	Observaciones VARCHAR(1000) NULL,
	FechaAlta DATETIME NOT NULL
	CONSTRAINT PK_idCliente PRIMARY KEY(idCliente)
)