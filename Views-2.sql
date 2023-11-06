CREATE DATABASE VIEWS;
use VIEWS;

CREATE TABLE estoque (
  id INT AUTO_INCREMENT PRIMARY KEY,
  produto VARCHAR(255) NOT NULL,
  quantidade INT NOT NULL
);


INSERT INTO estoque (produto, quantidade) VALUES
('pasta de dente', 3),
('fio dental', 8),
('escova de dente', 2),
('exaguante bocal', 7);


CREATE VIEW vw_estoque_insuficiente AS
SELECT produto, quantidade
FROM estoque
WHERE quantidade < 5;


SELECT * FROM vw_estoque_insuficiente;
