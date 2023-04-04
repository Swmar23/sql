CREATE VIEW widok_zadanie10 AS
SELECT 
	producent.nazwa, 
	producent.kraj,
    aparat.model
FROM aparat 
INNER JOIN producent ON aparat.producent = producent.ID;