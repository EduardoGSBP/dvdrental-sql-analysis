1️⃣ 01_clientes_ativos.sql — Top 10 clientes que mais alugam filmes

📋 Descrição:
Essa consulta identifica os clientes mais ativos da locadora, ou seja, aqueles que mais realizaram aluguéis.
É útil para estratégias de fidelização e marketing, pois mostra quem são os clientes mais engajados.

🔍 Principais conceitos:

•JOIN entre customer e rental
•COUNT() para contar o total de aluguéis
•GROUP BY para agrupar por cliente
•ORDER BY e LIMIT para exibir o ranking
  __________________________________________________________
  
SELECT c.first_name, c.last_name, COUNT(r.rental_id) AS total_alugueis
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY total_alugueis DESC
LIMIT 10;
