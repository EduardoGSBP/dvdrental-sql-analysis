2️⃣ 02_filmes_populares.sql — Filmes mais alugados

📋 Descrição:
Mostra quais filmes tiveram o maior número de aluguéis, revelando os títulos mais procurados pelos clientes.
Essas informações ajudam a entender as tendências de consumo e quais filmes devem ser mantidos em estoque.

🔍 Principais conceitos:

•JOIN entre film, inventory e rental
•COUNT() para contar quantos aluguéis cada filme teve
•GROUP BY para agrupar por título do filme
•ORDER BY DESC para listar do mais popular ao menos
  _____________________________________________________________
  
SELECT f.title, COUNT(r.rental_id) AS total_alugueis
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.title
ORDER BY total_alugueis DESC
LIMIT 10;
