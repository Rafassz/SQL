CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_ecommerce(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
preco DECIMAL(6,2) NOT NULL,
descricao VARCHAR(255),
avaliacao VARCHAR(255),
PRIMARY KEY (id)
);

SELECT * FROM tb_ecommerce;

INSERT tb_ecommerce(nome,preco,descricao, avaliacao)
VALUE ("Console Xbox Series S", 2624.00, "Um console Compacto e especializado em velocidade",
"O console é Compacto e Eficaz");

INSERT tb_ecommerce(nome,preco,descricao, avaliacao)
VALUE ("Controle PS4", 200.00, "Um controle simples de segunda linha",
"O controle pode ser de segunda linha mas é de extrema qualidade");

INSERT tb_ecommerce(nome,preco,descricao, avaliacao)
VALUE ("Controle PS4 Personalizado", 500.00, "Um Controle 100% original com personalização",
"Pedi um controle personalizado e além do atendimento ser Ótimo adorei a personalização");

INSERT tb_ecommerce(nome,preco,descricao, avaliacao)
VALUE ("God Of War 4", 113.00, "Plataforma: PS4 Gênero: ação Entretenimento digital.",
"Muito bom veio perfeito com plástico na capa e tudo gostei muito.");

INSERT tb_ecommerce(nome,preco,descricao, avaliacao)
VALUE ("God Of War Ragnarok", 183.00, "Plataforma: PS4. Gênero: ação. Entretenimento digital.",
"Muito bom veio perfeito com plástico na capa e tudo gostei muito.");

INSERT tb_ecommerce(nome,preco,descricao, avaliacao)
VALUE ("Call of Duty Vanguard", 121.00, "Desenvolvido por Sledgehammer Games.
Gênero: ação.
Tamanho do arquivo: 144 GB.",
"Excelente jogo, muito bom mesmo, meu filho adorou.");

INSERT tb_ecommerce(nome,preco,descricao, avaliacao)
VALUE ("Call of Duty 6", 587.00, "Classificação 18.
Ano de lançamento: 2024.
Desenvolvido por Activision.",
"Jogo Fenomenal");

INSERT tb_ecommerce(nome,preco,descricao, avaliacao)
VALUE ("Red Dead Redemption 2", 111.00, "Formato: Físico.
Ano de lançamento: 2018.
Desenvolvido por Rockstar Games.",
"INCRIVEL, jogo pfenomenal, pensaram até nos mínimos detalhes, as bolas do cacavlo encolhem no frio");


-- Proteção
SET SQL_SAFE_UPDATES = 0;
--

 UPDATE tb_ecommerce SET nome = "Console PS4" WHERE nome = "Console Xbox Series S";
 
UPDATE tb_ecommerce SET nome = "Controle PS4" WHERE nome = "Controle Xbox";
  
UPDATE tb_ecommerce SET nome = "Controle PS4 Personalizado" WHERE nome = "Controle Xbox Personalizado";

SELECT * FROM tb_ecommerce WHERE preco > 500;

SELECT * FROM tb_ecommerce WHERE preco < 500;

   
