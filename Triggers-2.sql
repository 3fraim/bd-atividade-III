CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  preco DECIMAL(10, 2) NOT NULL
);


INSERT INTO produtos (nome, preco) VALUES
('Produto A', 100.00),
('Produto B', 50.00),
('Produto C', 75.00);


DELIMITER //
CREATE TRIGGER aumentar_preco_produto
BEFORE UPDATE ON produtos
FOR EACH ROW
BEGIN
  SET NEW.preco = NEW.preco * 1.10;
END;
//
DELIMITER ;


SET SQL_SAFE_UPDATES = 0;


UPDATE produtos SET preco = 130.00 WHERE nome = 'Produto A';


SELECT * FROM produtos;
