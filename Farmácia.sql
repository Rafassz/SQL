CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_produtos (
    id_produto BIGINT AUTO_INCREMENT,                 
    nome_produto VARCHAR(100) NOT NULL,          
    preco DECIMAL(10, 2) NOT NULL,               
    quantidade_em_estoque INT NOT NULL,          
	PRIMARY KEY (id_produto)                  
);

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL,        
    descricao_categoria VARCHAR(255),
    PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;

ALTER TABLE tb_produtos ADD id_categorias BIGINT;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (id_categorias) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias ( nome_categoria, descricao_categoria) VALUES
    ('Medicamentos', 'Produtos farmacêuticos utilizados para prevenção e tratamento de doenças'),
    ('Higiene', 'Produtos voltados para a higiene pessoal e cuidados diários'),
    ('Cosméticos', 'Produtos de beleza e cuidados com a pele e cabelo'),
    ('Suplementos', 'Produtos alimentares com objetivo de complementar a dieta e melhorar o desempenho'),
    ('Bem-estar', 'Produtos voltados ao conforto e relaxamento, como óleos essenciais e equipamentos de massagem');

INSERT INTO tb_produtos (nome_produto, preco, quantidade_em_estoque, id_categorias) VALUES
    ('Aspirina 500mg', 19.99, 150, 1),  -- Produto da categoria 'Medicamentos'
    ('Shampoo Anticaspa', 25.50, 80, 2), -- Produto da categoria 'Higiene'
    ('Creme Hidratante Facial', 35.00, 60, 3), -- Produto da categoria 'Cosméticos'
    ('Ômega 3', 45.90, 200, 4), -- Produto da categoria 'Suplementos'
    ('Óleo Essencial de Lavanda', 30.00, 50, 5), -- Produto da categoria 'Bem-estar'
    ('Paracetamol 750mg', 12.80, 120, 1),  -- Produto da categoria 'Medicamentos'
    ('Sabonete Líquido Antibacteriano', 18.90, 100, 2), -- Produto da categoria 'Higiene'
    ('Creme Anti-idade', 55.00, 30, 3); -- Produto da categoria 'Cosméticos'


SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco > 5 && preco < 60;

-- LIKE
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%"; 

-- INNER JOIN
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categorias = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categorias = tb_categorias.id WHERE id = 2;

	
