-- Criação do banco de dados
CREATE DATABASE db_pizzaria_legaal;

-- Uso do banco de dados criado
USE db_pizzaria_legaal;

-- Criação da tabela tb_categorias
CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY,
    nome_categoria VARCHAR(50),
    descricao_categoria VARCHAR(255)
);

-- Criação da tabela tb_pizzas
CREATE TABLE tb_pizzas (
    id_pizza INT PRIMARY KEY,
    nome_pizza VARCHAR(50),
    descricao_pizza VARCHAR(255),
    valor DECIMAL(5,2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- Inserção de dados na tabela tb_categorias
INSERT INTO tb_categorias VALUES (1, 'Doce', 'Pizzas doces');
INSERT INTO tb_categorias VALUES (2, 'Salgada', 'Pizzas salgadas');
INSERT INTO tb_categorias VALUES (3, 'Vegetariana', 'Pizzas vegetarianas');
INSERT INTO tb_categorias VALUES (4, 'Vegana', 'Pizzas veganas');
INSERT INTO tb_categorias VALUES (5, 'Especial', 'Pizzas especiais');

-- Inserção de dados na tabela tb_pizzas
INSERT INTO tb_pizzas VALUES (1, 'Margherita', 'Molho, mussarela, tomate e manjericão', 35.00, 2);
INSERT INTO tb_pizzas VALUES (2, 'Calabresa', 'Molho, mussarela e calabresa', 30.00, 2);
INSERT INTO tb_pizzas VALUES (3, 'Portuguesa', 'Molho, mussarela, presunto, ovo, cebola e azeitona', 40.00, 2);
INSERT INTO tb_pizzas VALUES (4, 'Vegana', 'Molho, mussarela vegana, tomate, pimentão, cebola e azeitona', 45.00, 4);
INSERT INTO tb_pizzas VALUES (5, 'Vegetariana', 'Molho, mussarela, tomate, pimentão, cebola e azeitona', 42.00, 3);
INSERT INTO tb_pizzas VALUES (6, 'Chocolate', 'Chocolate ao leite e morango', 50.00, 1);
INSERT INTO tb_pizzas VALUES (7, 'Banana', 'Banana, canela e leite condensado', 55.00, 1);
INSERT INTO tb_pizzas VALUES (8, 'Especial da casa', 'Molho, mussarela, calabresa, bacon, cebola e azeitona', 60.00, 5);

-- Consulta de pizzas com valor maior que R$ 45,00
SELECT * FROM tb_pizzas WHERE valor > 45.00;

-- Consulta de pizzas com valor entre R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

-- Consulta de pizzas que possuem a letra M no nome
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

-- Consulta utilizando INNER JOIN
SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

-- Consulta utilizando INNER JOIN para uma categoria específica
SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria 
WHERE tb_categorias.nome_categoria = 'Doce';
