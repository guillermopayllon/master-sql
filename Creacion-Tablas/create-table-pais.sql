-------------------------------------------
-- AUTHOR: Guillermo Ayllon --
-- DATE: 24/11/2024 --
-------------------------------------------

-- CREATE TALBE PAIS --

CREATE TABLE Pais(
	idPais int NOT NULL,
	NombrePais VARCHAR(100) NOT NULL
	CONSTRAINT PK_idPais PRIMARY KEY (idPais)
)