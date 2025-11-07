SELECT s.first_name, s.last_name, COUNT(p.payment_id) AS total_atendimentos
FROM staff s
JOIN payment p ON s.staff_id = p.staff_id
GROUP BY s.first_name, s.last_name
ORDER BY total_atendimentos DESC;
