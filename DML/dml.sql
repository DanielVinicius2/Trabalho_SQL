-- DDL
CREATE TABLE produtos(
	id SERIAL PRIMARY KEY,
	nome TEXT NOT NULL,
	preco DECIMAL(10,2) NOT NULL,
	descricao TEXT
);

CREATE TABLE clientes(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	email VARCHAR(100),
	endereco TEXT,
	telefone VARCHAR(20)
);

CREATE TABLE pedidos(
	id SERIAL PRIMARY KEY,
	id_cliente INT,
	data_pedido DATE NOT NULL,
	id_forma_pagamento INT,
	total DECIMAL(12,2) NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES clientes(id),
	FOREIGN KEY (id_forma_pagamento) REFERENCES forma_pagamento(id)
);

CREATE TABLE itens_pedidos(
	id SERIAL PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id),
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

CREATE  TABLE forma_pagamento(
 	id SERIAL PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL
);

CREATE TABLE estoque(
	id SERIAL PRIMARY KEY,
	id_produto INT,
	quantidade INT NOT NULL,
	FOREIGN KEY (id_produto) REFERENCES produtos(id)

)

INSERT INTO clientes (nome, email, telefone, endereco) VALUES
('João Silva', 'joao@email.com', '11999990001', 'Rua A, 123'),
('Maria Oliveira', 'maria@email.com', '11999990002', 'Rua B, 456'),
('Carlos Souza', 'carlos@email.com', '11999990003', 'Rua C, 789'),
('Ana Lima', 'ana@email.com', '11999990004', 'Rua D, 321'),
('Pedro Rocha', 'pedro@email.com', '11999990005', 'Rua E, 654'),
('Juliana Reis', 'juliana@email.com', '11999990006', 'Rua F, 987'),
('Lucas Martins', 'lucas@email.com', '11999990007', 'Rua G, 159'),
('Fernanda Alves', 'fernanda@email.com', '11999990008', 'Rua H, 753'),
('Ricardo Melo', 'ricardo@email.com', '11999990009', 'Rua I, 852'),
('Paula Gomes', 'paula@email.com', '11999990010', 'Rua J, 951');

--2.População Inicial (DML - INSERT)

INSERT INTO Clientes (nome, email, telefone, endereco) VALUES
('João Silva', 'joao@email.com', '11999990001', 'Rua A, 123'),
('Maria Oliveira', 'maria@email.com', '11999990002', 'Rua B, 456'),
('Carlos Souza', 'carlos@email.com', '11999990003', 'Rua C, 789'),
('Ana Lima', 'ana@email.com', '11999990004', 'Rua D, 321'),
('Pedro Rocha', 'pedro@email.com', '11999990005', 'Rua E, 654'),
('Juliana Reis', 'juliana@email.com', '11999990006', 'Rua F, 987'),
('Lucas Martins', 'lucas@email.com', '11999990007', 'Rua G, 159'),
('Fernanda Alves', 'fernanda@email.com', '11999990008', 'Rua H, 753'),
('Ricardo Melo', 'ricardo@email.com', '11999990009', 'Rua I, 852'),
('Paula Gomes', 'paula@email.com', '11999990010', 'Rua J, 951');

INSERT INTO produtos (nome, descricao, preco) VALUES
('Camiseta Branca', 'Camiseta 100% algodão, tamanho M', 39.90),
('Calça Jeans', 'Calça jeans azul, tamanho 42', 89.90),
('Tênis Esportivo', 'Tênis para corrida, tamanho 40', 149.90),
('Jaqueta', 'Jaqueta corta-vento', 119.90),
('Boné', 'Boné com aba curva', 29.90),
('Mochila', 'Mochila escolar 30L', 79.90),
('Relógio Digital', 'Relógio à prova d’água', 199.90),
('Óculos de Sol', 'Óculos com proteção UV', 59.90),
('Carteira de Couro', 'Carteira masculina marrom', 49.90),
('Cinto', 'Cinto preto de couro', 39.90);

INSERT INTO estoque (id_produto, quantidade) VALUES
(1, 50),
(2, 40),
(3, 30),
(4, 20),
(5, 60),
(6, 25),
(7, 15),
(8, 35),
(9, 45),
(10, 55);

INSERT INTO forma_pagamento (descricao) VALUES
('Cartão de Crédito'),
('Cartão de Débito'),
('Dinheiro'),
('Boleto Bancário'),
('Pix'),
('Transferência Bancária'),
('Cheque'),
('Vale Compra'),
('Pagamento Online'),
('Crédito Loja');

INSERT INTO pedidos (id_cliente, data_pedido, id_forma_pagamento, total) VALUES
(1, '2025-05-01', 1, 129.80),
(2, '2025-05-02', 5, 59.90),
(3, '2025-05-03', 2, 199.90),
(4, '2025-05-04', 4, 149.80),
(5, '2025-05-04', 3, 89.90),
(6, '2025-05-05', 6, 59.90),
(7, '2025-05-06', 1, 79.90),
(8, '2025-05-07', 5, 49.90),
(9, '2025-05-08', 2, 39.90),
(10, '2025-05-08', 9, 89.90);

INSERT INTO itens_pedidos (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 2, 39.90),
(1, 5, 1, 49.90),
(2, 8, 1, 59.90),
(3, 7, 1, 199.90),
(4, 3, 1, 149.90),
(5, 2, 1, 89.90),
(6, 10, 1, 39.90),
(7, 6, 1, 79.90),
(8, 9, 1, 49.90),
(9, 1, 1, 39.90);

--3.Operações de Manipulação (DML - UPDATE e DELETE)
	-- Reajuste dos preços dos Produtos abaixo de 50 REAIS:

 UPDATE Produtos
SET preco = preco * 1.10
WHERE preco < 50.00;

--Correção de Telefone:
UPDATE Clientes
SET telefone = '11988887777'
WHERE nome = 'João Silva';

--Zerar Estoque de algum produto:
UPDATE Estoque
SET quantidade = 0
WHERE id_produto = 7;


--Deleção de Dados Duplicados:
	--Identificando Duplicatas
SELECT nome, email, COUNT(*)
FROM clientes
GROUP BY nome, email
HAVING COUNT(*) > 1;
	--Excluindos os dados Duplicados
WITH Duplicados AS (
  SELECT id, 
         ROW_NUMBER() OVER (PARTITION BY nome, email ORDER BY id) AS rn
  		 -- 'ROW_NUMBER()' dá um número para cada cliente repetido.
  		 -- 'PARTITION BY nome, email' agrupa os dados duplicados.
		 -- 'ORDER BY id_cliente' define que o menor ID será o "original".
  FROM clientes
)
DELETE FROM Clientes
WHERE id IN (
  SELECT id FROM duplicados WHERE rn > 1
	-- A subquery seleciona os que têm rn > 1, ou seja, os duplicados.
	-- O DELETE remove só esses duplicados.
);

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