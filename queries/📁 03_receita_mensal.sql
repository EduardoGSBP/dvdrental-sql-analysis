SELECT DATE_TRUNC('month', p.payment_date) AS mes, SUM(p.amount) AS receita_total
FROM payment p
GROUP BY mes
ORDER BY mes;
