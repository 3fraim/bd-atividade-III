CREATE DATABASE VIEWS;
use VIEWS;

CREATE TABLE pedidos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  numero_pedido INT NOT NULL,
  status VARCHAR(50) NOT NULL,
  data_entrega DATE NOT NULL
);

INSERT INTO pedidos (numero_pedido, status, data_entrega) VALUES
(1, 'Pendente', '2023-01-15'),
(2, 'Entregue', '2023-01-10'),
(3, 'Pendente', '2023-01-20'),
(4, 'Entregue', '2023-01-05'),
(5, 'Pendente', '2023-01-25');

CREATE VIEW vw_pedidos_pendentes AS
SELECT numero_pedido, status, data_entrega
FROM pedidos
WHERE status = 'Pendente' AND data_entrega > CURDATE();

SELECT * FROM vw_pedidos_pendentes;


