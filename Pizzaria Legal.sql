CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
id_pizza BIGINT AUTO_INCREMENT,
nome_pizza VARCHAR(255) NOT NULL, -- Nome da pizza
descricao VARCHAR(255) NOT NULL, -- Breve resumo dos ingredientes
preco DECIMAL(4,2),
PRIMARY KEY(id_pizza)
);

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR(255), -- Tradicional, Doce, etc.
Descrição VARCHAR(255),	 -- Descrição da categoria (ex: "Pizzas clássicas com ingredientes tradicionais")
PRIMARY KEY (id)
);

SELECT * FROM tb_pizzas;
SELECT * FROM tb_categorias;

ALTER TABLE tb_pizzas ADD categorias_id BIGINT;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias 
FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias (nome_categoria, Descrição) VALUES
("Tradicional", "Pizzas clássicas com ingredientes tradicionais."),
("Especial", "Combinações únicas com ingredientes selecionados e sabores diferenciados."),
("Vegetariana", "Opção sem carne, feitas com vegetais frescos e saudáveis."	),
("Doce", "Pizzas com coberturas doces, como chocolate, frutas e creme."),
("Vegana", "Feitas sem produtos de origem animal, ideais para dietas veganas.");

ALTER TABLE tb_categorias CHANGE Descrição descricao VARCHAR(255) NOT NULL;

INSERT INTO tb_pizzas (nome_pizza, descricao, preco, categorias_id ) VALUES
('Mussarela', 'Pizza clássica com molho de tomate e queijo mussarela', 29.90, 1),  -- Categoria: Tradicional
('Calabresa', 'Pizza com molho de tomate, queijo e calabresa fatiada', 32.50, 1),  -- Categoria: Tradicional
('Frango com Catupiry', 'Pizza com frango desfiado e requeijão cremoso', 35.00, 1),  -- Categoria: Tradicional
('Quatro Queijos', 'Pizza com mussarela, parmesão, gorgonzola e provolone', 38.00, 2),  -- Categoria: Especial
('Pepperoni', 'Pizza com molho de tomate, queijo e pepperoni', 37.50, 2),  -- Categoria: Especial
('Legumes', 'Pizza vegetariana com abobrinha, pimentão, cogumelos e azeitonas', 34.00, 3),  -- Categoria: Vegetariana
('Banana com Canela', 'Pizza doce com banana caramelizada e canela', 30.00, 4),  -- Categoria: Doce
('Chocolate', 'Pizza de sobremesa com ganache de chocolate e morangos', 32.00, 4);  -- Categoria: Doce

UPDATE tb_pizzas SET preco = 47.90 WHERE id_pizza = 1;
UPDATE tb_pizzas SET preco = 45.90 WHERE id_pizza = 2;
UPDATE tb_pizzas SET preco = 49.90 WHERE id_pizza = 3;
UPDATE tb_pizzas SET preco = 55.90 WHERE id_pizza = 4;
UPDATE tb_pizzas SET preco = 58.90 WHERE id_pizza = 5;
UPDATE tb_pizzas SET preco = 63.90 WHERE id_pizza = 6;
UPDATE tb_pizzas SET preco = 29.90 WHERE id_pizza = 7;
UPDATE tb_pizzas SET preco = 29.90 WHERE id_pizza = 8;


SELECT * FROM tb_pizzas WHERE preco > 45.00; 

SELECT * FROM tb_pizzas WHERE preco > 50.00 && preco < 100; 

-- LIKE
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%M%";

-- INNER JOIN
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id WHERE categorias_id = 4;



