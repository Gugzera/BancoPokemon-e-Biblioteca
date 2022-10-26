CREATE DATABASE db_pokemon;
USE db_pokemon;

CREATE TABLE tb_Fazenda(
	IdFazenda int NOT NULL PRIMARY KEY,
	IdTreinador int,
	IdPokemon int,
	QuantidadePokemon int
);

-- INSERT INTO tb_Fazenda
-- (IdFazenda,	IdTreinador,IdPokemon,QuantidadePokemon)
-- 	VALUES 
 --    (1, 1, 1, 45);alter
 insert into tb_Fazenda values ( 1, 1, 1, 12);
 insert into tb_Fazenda values ( 2, 2, 2, 34);
 insert into tb_Fazenda values ( 3, 3, 3, 7);
 insert into tb_Fazenda values ( 4, 4, 4, 81);
 insert into tb_Fazenda values ( 5, 5, 5, 22);


ALTER TABLE  tb_Treinador CHANGE  idade  DataNasc int;
ALTER TABLE  tb_Treinador add DataNasc int;

ALTER TABLE tb_Treinador Drop Column DataNasc;

CREATE TABLE tb_Treinador(
	IdTreinador int NOT NULL PRIMARY KEY,
    NomeTreinador varchar (55),
    DataNasc date,
	Fk_IdIdFazenda int,
	Fk_IdPokemon int,
	QuantidadePokemon int
);
describe tb_Treinador;

 insert into tb_Treinador values ( 1, 'Ash', '2005-06-08', 1, 1, 5);
 insert into tb_Treinador values ( 2, 'Gustavo', '2003-12-28',2,  2, 3);
 insert into tb_Treinador values ( 3, 'Clara', '2003-09-19',3, 3, 6);
 insert into tb_Treinador values ( 4, 'Enzo', '2002-06-11',4, 4, 6);
 insert into tb_Treinador values ( 5, 'Mary', '1999-01-02',5,  5, 2);
 
 Update tb_Treinador
	Set DataNasc = '2003-09-15'
	where IdTreinador = 1;
 
 
CREATE TABLE tb_Bag(
	IdBag int NOT NULL PRIMARY KEY,
	IdTreinador int,
	IdPokemon int,
	QuantidadePokemon int
);

 insert into tb_Bag values ( 1, 1, 1, 5);
 insert into tb_Bag values ( 2, 2, 2, 3);
 insert into tb_Bag values ( 3, 3, 3, 6);
 insert into tb_Bag values ( 4, 4, 4, 6);
 insert into tb_Bag values ( 5, 5, 5, 2);

select * from tb_Bag;
select * from tb_Treinador;
select * from tb_Pokemon;
select * from tb_Fazenda;


describe tb_Treinador;

CREATE TABLE tb_Pokemon(
	IdPokemon int NOT NULL PRIMARY KEY,
    nomePokemon varchar(50),/*tudo q tem no teclado*/
	Fk_IdTreinador int,
	forma varchar(20),
	Tipo varchar(20),
    Tipo2 varchar(20),
    Hp numeric,
    Ataque numeric,
    Defesa numeric,
    AtaqueEspecial numeric,
    DefesaEspecial numeric,
    Geracao numeric,
    Agilidade numeric    
);
drop table tb_Treinador ;

INSERT INTO tb_Pokemon Values (1, 'Bulbassauro', 1, '','planta', 'poison',45,49,49,65,65,45,1);
INSERT INTO tb_Pokemon Values (6, 'Charizard', 1, '','Fire', 'Flyng',78,84,78,109,85,100,1);
INSERT INTO tb_Pokemon Values (9, 'Blastoise', 4, '','agua', '',79,83,100,85,105,78,11);
INSERT INTO tb_Pokemon Values (19, 'ratata', 2, '','normal', '',55,	81,	60,	50,	70,	97,	1);
INSERT INTO tb_Pokemon Values (25, 'Pikachu', 3, '','Eletric', '',35, 55,	40,	50,	50,	90,	1);
INSERT INTO tb_Pokemon Values (34, 'Nidoking', 1, '','poison', 'ground',81,	102, 77, 85,	75,	85,	1);
INSERT INTO tb_Pokemon Values (678, 'Meowstic', 5, 'female','psychic', '',74,	48,	76,	83,	81,	104,	6);
INSERT INTO tb_Pokemon Values (52, 'Meowth', 2, 'Galarian Meowth','Steel', '',50,	65,	55,	40,	40,	40,	8);
INSERT INTO tb_Pokemon Values (233, 'Porygon2', 2, '','normal', '',85, 80,	90,	105,	95,	60,	2);
INSERT INTO tb_Pokemon Values (18, 'Pidgeot', 5, '','Normal', 'flying',83,	80,	75,	70,	70,	101,	1);
INSERT INTO tb_Pokemon Values (94, 'Gengar', 5, 'Mega Gengar','Ghost', 'poison',60,	65,	80,	170, 95,	130,	6);
