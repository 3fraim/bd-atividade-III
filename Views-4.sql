CREATE DATABASE VIEWS;
use VIEWS;


CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  preco DECIMAL(10, 2) NOT NULL
);


INSERT INTO produtos (nome, preco) VALUES
('Pista hotwhells', 120.50),
('coxão inflavel', 80.99),
('skate', 150.75),
('controle ps4', 90.25),
('balanca', 110.00);


CREATE VIEW vw_produtos_caros AS
SELECT nome, preco
FROM produtos
WHERE preco > 100;


SELECT * FROM vw_produtos_caros;
