-- criar bd Exemplo_Select
CREATE DATABASE Exemplo_Select;

-- abrir bd Exemplo_Select
use Exemplo_Select;

-- criação tabela Categoria
CREATE TABLE Categoria
(
Cod_Categoria int,
Nome_Categoria varchar (15) NOT NULL,
Descricao varchar(25) NULL,
PRIMARY KEY (Cod_Categoria)
 );

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (1,'Beverages','Soft drinks');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (2,'Condiments','Sweet and savory sauces');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (3,'Confections','candies');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (4,'Dairy Products','Queijo');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (5,'Grains/Cereals','cereal');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (6,'Meat/Poultry','Prepared meats');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (7,'Produce','Dried fruit and bean curd');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (8,'Seafood','Seaweed and fish');

select * from categoria;

CREATE TABLE Envio
 (
	Cod_Envio int,
 	DataEnvio datetime,
  	Frete int,
	NomeNavio varchar(40),
 	Cidade varchar(15),
	Regiao varchar(15),
 	Pais varchar(15)
 );


INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10248,'7/4/1996',32.38,'Vins et alcools Chevalier','Abbaye','Reims','France');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10249,'7/5/1996',11.61,'Toms Spezialitaten','Luisenstr',nULL,'Germany');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10250,'7/8/1996',65.83,'Hanari Carnes','Rio de Janeiro','Sudeste','Brazil');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10251,'7/8/1996',41.34,'Victuailles en stock','Lyon',NULL,'France');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10252,'7/9/1996',51.30,'Supremes delices','Boulevard Tirou', 'Charleroi','Belgium');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10253,'7/10/1996',58.17,'Hanari Carnes','Rio de Janeiro','Sudeste','Brazil');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
vALUES (10254,'7/11/1996',22.98,'Chop-suey Chinese','Bern',NULL,'Switzerland');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10255,'7/12/1996',148.33,'Richter Supermarkt','Geneve',	NULL,'Switzerland');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10256,'15/7/1996',13.97,'Wellington Importadora','Resende','Sul','Brazil');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10257,'8/8/1996',81.91,'HILARION-Abastos','San Cristobal','Tachira','Venezuela');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10258,'17/7/1996',140.51,'Ernst Handel','Kirchgasse','Graz','Austria');


select * from Envio;


CREATE TABLE Territorio
(
       Cod_Territorio varchar(20) NOT NULL,
       Territoriodescricao varchar(50) NOT NULL,
       Cod_Regiao int
);


Insert Into Territorio Values ('01581','Westboro',1);
Insert Into Territorio Values ('01730','Bedford',1);
Insert Into Territorio Values ('01833','Georgetow',1);
Insert Into Territorio Values ('02116','Boston',1);
Insert Into Territorio Values ('02139','Cambridge',1);
Insert Into Territorio Values ('02184','Braintree',1);
Insert Into Territorio Values ('02903','Providence',1);
Insert Into Territorio Values ('03049','Hollis',3);
Insert Into Territorio Values ('03801','Portsmouth',3);
Insert Into Territorio Values ('06897','Wilton',1);
Insert Into Territorio Values ('07960','Morristown',1);
Insert Into Territorio Values ('08837','Edison',1);
Insert Into Territorio Values ('10019','New York',1);
Insert Into Territorio Values ('10038','New York',1);
Insert Into Territorio Values ('11747','Mellvile',1);
Insert Into Territorio Values ('14450','Fairport',1);
Insert Into Territorio Values ('19428','Philadelphia',3);
Insert Into Territorio Values ('19713','Neward',1);
Insert Into Territorio Values ('20852','Rockville',1);
Insert Into Territorio Values ('27403','Greensboro',1);
Insert Into Territorio Values ('27511','Cary',1);
Insert Into Territorio Values ('29202','Columbia',4);
Insert Into Territorio Values ('30346','Atlanta',4);
Insert Into Territorio Values ('31406','Savannah',4);
Insert Into Territorio Values ('32859','Orlando',4);
Insert Into Territorio Values ('33607','Tampa',4);
Insert Into Territorio Values ('40222','Louisville',1);
Insert Into Territorio Values ('44122','Beachwood',3);
Insert Into Territorio Values ('45839','Findlay',3);
Insert Into Territorio Values ('48075','Southfield',3);
Insert Into Territorio Values ('48084','Troy',3);
Insert Into Territorio Values ('48304','Bloomfield Hills',3);
Insert Into Territorio Values ('53404','Racine',3);
Insert Into Territorio Values ('55113','Roseville',3);
Insert Into Territorio Values ('55439','Minneapolis',3);
Insert Into Territorio Values ('60179','Hoffman Estates',2);
Insert Into Territorio Values ('60601','Chicago',2);
Insert Into Territorio Values ('72716','Bentonville',4);
Insert Into Territorio Values ('75234','Dallas',4);
Insert Into Territorio Values ('78759','Austin',4);
Insert Into Territorio Values ('80202','Denver',2);
Insert Into Territorio Values ('80909','Colorado Springs',2);
Insert Into Territorio Values ('85014','Phoenix',2);
Insert Into Territorio Values ('85251','Scottsdale',2);
Insert Into Territorio Values ('90405','Santa Monica',2);
Insert Into Territorio Values ('94025','Menlo Park',2);
Insert Into Territorio Values ('94105','San Francisco',2);
Insert Into Territorio Values ('95008','Campbell',2);
Insert Into Territorio Values ('95054','Santa Clara',2);
Insert Into Territorio Values ('95060','Santa Cruz',2);
Insert Into Territorio Values ('98004','Bellevue',2);
Insert Into Territorio Values ('98052','Redmond',2);
Insert Into Territorio Values ('98104','Seattle',2);

