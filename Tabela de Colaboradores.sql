-- Criar o database 
CREATE DATABASE db_rh;

-- Usar o database
USE db_rh;

-- Criar a tabela de colaboradores
CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    datacontratacao DATE,
    salario DECIMAL(8,2) NOT NULL,
    PRIMARY KEY (id)
);
-- Exibindo a tabela dos colaboradores
SELECT * FROM tb_colaboradores;

-- Exibindo as colunas com o nome personalizado
SELECT nome AS "Nome", 
cargo AS "Cargo", 
datacontratacao AS "Data de Contratação", 
salario AS "Salário" 
FROM tb_colaboradores;
    
-- Adicionando os dados na tabela
INSERT INTO tb_colaboradores (nome, cargo, datacontratacao, salario) VALUES 
("Bernardo Henrique Carvalho", "Desenvolvedor Java Full Stack", "2024-07-20", 3459.00),
("Elon Musk", "CEO", "2012-01-10", 97800.00),
("Jaqueline Hernandes", "Instrutora Lead", "2021-07-13", 18590.00),
("Thiago Faccipieri", "Instrutor Front End", "2021-03-08", 18590.00),
("Michael Jackson", "Estagiario", "2024-05-30", 1600.00),
("Ronaldinho Gaucho", "Analista de Dados", "2023-11-26", 8559.00);

-- Exibindo os salários maiores que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- Exibindo os salários menores que 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- Alterando o salário no banco de dados
UPDATE tb_colaboradores SET salario = 4299 WHERE id = 1;

SELECT * FROM tb_colaboradores;