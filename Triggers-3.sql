
CREATE TABLE itens (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  estoque INT NOT NULL,
  preco DECIMAL(10, 2) NOT NULL
);


INSERT INTO itens (nome, estoque, preco) VALUES
('Produto A', 10, 100.00),
('Produto B', 20, 50.00),
('Produto C', 15, 75.00);


CREATE TABLE vendas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  item_id INT NOT NULL,
  quantidade INT NOT NULL,
  data_venda DATE NOT NULL
);


INSERT INTO vendas (item_id, quantidade, data_venda) VALUES
(1, 2, '2023-01-15'),
(2, 5, '2023-01-10'),
(1, 3, '2023-01-20'),
(3, 4, '2023-01-05'),
(2, 3, '2023-01-25');


DELIMITER //
CREATE TRIGGER atualizar_estoque_venda
AFTER INSERT ON vendas
FOR EACH ROW
BEGIN
  UPDATE itens
  SET estoque = estoque - NEW.quantidade
  WHERE id = NEW.item_id;
END;
//
DELIMITER ;


SELECT * FROM itens;

