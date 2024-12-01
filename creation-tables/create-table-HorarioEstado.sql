-------------------------------------------
-- AUTHOR: Guillermo Ayllon --
-- DATE: 24/11/2024 --
-- Final project of the IBM and DataHack SQL master --
-------------------------------------------

CREATE TABLE HorarioEstado(
	idEstado smallint NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Descripcion VARCHAR(50) NOT NULL
)