-------------------------------------------
-- AUTHOR: Guillermo Ayllon --
-- DATE: 24/11/2024 --
-- Final project of the IBM and DataHack SQL master --
-------------------------------------------

/**
    Create an IF query that returns the Spanish nationality records from the customers table.
*/

DECLARE @pais char(3)
SET @pais = 'ESP'

IF @pais = 'ESP'
SELECT * FROM Clientes WHERE idPais = @pais