SELECT customer.* FROM customer INNER JOIN
	(SELECT customer_id, srednia_klienta FROM
		(SELECT customer_id, AVG(amount) AS srednia_klienta FROM payment 
		GROUP BY customer_id) AS tab_pom
	WHERE srednia_klienta > (SELECT avg(amount) FROM payment 
		WHERE payment_date BETWEEN '2005-07-07 00:00:00' AND '2005-07-07 23:59:59')) AS tab_pom2
	ON customer.customer_id = tab_pom2.customer_id;