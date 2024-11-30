-------------------------------------------
-- AUTHOR: Guillermo Ayllon --
-- DATE: 24/11/2024 --
-- Final project of the IBM and DataHack SQL master --
-------------------------------------------

CREATE TABLE Compras(
	idCompras int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Concepto int NOT NULL,
	Fecha datetime NOT NULL,
	Monto money NOT NULL,
	Observaciones VARCHAR(1000) NULL
)