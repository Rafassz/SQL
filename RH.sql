CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_RH(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade INT NOT NULL,
cargo VARCHAR(255) NOT NULL,
salario DECIMAL NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_RH;

-- Proteção
SET SQL_SAFE_UPDATES = 1;
--

INSERT tb_RH (nome,idade,cargo,salario)
VALUES ("Rafael", 19, "Vendedor", 1800.00);

DELETE FROM tb_RH WHERE id = 2;

INSERT tb_RH (nome,idade,cargo,salario)
VALUES ("Daniel", 22, "Auxiliar de vendas", 1200.00);

INSERT tb_RH (nome,idade,cargo,salario)
VALUES ("Letícia", 28, "Gerente", 3500.00);

INSERT tb_RH (nome,idade,cargo,salario)
VALUES ("Eliana", 40, "Diretor", 9500.00);

INSERT tb_RH (nome,idade,cargo,salario)
VALUES ("Carlos", 18, "Vendedor", 1800.00);

ALTER TABLE tb_RH CHANGE salario salario DECIMAL(6,2);

SELECT * FROM tb_RH WHERE salario > 2000;

SELECT * FROM tb_RH WHERE salario < 2000.00;

UPDATE tb_RH SET salario = 2100.00 WHERE id = "6";













