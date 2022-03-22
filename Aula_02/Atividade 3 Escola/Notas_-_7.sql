CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_Informacoes_alunos(
id BIGINT AUTO_INCREMENT,
nome varchar(255),
idade int,
turma int,
sala int,
notas decimal (3,1),
PRIMARY KEY (id)
);

INSERT INTO tb_informacoes_alunos (nome, idade, turma, sala, notas)
VALUES ("Lucas",7,4,12,7.5); 

INSERT INTO tb_informacoes_alunos (nome, idade, turma, sala, notas)
VALUES ("André",7,4,12,8.5); 

INSERT INTO tb_informacoes_alunos (nome, idade, turma, sala, notas)
VALUES ("julia",8,4,12,9.5); 

INSERT INTO tb_informacoes_alunos (nome, idade, turma, sala, notas)
VALUES ("Maria luiza",9,5,14,6.5); 

INSERT INTO tb_informacoes_alunos (nome, idade, turma, sala, notas)
VALUES ("Carlos",10,5,14,5.5); 

INSERT INTO tb_informacoes_alunos (nome, idade, turma, sala, notas)
VALUES ("Ana Paula",9,6,15,9.5); 

INSERT INTO tb_informacoes_alunos (nome, idade, turma, sala, notas)
VALUES ("Felipe",12,8,17,4.5); 

INSERT INTO tb_informacoes_alunos (nome, idade, turma, sala, notas)
VALUES ("Patricia",12,8,17,10.0); 

-- Informações notas abaixo de 7
SELECT * fROM tb_informacoes_alunos WHERE notas < 7.0;
