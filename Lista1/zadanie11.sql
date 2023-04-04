SELECT imie_jeden, nazwisko_jeden, actor.first_name AS imie_dwa, actor.last_name AS nazwisko_dwa
FROM sakila.actor
	INNER JOIN
    (SELECT actor.first_name AS imie_jeden, actor.last_name AS nazwisko_jeden, drugi_aktor
    FROM sakila.actor
    INNER JOIN (SELECT film_actor.actor_id AS pierwszy_aktor, druga.actor_id AS drugi_aktor, COUNT(*)
    FROM
        sakila.film_actor
    INNER JOIN sakila.film_actor AS druga ON film_actor.film_id = druga.film_id
    WHERE
        film_actor.actor_id < druga.actor_id
    GROUP BY pierwszy_aktor , drugi_aktor
    HAVING COUNT(*) > 1
    ORDER BY pierwszy_aktor , drugi_aktor) AS tab_pom ON actor.actor_id = pierwszy_aktor) AS tab_pom2 ON actor.actor_id = drugi_aktor
ORDER BY nazwisko_jeden, imie_jeden, nazwisko_dwa, imie_dwa;