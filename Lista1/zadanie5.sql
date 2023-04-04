SELECT imie, nazwisko 
FROM (SELECT DISTINCT actor.actor_id, actor.first_name AS imie, actor.last_name AS nazwisko FROM sakila.actor
INNER JOIN sakila.film_actor ON film_actor.actor_id = actor.actor_id
INNER JOIN sakila.film ON film_actor.film_id = film.film_id
WHERE film.special_features LIKE '%Deleted%') sub ORDER BY nazwisko, imie;