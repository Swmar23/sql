SELECT film.title, language.name FROM sakila.film INNER JOIN sakila.language ON film.language_id = language.language_id
WHERE film.description LIKE '%Documentary%';