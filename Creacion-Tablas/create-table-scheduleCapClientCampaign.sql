-------------------------------------------
-- AUTHOR: Guillermo Ayllon --
-- DATE: 24/11/2024 --
-- Final project of the IBM and DataHack SQL master --
-------------------------------------------

CREATE TABLE HoraCapClienteCampania(
	idHCaptacion int NOT NULL,
	idCliente int NOT NULL,
	idCampania int NOT NULL
	PRIMARY KEY(idHCaptacion, idCliente, idCampania)
)