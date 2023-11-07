
use VIEWS;


CREATE TABLE funcionarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  cargo VARCHAR(255) NOT NULL,
  departamento VARCHAR(255) NOT NULL
);


INSERT INTO funcionarios (nome, cargo, departamento) VALUES
('João', 'Gerente', 'Administrativo'),
('Maria', 'Analista', 'Administrativo'),
('José', 'Técnico', 'Produção'),
('Pedro', 'Analista', 'Administrativo');


CREATE VIEW vw_funcionarios_departamento AS
SELECT nome, cargo
FROM funcionarios
WHERE departamento = 'Administrativo';

SELECT * FROM vw_funcionarios_departamento;

