03_receita_mensal.sql — Faturamento mensal

📋 Descrição:
Essa query calcula o total de receita por mês, com base nos valores pagos pelos clientes.
Ela permite acompanhar o desempenho financeiro da locadora ao longo do tempo e detectar variações de faturamento.

🔍 Principais conceitos:

•Função DATE_TRUNC('month', payment_date) para agrupar por mês
•SUM(amount) para somar os pagamentos
•ROUND() para arredondar o valor total
•ORDER BY para listar em ordem cronológica
__________________________________________________________________________________________
SELECT DATE_TRUNC('month', p.payment_date) AS mes, SUM(p.amount) AS receita_total
FROM payment p
GROUP BY mes
ORDER BY mes;