select * from Territorio;

-- Exclusão #1

delete from Categoria where Descricao like 'Queijo'

select * from Categoria;

-- Exclusão #2

delete from Categoria where Descricao like 's%'

select * from Categoria;

-- Exclusão #3

delete from Categoria where Nome_Categoria like '%a%'

select * from Categoria;

-- Exclusão #4

delete from Envio where Regiao is null

select * from Envio;

-- Exclusão #5

delete from Envio where NomeNavio like 'Chop-suey Chinese' -- obs: excluido no delete anterior

select * from Envio;

-- Exclusão #6

delete from Envio where Frete > 100

select * from Envio;

-- Exclusão #7

delete from Territorio where Cod_Regiao like 3

select * from Territorio;

-- Exclusão #8

delete from Territorio where Territoriodescricao like 'New York'

select * from Territorio;

-- Exclusão #9

delete from Territorio where Cod_Territorio > 90000

select * from Territorio;

-- Exclusão #10

delete from Categoria

select * from Categoria;

-- Exclusão #11

delete from Envio

select * from Envio;

-- Exclusão #12

delete from Territorio

select * from Territorio;

-- Extra

-- criando uma tabela "pet"
create table pet (
NumRegistro int, -- criando um campo "NumRegistro" do tipo "int"
Nome varchar(80), -- criando um campo "Nome" do tipo "varchar(80)"
Especie varchar(25), -- criando um campo "Especie" do tipo "varchar(25)"
Raca varchar(30),-- criando um campo "Raca" do tipo "varchar(30)"
Cor varchar(40), -- criando um campo "Cor" do tipo "varchar(40)"
Nascimento date, -- criando um campo "Nascimento" do tipo "date"
Sexo varchar(9)-- criando um campo "Sexo" do tipo "varchar(9)"
);

-- Inserindo 10 registros na tabela "pet"
INSERT INTO pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo) VALUES (1, 'Rex', 'Cachorro', 'Pastor Alemão', 'Preto e Marrom', '2020-03-15', 'Macho');
INSERT INTO pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo) VALUES (2, 'Luna', 'Gato', 'Siamês', 'Cinza', '2021-05-20', 'Fêmea');
INSERT INTO pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo) VALUES (3, 'Bolinha', 'Cachorro', 'Poodle', 'Branco', '2019-11-01', 'Macho');
INSERT INTO pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo) VALUES (4, 'Mel', 'Gato', 'Persa', 'Dourado', '2022-01-10', 'Fêmea');
INSERT INTO pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo) VALUES (5, 'Max', 'Cachorro', 'Labrador', 'Amarelo', '2020-07-22', 'Macho');
INSERT INTO pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo) VALUES (6, 'Nina', 'Gato', 'Maine Coon', 'Preto', '2021-09-05', 'Fêmea');
INSERT INTO pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo) VALUES (7, 'Thor', 'Cachorro', 'Bulldog', 'Branco e Marrom', '2018-12-18', 'Macho');
INSERT INTO pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo) VALUES (8, 'Kiwi', 'Gato', 'Ragdoll', 'Cinza e Branco', '2022-04-30', 'Fêmea');
INSERT INTO pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo) VALUES (9, 'Simba', 'Cachorro', 'Golden Retriever', 'Dourado', '2020-05-08', 'Macho');
INSERT INTO pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo) VALUES (10, 'Jade', 'Gato', 'Bengal', 'Marrom e Preto', '2021-08-12', 'Fêmea');

Select * from pet

-- Exclusão #1 Extra:

delete from pet where sexo like 'Macho'

Select * from pet

-- Exclusão #2 Extra:

delete from pet where nome like '%a%'

Select * from pet

-- Exclusão #3 Extra:

delete from pet

Select * from pet