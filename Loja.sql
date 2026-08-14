CREATE DATABASE loja;

USE loja; 

CREATE TABLE categoria (
id_categoria INT PRIMARY KEY,
nome_categoria VARCHAR (100)
);

CREATE TABLE clientes (
id_clientes INT PRIMARY KEY,
nome VARCHAR (100),
cidade VARCHAR (100),
uf CHAR (2),
data_cadastro DATE);

CREATE TABLE produtos(
id_produtos INT PRIMARY KEY,
descrição VARCHAR (100),
preco_unitario DECIMAL (10, 2),
estoque INT,
fk_categoria INT,
FOREIGN KEY (fk_categoria) REFERENCES categoria (id_categoria)
);

CREATE TABLE vendas (categoria
id_vendas INT PRIMARY KEY,
fk_clientes INT,
fk_produtos INT,
quantidade INT,
data_venda DATE,
FOREIGN KEY (fk_clientes) REFERENCES clientes (id_clientes),
FOREIGN KEY (fk_produtos) REFERENCES produtos (id_produtos)
);

-- VENDAS (ID_Venda, FK_Cliente, FK_Produto, Quantidade, Data_Venda)
INSERT INTO vendas VALUES (1001, 10, 101, 1, '2024-03-10');
INSERT INTO vendas VALUES (1002, 11, 102, 2, '2024-03-12');
INSERT INTO vendas VALUES (1003, 10, 103, 5, '2024-03-15');
INSERT INTO vendas VALUES (1004, 12, 101, 1, '2024-03-20');
INSERT INTO vendas VALUES (1005, 13, 105, 1, '2024-03-22');
INSERT INTO vendas VALUES (1006, 10, 104, 1, '2024-03-25');

-- PRODUTOS (ID_Produto, Descricao, Preco_Unitario, Estoque, FK_Categoria)
INSERT INTO produtos VALUES (101, 'Smartphone X', 2500.00, 50, 1);
INSERT INTO produtos VALUES (102, 'Cadeira Gamer', 1200.00, 15, 2);
INSERT INTO produtos VALUES (103, 'Mouse Sem Fio', 150.00, 100, 3);
INSERT INTO produtos VALUES (104, 'Monitor 4K', 3200.00, 10, 3);
INSERT INTO produtos VALUES (105, 'Mesa de Escritório', 850.00, 8, 2);

-- CATEGORIAS (ID_Categoria, Nome_Categoria)
INSERT INTO categoria VALUES (1, 'Eletrônicos');
INSERT INTO categoria VALUES (2, 'Móveis');
INSERT INTO categoria VALUES (3, 'Informática');

-- CLIENTES (ID_Cliente, Nome, Cidade, UF, Data_Cadastro)
INSERT INTO clientes VALUES (10, 'Ana Silva', 'São Paulo', 'SP', '2023-01-15');
INSERT INTO clientes VALUES (11, 'Bruno Souza', 'Curitiba', 'PR', '2023-05-20');
INSERT INTO clientes VALUES (12, 'Carla Dias', 'São Paulo', 'SP', '2024-02-10');
INSERT INTO clientes VALUES (13, 'Diego Lemos', 'Belo Horizonte', 'MG', '2024-03-01');

SELECT * FROM vendas ;

