SELECT language.*, COUNT(*) FROM language INNER JOIN film ON language.language_id = film.language_id group by film.language_id;