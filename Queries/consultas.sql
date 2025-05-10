-- QUERIES

-- Dados dos clientes que começam com a Letra 'P' ordenados através do ID
SELECT*FROM clientes WHERE nome LIKE 'P%' ORDER BY id;

-- Nome dos Clientes que possuem o numero '5' no endereço de Z-A
SELECT nome FROM clientes WHERE endereco LIKE '%5%' ORDER BY endereco DESC;

-- Produtos com o preço inferior a R$100,00 Ordenados do Maior para o Menor
SELECT*FROM produtos WHERE preco < 100  ORDER BY preco DESC;

-- Produtos que possuam a letra 'c'(independente da posição)
SELECT*FROM produtos WHERE nome ILIKE '%C%';

-- Lista de pedidos depois de '2025-05-03' com os nomes dos clientes

SELECT 
clientes.nome, 
pedidos.data_pedido, 
pedidos.total

FROM pedidos 
INNER JOIN clientes  ON pedidos.id_cliente = clientes.id 
WHERE pedidos.data_pedido > '2025-05-03';

--Itens do pedido com nome do produto e do cliente (2 ou mais unidades de um mesmo produto)

SELECT c.nome AS cliente, pr.nome AS produto, ip.quantidade, ip.preco_unitario
FROM itens_pedidos ip
JOIN pedidos p ON ip.id_pedido = p.id
JOIN clientes c ON p.id_cliente = c.id
JOIN produtos pr ON ip.id_produto = pr.id
WHERE ip.quantidade >= 2;

--Total de vendas por forma de pagamento

SELECT fp.descricao, SUM(p.total) AS total_vendas
FROM pedidos p
JOIN forma_pagamento fp ON p.id_forma_pagamento = fp.id
GROUP BY fp.descricao;

--Produtos Ordenados do Mais Caro para o Mais Barato

SELECT nome, preco
FROM Produtos
ORDER BY preco DESC;

--Exibe a Media dos valores Pagos pelos Clientes

SELECT c.nome, COUNT(p.id) AS num_pedidos, AVG(p.total) AS media_valor
FROM clientes c
JOIN pedidos p ON c.id = p.id_cliente
GROUP BY c.nome;

--Maior e Menor Valor Pago

SELECT MAX(total) AS maior_pedido, MIN(total) AS menor_pedido
FROM pedidos;
