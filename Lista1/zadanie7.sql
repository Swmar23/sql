SELECT DISTINCT film.title FROM sakila.film 
INNER JOIN sakila.inventory ON inventory.film_id=film.film_id
INNER JOIN sakila.rental ON rental.inventory_id=inventory.inventory_id
WHERE rental.rental_date BETWEEN '2005-05-25 00:00:00' AND '2005-05-30 23:59:59'
ORDER BY film.title;