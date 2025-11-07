SELECT c.first_name, c.last_name, COUNT(r.rental_id) AS total_alugueis
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY total_alugueis DESC
LIMIT 10;
