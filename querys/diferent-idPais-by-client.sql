-------------------------------------------
-- AUTHOR: Guillermo Ayllon --
-- DATE: 24/11/2024 --
-- Final project of the IBM and DataHack SQL master --
-------------------------------------------

-- Desription: Make a query that returns the different idPais by Client --

/**
 * Attention: As I mentioned in the project description, this question can be confusing.
*/

-- Wrong answer --
SELECT idPais FROM Clientes

--With this question we had quite a few problems with the students because it seemed to us 
--that this was what it was asking, but in the end the answer was different, which is what I put below.
-----------------------------

-- Correct Answer --
SELECT DISTINCT idPais FROM clientes