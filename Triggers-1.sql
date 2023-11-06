CREATE DATABASE triggers1;
use Triggers1;
-- Crie a tabela de produtos (caso ainda não exista)
CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  data_validade DATE NOT NULL
);

-- Crie o trigger para validar a data de validade
DELIMITER //
CREATE TRIGGER trg_valida_data_validade
BEFORE INSERT ON produtos
FOR EACH ROW
BEGIN
  IF NEW.data_validade < CURDATE() THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Data de validade vencida. Produto não pode ser inserido.';
  END IF;
END;
//
DELIMITER ;

INSERT INTO produtos (nome, data_validade) VALUES ('Produto A', '2023-12-31');


INSERT INTO produtos (nome, data_validade) VALUES ('Produto B', '2022-01-15');


INSERT INTO produtos (nome, data_validade) VALUES ('Produto C', '2024-06-30');

