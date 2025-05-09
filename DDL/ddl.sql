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
