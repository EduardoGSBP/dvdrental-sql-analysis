05_categoria_popular.sql — Categorias de filmes mais populares

📋 Descrição:
Exibe as categorias de filmes com mais aluguéis, revelando os gêneros preferidos pelos clientes (ex: Ação, Comédia, Drama).
Essas informações são úteis para orientar futuras aquisições de títulos e estratégias de recomendação.

🔍 Principais conceitos:

•JOIN entre category, film_category, film, inventory e rental
•COUNT() para somar os aluguéis por categoria
•GROUP BY e ORDER BY DESC para gerar o ranking
_____________________________________________________________________________
SELECT c.name AS categoria, COUNT(r.rental_id) AS total_alugueis
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON fc.film_id = f.film_id
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY c.name
ORDER BY total_alugueis DESC;
