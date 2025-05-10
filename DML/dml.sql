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
