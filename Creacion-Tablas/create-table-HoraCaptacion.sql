-------------------------------------------
-- AUTHOR: Guillermo Ayllon --
-- DATE: 24/11/2024 --
-- Final project of the IBM and DataHack SQL master --
-------------------------------------------

-- CREATE TALBE HORACAPTACION --

CREATE TABLE HoraCaptacion(
	idHCaptacion int NOT NULL IDENTITY(1,1),
	FechaCaptacion date NOT NULL,
	EstadoCaptacion smallint NOT NULL,
	Observaciones VARCHAR(1000) NULL
	CONSTRAINT PK_idHCaptacion PRIMARY KEY(idHCaptacion)
)