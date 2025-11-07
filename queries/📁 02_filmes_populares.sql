SELECT f.title, COUNT(r.rental_id) AS total_alugueis
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.title
ORDER BY total_alugueis DESC
LIMIT 10;
