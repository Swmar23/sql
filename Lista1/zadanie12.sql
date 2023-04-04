SELECT actor.last_name FROM actor INNER JOIN
	(SELECT DISTINCT film_actor.actor_id AS aktor_id FROM film_actor WHERE film_actor.actor_id NOT IN
		(SELECT DISTINCT film_actor.actor_id FROM film_actor INNER JOIN film ON film.film_id = film_actor.film_id
		WHERE film.title LIKE 'B%')
    ) AS tab_pom ON actor.actor_id=aktor_id;