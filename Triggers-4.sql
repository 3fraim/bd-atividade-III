
CREATE TABLE IF NOT EXISTS tb_funcionarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  cargo VARCHAR(255) NOT NULL
);
INSERT INTO tb_funcionarios (nome, cargo) VALUES
('João', 'Gerente'),
('Maria', 'Vendedor'),
('José', 'Analista de TI');



CREATE TABLE IF NOT EXISTS tb_funcionarios_demitidos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  cargo VARCHAR(255) NOT NULL
);


DELIMITER //
CREATE TRIGGER after_delete_funcionario
AFTER DELETE ON tb_funcionarios
FOR EACH ROW
BEGIN
  INSERT INTO tb_funcionarios_demitidos (nome, cargo)
  VALUES (OLD.nome, OLD.cargo);
END;
//
DELIMITER ;

SELECT * FROM tb_funcionarios;

DELETE FROM tb_funcionarios WHERE id = 2;

SELECT * FROM tb_funcionarios_demitidos;

