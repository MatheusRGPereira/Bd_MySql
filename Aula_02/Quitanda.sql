-- Criar banco de dados
CREATE DATABASE db_quitanda;

 -- Selecionar banco de dados
 USE db_quitanda;

-- criar tabela tb produtos
CREATE TABLE tb_produtos (
id bigint auto_increment,
nome varchar (255) NOT NULL,
quantidade int,
data_validade date,
preco decimal not null,
primary key (id)
);

INSERT INTO tb_produtos (nome,quantidade,data_validade,preco)
VALUES ("arroz", 50, "2023-04-29", 20.00);

INSERT INTO tb_produtos (nome,quantidade,data_validade,preco)
VALUES ("xuxu", 20, "2022-04-18", 3.00);

INSERT INTO tb_produtos (nome,quantidade,data_validade,preco)
VALUES ("tomate", 80, "2022-04-18", 16.00);

INSERT INTO tb_produtos (nome,quantidade,data_validade,preco)
VALUES ("cenoura", 30, "2022-04-18", 16.00);

INSERT INTO tb_produtos (nome,quantidade,data_validade,preco)
VALUES ("morango", 1, "2022-03-20", 8.50);

INSERT INTO tb_produtos (nome,quantidade,data_validade,preco)
VALUES ("banana", 1000, "2022-03-20", 10.50);




-- listar produtos
SELECT * FROM tb_produtos;
SELECT nome,preco FROM tb_produtos;
SELECT * FROM tb_produtos where preco > 10;
SELECT * FROM tb_produtos where preco >10 AND quantidade < 800;

SELECT nome, CONCAT('R$', FORMAT(preco,2, 'pt_BR')) AS preço FROM tb_produtos;



-- Atualização de informações
UPDATE tb_produtos set preco = 8.50 WHERE id = 5;

ALTER TABLE tb_produtos ADD descricao varchar(255);

ALTER TABLE tb_produtos DROP descricao;

-- Alteração dos valores da tabela
ALTER TABLE tb_produtos MODIFY preco decimal(8,2);

DELETE FROM tb_produtos WHERE id =3;
DELETE FROM tb_produtos WHERE id =7;









SET SQL_SAFE_UPTADES = 0;

DROP DATABASE db_quitanda;


