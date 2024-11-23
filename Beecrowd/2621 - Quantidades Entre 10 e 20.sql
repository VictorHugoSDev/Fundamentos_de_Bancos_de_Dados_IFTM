SELECT p.name
FROM products p
JOIN providers pr ON pr.id = p.id_providers
WHERE p.amount BETWEEN 10 AND 20
AND pr.name LIKE 'P%';
