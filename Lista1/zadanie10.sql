SELECT customer.*, COUNT(*) AS liczba FROM sakila.customer
INNER JOIN sakila.rental ON customer.customer_id=rental.customer_id
GROUP BY customer_id 
HAVING liczba > (SELECT COUNT(*) FROM sakila.customer 
	INNER JOIN sakila.rental ON customer.customer_id=rental.customer_id
    WHERE customer.email = 'PETER.MENARD@sakilacustomer.org') ;