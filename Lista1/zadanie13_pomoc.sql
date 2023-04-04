SELECT actor_id, IFNULL(COUNT(*), 0) AS no_horror, no_akcja FROM film_actor
INNER JOIN film_category ON film_actor.film_id=film_category.film_id
INNER JOIN category ON film_category.category_id=category.category_id
INNER JOIN
	(SELECT actor_id AS id_akcja, IFNULL(COUNT(*), 0) AS no_akcja FROM film_actor
	INNER JOIN film_category ON film_actor.film_id=film_category.film_id 
	INNER JOIN category ON film_category.category_id=category.category_id
	WHERE category.name = 'Action'
	GROUP BY actor_id) AS tab_pom
ON film_actor.actor_id=tab_pom.id_akcja
WHERE category.name = 'Horror'
GROUP BY actor_id
ORDER BY actor_id;