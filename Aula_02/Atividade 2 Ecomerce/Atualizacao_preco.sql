CREATE DATABASE db_loja;

USE db_loja;

CREATE TABLE tb_produtos_loja(
id bigint AUTO_INCREMENT,
nome varchar(255) not null,
quantidade int,
preco decimal(8,2) not null,
tamanho INT,
setor varchar(255),
PRIMARY KEY (id)
);

INSERT INTO tb_produtos_loja (nome, quantidade, preco, tamanho, setor)
VALUES ("Camiseta xadres", 47, 35.45, 37, "Roupas");

INSERT INTO tb_produtos_loja (nome, quantidade, preco, tamanho, setor)
VALUES ("Calça Jeans", 72, 89.99, 39, "Roupas");

INSERT INTO tb_produtos_loja (nome, quantidade, preco, tamanho, setor)
VALUES ("Blusa Branca", 22, 20.00, 35, "Roupas");

INSERT INTO tb_produtos_loja (nome, quantidade, preco, tamanho, setor)
VALUES ("Tenis nike", 33, 149.99, 38, "Calçados");

INSERT INTO tb_produtos_loja (nome, quantidade, preco, tamanho, setor)
VALUES ("Salto alto", 18, 245.00, 36, "Calçados");

INSERT INTO tb_produtos_loja (nome, quantidade, preco,setor)
VALUES ("Mochila adidas", 20, 200.25,"Bolsas");

INSERT INTO tb_produtos_loja (nome, quantidade, preco, setor)
VALUES ("Pingente de ouro branco", 4,690.55, "Joias");

INSERT INTO tb_produtos_loja (nome, quantidade, preco, setor)
VALUES ("Colar Agata", 5, 1499.99, "Joias");

SELECT * FROM tb_produtos_loja;

-- ATUALIZANDO INFORMAÕES
UPDATE tb_produtos_loja SET preco= 635.00 WHERE id=7;

