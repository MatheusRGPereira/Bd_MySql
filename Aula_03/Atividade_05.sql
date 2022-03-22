CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria (
id bigint AUTO_INCREMENT,
nome varchar(255),
sessao varchar(255),
descricao varchar(255),
PRIMARY KEY(id)
);

INSERT INTO tb_categoria (nome,sessao,descricao)
VALUES ("Ferramentas","Casa","Ferramentas para casa");

INSERT INTO tb_categoria (nome,sessao,descricao)
VALUES ("Pisos","Decoração","Pisos para diversas aréas");

INSERT INTO tb_categoria (nome,sessao,descricao)
VALUES ("Chuveiros","Banheiro","Chuveiros eletricos/gás");

INSERT INTO tb_categoria (nome,sessao,descricao)
VALUES ("Tanque","Lavanderia","Tanques de variados tamanhos");

INSERT INTO tb_categoria (nome,sessao,descricao)
VALUES ("Acabamento","Decoração","Acabamentos variados");


SELECT*FROM tb_categoria;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome varchar(255) NOT NULL,
tamanho varchar (255),
fabricante varchar(255),
cor varchar(255),
valor decimal(8,2),
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produtos (nome,tamanho,fabricante,cor,valor,categoria_id)
VALUES ("Furadeira MARCh5","36x36x17","Bosh","Azul",619.00,1);

INSERT INTO tb_produtos (nome,tamanho,fabricante,cor,valor,categoria_id)
VALUES ("Piso Titanium","96x96x2","TARKET","Cinza",736.00,2);

INSERT INTO tb_produtos (nome,tamanho,fabricante,cor,valor,categoria_id)
VALUES ("Chuveiro POLO PLUS","14x31x38","HYDRA","Branco",439.00,3);

INSERT INTO tb_produtos (nome,tamanho,fabricante,cor,valor,categoria_id)
VALUES ("Tanque/Gabinete","39x38x75","Celite","Branco",699.99,4);

INSERT INTO tb_produtos (nome,tamanho,fabricante,cor,valor,categoria_id)
VALUES ("Acabamento/para registro","8x5x4","SAMER","Preto",22.00,5);

INSERT INTO tb_produtos (nome,tamanho,fabricante,cor,valor,categoria_id)
VALUES ("Piso/Ceramica","36x36x17","Tarket","Branco",35.00,2);

INSERT INTO tb_produtos (nome,tamanho,fabricante,cor,valor,categoria_id)
VALUES ("Chuveiro Optima","15x38x30","Hydra","Branco",45.00,3);

INSERT INTO tb_produtos (nome,tamanho,fabricante,cor,valor,categoria_id)
VALUES ("Alicate Universal","30x8x3","Tramontina","Azul/cinza",27.00,1);

-- todos produtos
SELECT * FROM tb_produtos;

-- Preços acima de 50
SELECT * FROM tb_produtos WHERE valor > 50.00;

-- Preco entre 3 e 60
SELECT * FROM tb_produtos WHERE valor BETWEEN 3 AND 60;

-- Produtos com o a letra c
SELECT * FROM tb_produtos WHERE nome like "%c%";

-- junção das tabelas
SELECT * FROM tb_produtos INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- todas as frutas da caatinga
SELECT * FROM tb_produtos INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.categoria_id
WHERE tb_categoria.nome= "pisos";