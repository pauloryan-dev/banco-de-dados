CREATE DATABASE supermercado_db;
USE supermercado_db;
CREATE TABLE clientes (
 id_cliente INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(100),
 cpf VARCHAR(15),
 telefone VARCHAR(20),
 email VARCHAR(100),
 endereco TEXT
);
CREATE TABLE produtos (
 id_produto INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(100),
 preco DECIMAL(10,2),
 categoria VARCHAR(50),
 validade DATE,
 estoque INT
);
CREATE TABLE colaboradores (
 id_colaborador INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(100),
 cpf VARCHAR(15),
 funcao VARCHAR(50),
 salario DECIMAL(10,2),
 data_admissao DATE
);
CREATE TABLE vendas (
 id_venda INT AUTO_INCREMENT PRIMARY KEY,
 id_cliente INT,
 id_colaborador INT,
 data_venda DATETIME,
 total DECIMAL(10,2),
 FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
 FOREIGN KEY (id_colaborador) REFERENCES colaboradores(id_colaborador)
);
CREATE TABLE vendas_produtos (
 id_venda INT,
 id_produto INT,
 quantidade INT,
 preco_unitario DECIMAL(10,2),
 PRIMARY KEY (id_venda, id_produto),
 FOREIGN KEY (id_venda) REFERENCES vendas(id_venda),
 FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

SELECT * FROM clientes;
SELECT * FROM produtos;
SELECT * FROM colaboradores;
SELECT * FROM vendas;
SELECT * FROM vendas_produtos;

