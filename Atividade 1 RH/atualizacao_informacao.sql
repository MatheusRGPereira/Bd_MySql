CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_info_funcionarios(
id bigint AUTO_INCREMENT,
nome varchar(255) not null,
aniversario DATE,
cpf bigint not null,
salario decimal (8,2),
funcao varchar(255),
PRIMARY KEY	(id)
);

INSERT INTO tb_info_funcionarios (nome,aniversario, cpf,salario,funcao)
values ("Pedro", "1999-06-22",84736182738,1535.99,"Auxiliar admnistrativo");

INSERT INTO tb_info_funcionarios (nome,aniversario, cpf,salario,funcao)
values ("Jorge", "1997-02-12",85748392819,1535.75,"Auxiliar admnistrativo");

INSERT INTO tb_info_funcionarios (nome,aniversario, cpf,salario,funcao)
values ("Lucas", "1992-10-29",48102987909,2535.00,"Administrador");

INSERT INTO tb_info_funcionarios (nome,aniversario, cpf,salario,funcao)
values ("Carlos", "1985-09-17",39491829309,9535.00,"Desenvolvedor Java Senior");

INSERT INTO tb_info_funcionarios (nome,aniversario, cpf,salario,funcao)
values ("Matheus", "1999-08-31",47385738290,5025.50,"Desenvolvedor Java Junior");

-- ATUALIZANDO INFORMAÕES
UPDATE tb_info_funcionario SET salario= 6000.00  WHERE id= 5;