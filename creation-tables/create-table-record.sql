-------------------------------------------
-- AUTHOR: Guillermo Ayllon --
-- DATE: 24/11/2024 --
-------------------------------------------

-- CREATE TABLE RECORD --
CREATE TABLE  Record(
	idRecord int NOT NULL IDENTITY(1,1),
	FechaRecord date NOT NULL,
	Observaciones VARCHAR(1000) NULL
	CONSTRAINT PK_idRecord PRIMARY KEY(idRecord)
)