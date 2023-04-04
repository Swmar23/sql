SELECT	last_name FROM actor INNER JOIN
    (
    (SELECT actor_id, COUNT(*) AS no_horror, no_akcja FROM film_actor
	INNER JOIN film_category ON film_actor.film_id=film_category.film_id
	INNER JOIN category ON film_category.category_id=category.category_id
	LEFT JOIN
		(SELECT actor_id AS id_akcja, COUNT(*) AS no_akcja FROM film_actor
		INNER JOIN film_category ON film_actor.film_id=film_category.film_id 
		INNER JOIN category ON film_category.category_id=category.category_id
		WHERE category.name = 'Action'
		GROUP BY actor_id) AS tab_pom
	ON film_actor.actor_id=tab_pom.id_akcja
	WHERE category.name = 'Horror'
	GROUP BY actor_id)

	UNION
	
	(SELECT actor_id, no_horror, COUNT(*) AS no_akcja FROM film_actor
	INNER JOIN film_category ON film_actor.film_id=film_category.film_id
	INNER JOIN category ON film_category.category_id=category.category_id
	LEFT JOIN
		(SELECT actor_id AS id_horror, COUNT(*) AS no_horror FROM film_actor
		INNER JOIN film_category ON film_actor.film_id=film_category.film_id 
		INNER JOIN category ON film_category.category_id=category.category_id
		WHERE category.name = 'Horror'
		GROUP BY actor_id) AS tab_pom
	ON film_actor.actor_id=tab_pom.id_horror
	WHERE category.name = 'Action'
	GROUP BY actor_id)
    ) AS tab_agreg
ON actor.actor_id = tab_agreg.actor_id
WHERE IFNULL(tab_agreg.no_horror, 0) > IFNULL(tab_agreg.no_akcja,0);