CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
classe varchar(255),
skill varchar(255),
arma varchar(255),
PRIMARY KEY(id)
);
INSERT INTO tb_classes (classe,skill,arma)
VALUES ("Mago","Mar de chamas","Cajado");

INSERT INTO tb_classes (classe,skill,arma)
VALUES ("Espiritualista","Fada das ondas","Orbe");

INSERT INTO tb_classes (classe,skill,arma)
VALUES ("Barbaro","Armagedon","Machado");

INSERT INTO tb_classes (classe,skill,arma)
VALUES ("Guerreiro","Ira do Paraiso","Punho/Machado");

INSERT INTO tb_classes (classe,skill,arma)
VALUES ("Mercenario","Decapitar","Adagas");

INSERT INTO tb_classes (classe,skill,arma)
VALUES ("Sacerdote","Mar sem fim","Cajado");

INSERT INTO tb_classes (classe,skill,arma)
VALUES ("Arcano","Vórtice de Yataghan","Espada");

INSERT INTO tb_classes (classe,skill,arma)
VALUES ("Arqueiro","Midori boshi","Arco e Flecha");

Select* from tb_classes;

CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
nome varchar(255),
ataque int,
defesa int,
vida int,
cultivo varchar(255),
raca varchar(255),
classes_id bigint,
PRIMARY KEY (id),
FOREIGN KEY(classes_id)  REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, ataque,defesa,vida,cultivo,raca,classes_id)
VALUES ("Zed",3555,800,1500,"Demonio","Abissal",5);

INSERT INTO tb_personagens (nome, ataque,defesa,vida,cultivo,raca,classes_id)
VALUES ("Sogeking",9999,100,1000,"Nirvana","Alado",8);

INSERT INTO tb_personagens (nome, ataque,defesa,vida,cultivo,raca,classes_id)
VALUES ("Rammus",1000,2500,3500,"Sabio","Selvagem",3);

INSERT INTO tb_personagens (nome, ataque,defesa,vida,cultivo,raca,classes_id)
VALUES ("xin zhao",2000,1500,2000,"demonio","Humano",4);

INSERT INTO tb_personagens (nome, ataque,defesa,vida,cultivo,raca,classes_id)
VALUES ("Caytlin",1500,1000,2500,"Sabio","Guardião",7);

INSERT INTO tb_personagens (nome, ataque,defesa,vida,cultivo,raca,classes_id)
VALUES ("Soraka",900,500,1000,"Sabio","Alada",6);

INSERT INTO tb_personagens (nome, ataque,defesa,vida,cultivo,raca,classes_id)
VALUES ("Vayne",2500,1100,1200,"Sabio","Abissal",2);

INSERT INTO tb_personagens (nome, ataque,defesa,vida,cultivo,raca,classes_id)
VALUES ("Lux",2500,2500,3500,"Demonio","Humana",1);

-- Lista de todos personagens
 Select* from tb_personagens;
 
 -- Personagens com ataque acima de 2000
 SELECT * FROM tb_personagens WHERE ataque > 2000;
 
 -- Defesa entre 1000 e 2000
 SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
 
-- Personagens com c no nome
 SELECT * FROM tb_personagens WHERE nome like "%c%";
 
 -- Tabela personagens e classes junto
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;
 
 -- Inner join só com arqueiros
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id
WHERE tb_classes.classe = "arqueiro";

 
 
