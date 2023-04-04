UPDATE language 
INNER JOIN 
(SELECT language.*, COUNT(*) AS liczba FROM language INNER JOIN film ON language.language_id = film.language_id GROUP BY film.language_id) T_POM
ON language.language_id = T_POM.language_id
SET language.film_no = T_POM.liczba;