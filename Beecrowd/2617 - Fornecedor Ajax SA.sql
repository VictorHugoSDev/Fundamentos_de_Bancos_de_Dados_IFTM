SELECT p.name, pr.name
FROM products p
JOIN providers pr ON pr.id = p.id_providers
WHERE pr.name = 'Ajax SA';
