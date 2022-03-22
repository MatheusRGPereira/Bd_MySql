CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
id bigint AUTO_INCREMENT,
nome varchar(255),
sessao varchar(255),
descricao varchar(255),

PRIMARY KEY(id)
);

INSERT INTO tb_categoria (nome,sessao,descricao)
VALUES ("Medicamentos","fitoterapico","Remedios a base de plantas");

INSERT INTO tb_categoria (nome,sessao,descricao)
VALUES ("Medicamentos","Gripes","Remedios gerais para gripe");

INSERT INTO tb_categoria (nome,sessao,descricao)
VALUES ("Cosmeticos","Beleza","Cosmeticos em geral");

INSERT INTO tb_categoria (nome,sessao,descricao)
VALUES ("Saúde","Vitaminas","Vitaminas e suplementos");

INSERT INTO tb_categoria (nome,sessao,descricao)
VALUES ("shampoo","Higiene pessoal","Shampoos em geral");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome varchar(255),
fabricante varchar(255),
quantidade int,
peso varchar(255),
valor decimal(8,2),
categoria_id bigint,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produtos (nome,fabricante,quantidade,peso,valor,categoria_id)
VALUES ("Seakalm","natulab",450,"20 Comprimidos",15.99,1);

INSERT INTO tb_produtos (nome,fabricante,quantidade,peso,valor,categoria_id)
VALUES ("Benegrip","Benegrip",550,"12 Comprimidos",20.50,2);

INSERT INTO tb_produtos (nome,fabricante,quantidade,peso,valor,categoria_id)
VALUES ("EFFACLAR","LA ROCHE-POSAY",250,"40 Ml",133.99,3);

INSERT INTO tb_produtos (nome,fabricante,quantidade,peso,valor,categoria_id)
VALUES ("SUCUPIRA TRIFLEX","NaturalGren",450,"60 Comprimidos",9.99,4);

INSERT INTO tb_produtos (nome,fabricante,quantidade,peso,valor,categoria_id)
VALUES ("Shampoo antiquebra","StudioHair",125,"250 Ml",55.99,1);

INSERT INTO tb_produtos (nome,fabricante,quantidade,peso,valor,categoria_id)
VALUES ("NEUTROGENA","NORWEGIAN",85,"56 G",53.99,3);

INSERT INTO tb_produtos (nome,fabricante,quantidade,peso,valor,categoria_id)
VALUES ("ESPINHEIRA SANTA","HERBARIUM",240,"45 Capsulas",32.67,1);

INSERT INTO tb_produtos (nome,fabricante,quantidade,peso,valor,categoria_id)
VALUES ("VapoRub","Vick",300,"12 G",12.99,2);

-- todos os produtos
SELECT * FROM tb_produtos;

-- Preços acima de 50
SELECT * FROM tb_produtos WHERE valor > 50.00;

-- Preco entre 3 e 60
SELECT * FROM tb_produtos WHERE valor BETWEEN 3 AND 60;

-- Produtos com a letra b
SELECT * FROM tb_produtos WHERE nome like "%b%";

-- junção das tabelas
SELECT * FROM tb_produtos INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- todos os produtos da categoria cosmeticos
SELECT * FROM tb_produtos INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.categoria_id
WHERE tb_categoria.nome= "cosmeticos";
