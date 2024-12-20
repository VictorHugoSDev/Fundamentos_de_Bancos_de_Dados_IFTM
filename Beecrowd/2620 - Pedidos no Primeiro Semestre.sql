SELECT c.name, o.id
FROM customers c
JOIN orders o ON c.id = o.id_customers
WHERE EXTRACT(YEAR FROM o.orders_date) = 2016
	and EXTRACT(MONTH FROM o.orders_date) BETWEEN 1 AND 6;
