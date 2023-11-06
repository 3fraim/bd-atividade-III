
CREATE TABLE tb_funcionarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  cargo VARCHAR(255) NOT NULL
);


CREATE TABLE tb_dependentes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  funcionario_id INT NOT NULL,
  FOREIGN KEY (funcionario_id) REFERENCES tb_funcionarios(id)
);


INSERT INTO tb_funcionarios (nome, cargo) VALUES
('Funcionário 1', 'Analista'),
('Funcionário 2', 'Gerente'),
('Funcionário 3', 'Desenvolvedor');


INSERT INTO tb_dependentes (nome, funcionario_id) VALUES
('Dependente 1', 1),
('Dependente 2', 1),
('Dependente 3', 2),
('Dependente 4', 3);


DELIMITER //
CREATE TRIGGER exclui_dependentes
AFTER DELETE ON tb_funcionarios
FOR EACH ROW
BEGIN
  DELETE FROM tb_dependentes WHERE funcionario_id = OLD.id;
END;
//
DELIMITER ;


SELECT * FROM tb_funcionarios;
SELECT * FROM tb_dependentes;


