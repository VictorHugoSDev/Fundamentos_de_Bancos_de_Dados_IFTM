SELECT p.name, pr.name, p.price
FROM products p
JOIN providers pr ON pr.id = p.id_providers
JOIN categories c ON c.id = p.id_categories
WHERE p.price > 1000
AND c.name = 'Super Luxury';
