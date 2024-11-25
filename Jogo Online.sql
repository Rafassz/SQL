CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens (
    id_personagem BIGINT AUTO_INCREMENT,               
    nome_personagem VARCHAR(100) NOT NULL,         
    nivel INT NOT NULL,                            
    experiencia INT NOT NULL,
    PRIMARY KEY (id_personagem)
);

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,                  
    nome_classe VARCHAR(100) NOT NULL,             
    descricao_classe VARCHAR(255),               
    habilidade_principal VARCHAR(100),
    PRIMARY KEY(id)
);

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;

ALTER TABLE tb_personagens ADD id_classes BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (id_classes) REFERENCES tb_classes (id);

INSERT INTO tb_classes ( nome_classe, descricao_classe, habilidade_principal) VALUES
    ('Guerreiro', 'Classe focada no combate corpo a corpo, com alta resistência e força física.', 'Golpe Devastador'),
    ('Mago', 'Classe especializada em magia, com grande poder de ataque à distância e controle de elementos.', 'Magia de Fogo'),
    ('Arqueiro', 'Classe ágil e precisa, especializada em ataques à distância com arco e flecha.', 'Tiro Rápido'),
    ('Ladrão', 'Classe ágil e sorrateira, especializada em furtos, ataques rápidos e evasão.', 'Ataque Surpresa'),
    ('Clérigo', 'Classe focada em cura e suporte aos aliados, com habilidades de proteção e restauração de vida.', 'Cura Divina');
    
INSERT INTO tb_personagens (nome_personagem, nivel, experiencia, id_classes) VALUES
    ('Arthur', 5, 1200, 1),  -- Guerreiro (id_classes = 1)
    ('Elira', 7, 1800, 2),   -- Mago (id_classes = 2)
    ('Drako', 4, 900, 3),    -- Arqueiro (id_classes = 3)
    ('Lilith', 10, 2500, 4), -- Ladrão (id_classes = 4)
    ('Seraphina', 6, 1500, 5), -- Clérigo (id_classes = 5)
    ('Thorne', 8, 2100, 1),  -- Guerreiro (id_classes = 1)
    ('Zara', 9, 2300, 2),    -- Mago (id_classes = 2)
    ('Nyx', 3, 700, 3);      -- Arqueiro (id_classes = 3)
    
    SELECT * FROM tb_personagens WHERE experiencia > 1500;
    
    SELECT * FROM tb_personagens WHERE experiencia > 500 && experiencia < 2000;
    
    SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%A%";
    
    -- INNER JOIN
	SELECT * FROM tb_personagens INNER JOIN tb_classes
	ON tb_personagens.id_classes = tb_classes.id;
	
    SELECT * FROM tb_personagens INNER JOIN tb_classes
	ON tb_personagens.id_classes = tb_classes.id WHERE id = 1;

