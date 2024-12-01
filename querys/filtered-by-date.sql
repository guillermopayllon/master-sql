-------------------------------------------
-- AUTHOR: Guillermo Ayllon --
-- DATE: 24/11/2024 --
-- Final project of the IBM and DataHack SQL master --
-------------------------------------------

/**
    Make a query that shows you the data from the HoraCaptacion
    table filtered by dates between 2024-01-01 and 2024-01-30. You must use the BETWEEN operator
*/

SELECT * FROM HoraCaptacion WHERE FechaCaptacion BETWEEN '2024-01-01' AND '2024-01-30'