CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
tamanho varchar(255),
massa varchar(255),
tipo varchar(255),
PRIMARY KEY(ID)
);

INSERT INTO tb_categoria (tamanho,massa,tipo)
VALUES ("6 Pedaços","Napolitana","Salgada");

INSERT INTO tb_categoria (tamanho,massa,tipo)
VALUES ("8 Pedaços","Tradicional","Salgada");

INSERT INTO tb_categoria (tamanho,massa,tipo)
VALUES ("Broto","Tradicional","Salgada");

INSERT INTO tb_categoria (tamanho,massa,tipo)
VALUES ("6 Pedaços","Napolitana","Doce");

INSERT INTO tb_categoria (tamanho,massa,tipo)
VALUES ("8 Pedaços","Tradicional","Doce");

INSERT INTO tb_categoria (tamanho,massa,tipo)
VALUES ("Broto","Tradicional","Doce");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT,
sabor varchar(255),
borda varchar(255),
molho varchar(255),
extra varchar(255),
preco decimal(8,2),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto (sabor,borda,molho,extra,preco,categoria_id)
VALUES ("Mussarela","Catupiry","Tomate","Mussarela",35.00,2);

INSERT INTO tb_produto (sabor,borda,molho,extra,preco,categoria_id)
VALUES ("Mussarela","","Tomate","",45.00,1);

INSERT INTO tb_produto (sabor,borda,molho,extra,preco,categoria_id)
VALUES ("4 queijos","Mussarela","Branco","Parmesão",45.00,2);

INSERT INTO tb_produto (sabor,borda,molho,extra,preco,categoria_id)
VALUES ("Romana","","Tomate","Tomate",50.00,1);

INSERT INTO tb_produto (sabor,borda,molho,extra,preco,categoria_id)
VALUES ("Frango/Catupiry","Catupiry","Branco","Mussarela",35.00,3);

INSERT INTO tb_produto (sabor,borda,molho,extra,preco,categoria_id)
VALUES ("Nutella","Chocolate","","Morangos",45.00,5);

INSERT INTO tb_produto (sabor,borda,molho,extra,preco,categoria_id)
VALUES ("Prestigio","Chocolate","","Coco",45.00,6);

INSERT INTO tb_produto (sabor,borda,molho,extra,preco,categoria_id)
VALUES ("Banana","Chocolate","","Leite condensado",55.00,4);

-- todas as pizzas
SELECT * FROM tb_produto;

-- Preços acima de 45
SELECT * FROM tb_produto WHERE preco > 45.00;

-- Preco entre 29 e 60
SELECT * FROM tb_produto WHERE PRECO BETWEEN 29 AND 60;

-- pizza com o a letra c
SELECT * FROM tb_produto WHERE sabor like "%c%";

-- junção das tabelas
SELECT * FROM tb_produto INNER JOIN tb_categoria on tb_categoria.id = tb_produto.categoria_id;

-- todas as pizzas doce
SELECT * FROM tb_produto INNER JOIN tb_categoria on tb_categoria.id = tb_produto.categoria_id
WHERE tb_categoria.tipo= "Doce";