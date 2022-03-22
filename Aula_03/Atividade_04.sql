CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;


CREATE TABLE tb_categoria (
id bigint AUTO_INCREMENT,
tipo varchar(255),
bioma varchar(255),
produzida varchar(255),
PRIMARY KEY(id)
);
	
INSERT INTO tb_categoria (tipo,bioma,produzida)
VALUES ("Frutas","cerrado","nordeste");

INSERT INTO tb_categoria (tipo,bioma,produzida)
VALUES ("Frutas","pampa","sul");

INSERT INTO tb_categoria (tipo,bioma,produzida)
VALUES ("Frutas","mata-atlantica","sudeste");

INSERT INTO tb_categoria (tipo,bioma,produzida)
VALUES ("Frutas","amazonia","norte");

INSERT INTO tb_categoria (tipo,bioma,produzida)
VALUES ("Frutas","caatinga","nordeste");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome varchar(255) NOT NULL,
fornecedor varchar(255),
quantidade int NOT NULL,
validade DATE,
valor decimal(8,2),
categoria_id BIGINT,
PRIMARY KEY(ID),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produtos(nome,fornecedor,quantidade,validade,valor,categoria_id)
VALUES ("Caju","JTC",75,"2022-04-05",15.00,5);

INSERT INTO tb_produtos(nome,fornecedor,quantidade,validade,valor,categoria_id)
VALUES ("Pequi","Majui",150,"2022-04-15",20.00,1);

INSERT INTO tb_produtos(nome,fornecedor,quantidade,validade,valor,categoria_id)
VALUES ("Guabiroba","local",20,"2022-04-00",53.00,2);

INSERT INTO tb_produtos(nome,fornecedor,quantidade,validade,valor,categoria_id)
VALUES ("Uvaia","Alibaba",25,"2022-04-15",55.00,3);

INSERT INTO tb_produtos(nome,fornecedor,quantidade,validade,valor,categoria_id)
VALUES ("Babaçú","JTC",150,"2022-04-10",45.00,4);

INSERT INTO tb_produtos(nome,fornecedor,quantidade,validade,valor,categoria_id)
VALUES ("Camapu/physalis","JTC",150,"2022-04-15",35.00,4);

INSERT INTO tb_produtos(nome,fornecedor,quantidade,validade,valor,categoria_id)
VALUES ("Araticum","Local",25,"2022-04-05",45.00,2);

INSERT INTO tb_produtos(nome,fornecedor,quantidade,validade,valor,categoria_id)
VALUES ("Mangaba","Alibaba",80,"2022-04-15",65.00,5);

-- Todas as frutas
SELECT * FROM tb_produtos;

-- Preços acima de 50
SELECT * FROM tb_produtos WHERE valor > 50.00;

-- Preco entre 3 e 60
SELECT * FROM tb_produtos WHERE valor BETWEEN 3 AND 60;

-- Fruta com o a letra c
SELECT * FROM tb_produtos WHERE nome like "%c%";

-- junção das tabelas
SELECT * FROM tb_produtos INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- todas as frutas da caatinga
SELECT * FROM tb_produtos INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.categoria_id
WHERE tb_categoria.bioma= "caatinga";
