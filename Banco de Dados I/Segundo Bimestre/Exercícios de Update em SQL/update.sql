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

-- Atualizações

-- Atualização #1
update Categoria set Descricao = 'Cheeses' where Descricao like 'Queijo'; -- Ajuste de 'Chesses' para 'Queijo'
select * from Categoria;

-- Atualização #2
update Categoria set Nome_Categoria = 'Confeitos' where Nome_Categoria like 'Confections';
select * from Categoria;

-- Atualização #3
update Categoria set Descricao = 'Peixes' where Cod_Categoria = 8;
select * from Categoria;

-- Atualização #4
update Territorio set Territoriodescricao = 'Nova Iorque' where Territoriodescricao like 'New York';
select * from Territorio;

-- Atualização #5
update Territorio set Cod_Regiao = 22 where Cod_Regiao = 2;
select * from Territorio;

-- Atualização #6
update Territorio set Cod_Regiao = 9 where Cod_Territorio < 3000;
select * from Territorio;

-- Atualização #7 
update Territorio set Territoriodescricao = 'São Francisco' where Territoriodescricao = 'San Francisco';
select * from Territorio;

-- Atualização #8
update Envio set Cidade = 'Leão' where Cidade = 'Lyon';
select * from Envio;

-- Atualização #9
update Envio set Pais = 'Suécia' where Pais = 'Switzerland'
select * from Envio;

-- Atualização #10
update Envio set Regiao = 'Nada' where Regiao is null;
select * from Envio;

-- Atualização #11
update Envio set NomeNavio = 'Canarinho' where NomeNavio like 'Hanari Carnes';
select * from Envio;

-- Atualização #12
update Envio set Frete = 200 where Frete >= 100;
select * from Envio;

-- Atualização #13
update Envio set Regiao = 'Norte' where Regiao = 'Sudeste';
select * from Envio;

-- Extra

-- tabela funcionarios
create table funcionarios (
    id int primary key identity,
    nome varchar(100),
    cargo varchar(50),
    salario decimal(10, 2)
);

-- inserindo dados na tabela
Insert Into funcionarios (nome, cargo, salario) Values ('Ana Silva', 'Analista de Sistemas', 4500.00);
Insert Into funcionarios (nome, cargo, salario) Values ('Carlos Souza', 'Desenvolvedor', 5000.00);
Insert Into funcionarios (nome, cargo, salario) Values ('Mariana Oliveira', 'Gerente de TI', 7000.00);
Insert Into funcionarios (nome, cargo, salario) Values ('Lucas Pereira', 'Coordenador de Projetos', 6500.00);
Insert Into funcionarios (nome, cargo, salario) Values ('Juliana Costa', 'Assistente Administrativo', 3000.00);
Insert Into funcionarios (nome, cargo, salario) Values ('Roberto Santos', 'Diretor de Marketing', 12000.00);
Insert Into funcionarios (nome, cargo, salario) Values ('Fernanda Almeida', 'Analista de Suporte', 3500.00);
Insert Into funcionarios (nome, cargo, salario) Values ('Pedro Lima', 'Engenheiro de Software', 6000.00);
Insert Into funcionarios (nome, cargo, salario) Values ('Gabriela Rocha', 'Especialista em Dados', 7500.00);
Insert Into funcionarios (nome, cargo, salario) Values ('José Martins', 'Consultor de TI', 5500.00);

select * from funcionarios;

-- Atualizações

-- Atualização #1
update funcionarios set salario = 10000.00 where salario < 5500
select * from funcionarios;

-- Atualização #2
update funcionarios set cargo = 'Diretor de TI' where cargo like 'Gerente de TI'
select * from funcionarios;

-- Atualização #3
update funcionarios set cargo = 'Demitido', salario = 0 where salario > 10000
select * from funcionarios;