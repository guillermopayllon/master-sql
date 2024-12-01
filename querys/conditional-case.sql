-------------------------------------------
-- AUTHOR: Guillermo Ayllon --
-- DATE: 24/11/2024 --
-- Final project of the IBM and DataHack SQL master --
-------------------------------------------

/**
    Create a "CONDITIONAL CASE" query that returns a field called continent
    with the continents of the countries in the Country table.
*/

SELECT *,(CASE WHEN idPais = 'BRA' THEN 'America del Sur'
			   WHEN idPais = 'DEU' THEN 'Europa'
			   WHEN idPais = 'ESP' THEN 'Europa' 
			   WHEN idPais = 'GRC' THEN 'Europa'
			   WHEN idPais = 'IND' THEN 'Asia'
			   WHEN idPais = 'MEX' THEN 'America del Norte'
			   WHEN idPais = 'USA' THEN 'America del Norte' END) AS Continente FROM PaisS