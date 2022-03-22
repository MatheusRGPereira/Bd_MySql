CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
nome varchar(255),
nivel varchar(255),
duracao varchar(255),

PRIMARY KEY(id)
);

INSERT INTO	tb_categoria (nome,nivel,duracao)
VALUES ("Tecnologia","Intermediario","2 semanas");

INSERT INTO	tb_categoria (nome,nivel,duracao)
VALUES ("Tecnologia","Avançado","4 semanas");

INSERT INTO	tb_categoria (nome,nivel,duracao)
VALUES ("Musica","Intermediario","2 semanas");

INSERT INTO	tb_categoria (nome,nivel,duracao)
VALUES ("Musica","Avançado","4 semanas");

INSERT INTO	tb_categoria (nome,nivel,duracao)
VALUES ("Cozinha","intermediario","2 semanas");

INSERT INTO	tb_categoria (nome,nivel,duracao)
VALUES ("Cozinha","Avançado","4 semanas");

SELECT * FROM tb_categoria;


CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome varchar(255),
especificacao varchar(255),
valor decimal(8,2),
inicio DATE,
descricao varchar(255),
categoria_id bigint,
PRIMARY KEY(id),
FOREIGN KEY  (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produtos (nome,especificacao,valor,inicio,descricao,categoria_id)
VALUES ("Java","Laço de repeticao",45.00,"2022-04-22","Introdução aos laçoes de repetição",1);

INSERT INTO tb_produtos (nome,especificacao,valor,inicio,descricao,categoria_id)
VALUES ("Java","Springboot",150.00,"2022-05-10","Introdução ao Springboot",2);

INSERT INTO tb_produtos (nome,especificacao,valor,inicio,descricao,categoria_id)
VALUES ("Violão","Teoria Musical",45.00,"2022-04-10","Introdução a teoria musical",3);

INSERT INTO tb_produtos (nome,especificacao,valor,inicio,descricao,categoria_id)
VALUES ("Violão","Aplicação de partitura",150.00,"2022-05-10","Introdução a aplicação de partituras",4);

INSERT INTO tb_produtos (nome,especificacao,valor,inicio,descricao,categoria_id)
VALUES ("Bases da cozinha","Teoria Cozinha",45.00,"2022-04-22","Introdução a cozinha",5);

INSERT INTO tb_produtos (nome,especificacao,valor,inicio,descricao,categoria_id)
VALUES ("Tecnicas cozinha","Cortes",150.00,"2022-05-25","Introdução a tecnicas de corte",6);

INSERT INTO tb_produtos (nome,especificacao,valor,inicio,descricao,categoria_id)
VALUES ("Mysql","Chaves(keys)",45.00,"2022-04-10","Introdução ao uso das chaves no MySql",1);

INSERT INTO tb_produtos (nome,especificacao,valor,inicio,descricao,categoria_id)
VALUES ("Front-end","Css",150.00,"2022-04-22","Aplicação de css no seu html",2);

-- todos os cursos
SELECT * FROM tb_produtos;

-- Preços acima de 50
SELECT * FROM tb_produtos WHERE valor > 50.00;

-- Preco entre 3 e 60
SELECT * FROM tb_produtos WHERE valor BETWEEN 3 AND 60;

-- cursos com o a letra j
SELECT * FROM tb_produtos WHERE nome like "%j%";

-- junção das tabelas
SELECT * FROM tb_produtos INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- todas os cursos da categoria tecnologia
SELECT * FROM tb_produtos INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.categoria_id
WHERE tb_categoria.nome= "tecnologia";






