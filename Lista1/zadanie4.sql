SELECT film.title FROM sakila.film
INNER JOIN sakila.film_category ON film_category.film_id=film.film_id
INNER JOIN sakila.category ON film_category.category_id=category.category_id
WHERE category.name = 'Documentary' AND film.description NOT LIKE '%Documentary%';