CREATE DATABASE VIEWS;
use VIEWS;

CREATE TABLE clientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  id_vendedor INT
);


INSERT INTO clientes (nome, id_vendedor) VALUES
('osvaldo', 1),
('orlando', 2),
('guilherme', 1),
('julio', 3);


CREATE TABLE vendedores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL
);


INSERT INTO vendedores (nome) VALUES
('maria'),
('cristina'),
('kaua');


CREATE VIEW vw_relacionamento_cliente_vendedor AS
SELECT c.nome AS cliente, v.nome AS vendedor
FROM clientes c
JOIN vendedores v ON c.id_vendedor = v.id;

SELECT * FROM vw_relacionamento_cliente_vendedor;
