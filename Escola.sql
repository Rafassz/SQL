CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_escola(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
idade INT,
serie INT,
nota DECIMAL(3,1) NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_escola;

INSERT tb_escola(nome, idade,serie,nota)
VALUE ("Rafael", 12, 6 , 9.0);

INSERT tb_escola(nome, idade,serie,nota)
VALUE ("Daniel", 6, 1 , 10.0);

INSERT tb_escola(nome, idade,serie,nota)
VALUE ("Letícia", 15, 9 , 9.5);

INSERT tb_escola(nome, idade,serie,nota)
VALUE ("Carlos", 14, 8 , 5.0);

INSERT tb_escola(nome, idade,serie,nota)
VALUE ("Laura", 14, 8 , 7.5);

INSERT tb_escola(nome, idade,serie,nota)
VALUE ("Maria", 12, 6 , 6.0);

INSERT tb_escola(nome, idade,serie,nota)
VALUE ("João", 15, 9 , 3.0);

INSERT tb_escola(nome, idade,serie,nota)
VALUE ("Vinicius", 13, 7 , 7.0);

SELECT * FROM tb_escola WHERE nota > 7.0;

SELECT * FROM tb_escola WHERE nota < 7.0;

