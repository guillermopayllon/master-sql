-------------------------------------------
-- AUTHOR: Guillermo Ayllon --
-- DATE: 24/11/2024 --
-- Final project of the IBM and DataHack SQL master --
-------------------------------------------

CREATE TABLE CampaniaProducto(
	idCampania int NOT NULL IDENTITY(1,1),
	idProducto int NOT NULL,
	Descripcion VARCHAR(100) NOT NULL
	PRIMARY KEY(idCampania, idProducto)
)