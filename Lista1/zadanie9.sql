SELECT DISTINCT pomb.customer_id, customer.first_name, customer.last_name FROM
(SELECT *, (COUNT(staff_id) OVER (PARTITION BY customer_id)) AS rozni FROM 
(SELECT DISTINCT staff_id, customer_id FROM rental ORDER BY customer_id) poma) pomb 
INNER JOIN customer ON customer.customer_id = pomb.customer_id WHERE pomb.rozni = 2;
