04_funcionarios.sql — Funcionário que mais realizou atendimentos

📋 Descrição:
Mostra qual funcionário registrou o maior número de aluguéis, permitindo medir o desempenho individual da equipe.
É uma forma prática de acompanhar produtividade e reconhecer os melhores colaboradores.

🔍 Principais conceitos:

•JOIN entre staff e rental
•COUNT(rental_id) para contar quantos atendimentos cada funcionário fez
•GROUP BY e ORDER BY DESC para ordenar pelo total de atendimentos
___________________________________________________________________________________
SELECT s.first_name, s.last_name, COUNT(p.payment_id) AS total_atendimentos
FROM staff s
JOIN payment p ON s.staff_id = p.staff_id
GROUP BY s.first_name, s.last_name
ORDER BY total_atendimentos DESC;
