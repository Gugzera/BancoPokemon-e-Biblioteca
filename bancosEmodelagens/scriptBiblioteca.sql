CREATE DATABASE bd_Biblioteca;
use bd_Biblioteca;

CREATE TABLE tb_Livro
(
	PK_IdLivro int not null primary key,
    TituloLivro varchar(150),
    Fk_IdAutor int,
    TipoCapa varchar (50),
    GeneroLivro varchar (50),
    ValorLivro decimal(10,2)
);

INSERT INTO tb_Livro (PK_IdLivro , TituloLivro, Fk_IdAutor, TipoCapa, GeneroLivro, ValorLivro)values
	  (1,'A Menina que roubava Livros', 1, 'Capa Mole', 'Históra/fatos reais', 45),
      (2,'Garota Exemplar', 3, 'Capa Mole', 'Suspense', 25),
      (3,'Harry Potter e a Pedra Filosofal', 2, 'Dura', 'Fantasia', 70),
      (4,'Harry Potter e  o Prisioneiro de Azkabans', 2, 'Capa Mole', 'Fantasia', 19.79),
      (5,'Sherlock dos Holmes e o Signo dos Quatros', 4, 'Capa Mole', 'Aventura', 27.8);
/* em valor usar decima(10,2)*/
select * from tb_Autor;
describe tb_cliente;
UPDATE tb_Livro 
	set GeneroLivro = 'Fabula' where PK_IdLivro = 2; /*UPDATE SEM WHERE N PODE*/
    delete from tb_livro where PK_IdLivro = 2;

CREATE TABLE tb_Autor
(
	PK_IdAutor int not null primary key,
    NomeAutor varchar(100),
    Endereco varchar (80),
    Logradouro varchar (80),
    Numero char (5),
    DataNasc date,
    Genero enum ('f', 'm','o'),
    Nascionalidade varchar (40)    
);


INSERT INTO tb_Autor (PK_IdAutor, NomeAutor,  Endereco , Logradouro , Numero , DataNasc , Genero, Nascionalidade)values
	/*(1, 'Markus Zusaks', 'Austrália','McEvoy St','55','1975-06-26','m','Australiano');*/
	(2, 'Joana Katherine Rowling', 'Inglaterra','Fairmont Avenue' ,'3227','1974-08-14','m','Inglesa'),
	(3, 'JGillian Flynn', 'EUA','FairmontRandall DriveAvenue' ,'2103','2000-07-17','m','Norte Americana'),
	(4, 'Conan Doyle', 'Inglaterra','Baker Street' ,'221','1859-05-22','m','Inglês');
    

/*tabela cliente*/
INSERT INTO tb_cliente (NomeCliente, email, TelCelularCliente)values
	('Gustavo Gomes', 'gustavo@gmail.com','(11)97794-8720'),
	('Matheus Gomes', 'matheus2@gmail.com','(11)96121-8440'),
	('Maria Eugenia', 'MariaEugenia@gmail.com','(11)94534-1214'),
	('Estefano prado', 'estefano@gmail.com','(11)97112-9873');
/*-------------------ctrl z ---------------- aba de testes*/
start transaction;
delete from tb_Livro;
rollback;
commit;/*confirma a exclusão, enquanto o rollback, volta atrás*/
/*---------------------------------------------------------*/
/*tabela Obra*/
select * from tb_Obra;
INSERT INTO tb_Obra (PK_IdObra, Fk_IdAutor, Fk_IdLivro)values
	(1,1,1),
	(2,2,3),
	(3,3,2),
	(4,4,5);
	
/*-------------------ctrl z ---------------- aba de testes*/


create table tb_Compra(
	Pk_IdCompra int auto_increment not null  primary key,
    data_compra date not null,
    total_compra float not null,
    Fk_IdCliente int not null,
    Fk_IdLivro int not null
);
INSERT INTO tb_Compra (Pk_IdCompra, data_compra, total_compra , Fk_IdCliente, Fk_IdLivro)values
	(1, '2022-09-28', 19.79, 1, 4),
	(2, '2022-10-20', 45.5, 2, 1),
	(3, '2022-10-26', 25, 1, 2),
	(4, '2022-09-12', 75, 3, 3),
	(5, '2022-04-12', 32.8, 4, 5);
    select * from tb_Compra;


/*--------------------------*/

create table tb_Avaliacao(
	Pk_IdAvaliacao int auto_increment not null  primary key,
    descricao enum('Ruim', 'Regular', 'Bom', 'Muito Bom') not null,
    Fk_Idliente int not null,
    Fk_Idivro int not null 
);

INSERT INTO tb_Avaliacao (Pk_IdAvaliacao, descricao, Fk_Idliente, Fk_Idivro)values
	(1, 'Muito Bom', 1, 4),
	(2, 'Bom',  2, 1),
	(3, 'Muito Bom', 1, 2),
	(4, 'Bom', 3, 3),
	(5, 'Regular', 4, 5);
    select * from tb_Avaliacao;
    
    /*--------------------------*/

create table tb_Editora(
	Pk_IdEditora int not null auto_increment  primary key,
    nomeEditora varchar(70) not null,
    telefone varchar(15) not null,
    celular varchar(15) not null,
    data_publicacao date
);

INSERT INTO tb_Editora (Pk_IdEditora, nomeEditora, telefone, celular, data_publicacao)values
	(1, 'Rocco', '202-555-0171','','2000-07-04'),
	(2, 'Intriseca', '202-555-0154','','2002-03-02');
	
    select * from tb_Editora;
    
    /*--------------------------*/

create table tb_Publicacao(
	Pk_IdPublicacao int auto_increment not null primary key,
    Fk_IdEditora int not null,
    Fk_IdLivro int not null
);

INSERT INTO tb_Publicacao (Pk_IdPublicacao, Fk_IdEditora, Fk_IdLivro)values
	(1,1,1),/*2 e 5 livros tb*/
	(2,3,2);/*4 tb*/
	
    select * from tb_Publicacao;
    
    /*--------------------------*/

