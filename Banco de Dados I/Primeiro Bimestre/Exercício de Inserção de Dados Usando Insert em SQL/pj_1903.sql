-- criando um bd "ExercBD01"
create database ExercBD01

-- abrindo um bd "ExercBD01"
use ExercBD01

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

-- criando um bd "ExercBD02"
create database ExercBD02

-- abrindo um bd "ExercBD02"
use ExercBD02

-- criando uma tabela "departamento"
create table departamento (
CodFunc int, -- criando um campo "CodFunc" do tipo "int"
NomeDepto varchar(50) -- criando um campo "NomeDepto" do tipo "varchar(50)"
);

-- criando uma tabela
create table funcionario (
CodFunc int, -- criando um campo "CodFunc" do tipo "int"
NomeFunc varchar(50), -- criando um campo "NomeFunc" do tipo "varchar(50)"
CodDepto int, -- criando um campo "CodDepto" do tipo "int"
Ramal int NULL, -- criando um campo "Ramal" do tipo "int"
Salario float, -- criando um campo "Salario" do tipo "float"
DataAdmissao date, -- criando um campo "DataAdmissao" do tipo "datetime"
DataCadastro date, -- criando um campo "DataCadastro" do tipo "datetime"
Sexo char(1) -- criando um campo "Sexo" do tipo "char(1)"
);

-- Inserindo 5 departamentos diferentes
INSERT INTO departamento (CodFunc, NomeDepto) VALUES (1, 'Recursos Humanos');
INSERT INTO departamento (CodFunc, NomeDepto) VALUES (2, 'Tecnologia da Informação');
INSERT INTO departamento (CodFunc, NomeDepto) VALUES (3, 'Financeiro');
INSERT INTO departamento (CodFunc, NomeDepto) VALUES (4, 'Marketing');
INSERT INTO departamento (CodFunc, NomeDepto) VALUES (5, 'Vendas');

-- Inserindo 10 funcionários diferentes com datas de cadastro aleatórias
INSERT INTO funcionario (CodFunc, NomeFunc, CodDepto, Ramal, Salario, DataAdmissao, DataCadastro, Sexo) VALUES (1, 'Ana Silva', 1, 101, 5000.00, '2020-03-15', '2023-10-26', 'F');
INSERT INTO funcionario (CodFunc, NomeFunc, CodDepto, Ramal, Salario, DataAdmissao, DataCadastro, Sexo) VALUES (2, 'João Pereira', 2, 201, 6000.00, '2019-05-20', '2023-10-27', 'M');
INSERT INTO funcionario (CodFunc, NomeFunc, CodDepto, Ramal, Salario, DataAdmissao, DataCadastro, Sexo) VALUES (3, 'Maria Souza', 1, 102, 5500.00, '2021-11-01', '2023-10-28', 'F');
INSERT INTO funcionario (CodFunc, NomeFunc, CodDepto, Ramal, Salario, DataAdmissao, DataCadastro, Sexo) VALUES (4, 'Carlos Oliveira', 3, 301, 7000.00, '2022-01-10', '2023-10-29', 'M');
INSERT INTO funcionario (CodFunc, NomeFunc, CodDepto, Ramal, Salario, DataAdmissao, DataCadastro, Sexo) VALUES (5, 'Laura Rodrigues', 2, 202, 6500.00, '2020-07-22', '2023-10-30', 'F');
INSERT INTO funcionario (CodFunc, NomeFunc, CodDepto, Ramal, Salario, DataAdmissao, DataCadastro, Sexo) VALUES (6, 'Pedro Santos', 4, 401, 4800.00, '2021-09-05', '2023-10-31', 'M');
INSERT INTO funcionario (CodFunc, NomeFunc, CodDepto, Ramal, Salario, DataAdmissao, DataCadastro, Sexo) VALUES (7, 'Sofia Almeida', 3, 302, 7200.00, '2018-12-18', '2023-11-01', 'F');
INSERT INTO funcionario (CodFunc, NomeFunc, CodDepto, Ramal, Salario, DataAdmissao, DataCadastro, Sexo) VALUES (8, 'Lucas Costa', 5, 501, 5200.00, '2022-04-30', '2023-11-02', 'M');
INSERT INTO funcionario (CodFunc, NomeFunc, CodDepto, Ramal, Salario, DataAdmissao, DataCadastro, Sexo) VALUES (9, 'Isabela Fernandes', 4, 402, 5800.00, '2020-05-08', '2023-11-03', 'F');
INSERT INTO funcionario (CodFunc, NomeFunc, CodDepto, Ramal, Salario, DataAdmissao, DataCadastro, Sexo) VALUES (10, 'Rafael Gonçalves', 5, 502, 6300.00, '2021-08-12', '2023-11-04', 'M');

Select * from departamento

Select * from funcionario
	
-- criando um bd "ExercBD03"
create database ExercBD03

-- abrindo um bd "ExercBD03"
use ExercBD03

-- criando uma tabela
create table ProdutoPapelaria (
CodProduto int primary key, -- criando um campo "CodProduto" do tipo "int" sendo "primary key"
NomeProduto varchar(100) not null, -- criando um campo "NomeProduto" do tipo "varchar(100)" sendo "not null"
DescProduto text, -- criando um campo "DescProduto" do tipo "text"
CategProduto int not null, -- criando um campo "CategProduto" do tipo "int" sendo "not null"
PrecoProduto float not null check(PrecoProduto > 0), -- criando um campo "PrecoProduto" do tipo "float" sendo "not null" e com um check para (precoProduto > 0)
QntdEstoque int not null check(QntdEstoque >= 0) -- criando um campo "QntdEstoque" do tipo "int" sendo "not null" e com um check para (QntdEstoque >= 0)
)

-- criando uma tabela
create table FuncionariosEscola (
IdFuncionario int identity primary key, -- criando um campo "IdFuncionario" do tipo "int identity" sendo "primary key"
NomeFuncionario varchar(100) not null, -- criando um campo "NomeFuncionario" do tipo "varchar(100)" sendo "not null"
CargoFuncionario int not null, -- criando um campo "CargoFuncionario" do tipo "int" sendo "not null"
DataInicio date, -- criando um campo "DataInicio" do tipo "date"
SalarFuncionario decimal not null check(SalarFuncionario > 0), -- criando um campo "SalarFuncionario" do tipo "decimal" sendo "not null" e com um check para (SalarFuncionario > 0)
DepFuncionario int not null -- criando um campo "DepFuncionario" do tipo "int" sendo "not null"
)

-- criando uma tabela
create table FornecedoresTecido (
IdFornecedor int identity primary key, -- criando um campo "IdFornecedor" do tipo "int identity" sendo "primary key"
NomeFornecedor varchar(100) not null, -- criando um campo "NomeFornecedor" do tipo "varchar(100)"
CnpjFornecedor varchar(18) not null unique, -- criando um campo "CnpjFornecedor" do tipo "varchar(18)" sendo "not null" e "unique"
EndeFornecedor varchar(100) not null, -- criando um campo "EndeFornecedor" do tipo "varchar(100)" sendo "not null"
TipoTecido int not null -- criando um campo "TipoTecido" do tipo "int" sendo "not null"
)

-- criando uma tabela
create table DepartamentosEmpresa (
IdDepartamento int identity primary key, -- criando um campo "IdDepartamento" do tipo "int identity" sendo "primary key"
NomeDepartamento varchar(100) not null, -- criando um campo "NomeDepartamento" do tipo "varchar(100)" sendo "not null"
GerenDepartamentos varchar(100) not null, -- criando um campo "GerenDepartamento" do tipo "varchar(100)" sendo "not null"
NumFuncionarios int not null, -- criando um campo "NumFuncionarios" do tipo "int" sendo "not null"
OrcaDepartamento decimal, -- criando um campo "OrcaDepartamento" do tipo "decimal" sendo "not null"
LocalDepartamento varchar(100) not null -- criando um campo "LocalDepartamento" do tipo "varchar(100)" sendo "not null"
)

-- criando um bd "ExercExtra"
create database ExercExtra

-- abrindo um bd "ExercExtra"
use ExercExtra

-- criando uma tabela "AlunoEtec"
create table AlunoEtec(
NomeAluno varchar(100) not null, -- criando um campo "NomeAluno" do tipo "varchar(100)" sendo "not null"
NascimentoAluno date, -- criando um campo "NascimentoAluno" do tipo "date"
CursoAluno varchar(50) not null, -- criando um campo "CursoAluno" do tipo "varchar(50)" sendo "not null"
AnoCurso char(1), -- criando um campo "AnoCurso" do tipo "char(1)"
RMAluno varchar(5) primary key, -- criando um campo "RMAluno" do tipo "varchar(5)"
PeriodoAula varchar(10) not null -- criando um campo "PeriodoAula" do tipo "varchar(5)"
)

-- Inserindo 10 alunos na tabela "AlunoEtec"
INSERT INTO AlunoEtec (NomeAluno, NascimentoAluno, CursoAluno, AnoCurso, RMAluno, PeriodoAula) VALUES ('Ana Clara Silva', '2005-03-15', 'Informática', '3', '12345', 'Manhã');
INSERT INTO AlunoEtec (NomeAluno, NascimentoAluno, CursoAluno, AnoCurso, RMAluno, PeriodoAula) VALUES ('João Pedro Souza', '2004-05-20', 'Administração', '2', '54321', 'Tarde');
INSERT INTO AlunoEtec (NomeAluno, NascimentoAluno, CursoAluno, AnoCurso, RMAluno, PeriodoAula) VALUES ('Maria Eduarda Oliveira', '2006-11-01', 'Logística', '1', '67890', 'Noite');
INSERT INTO AlunoEtec (NomeAluno, NascimentoAluno, CursoAluno, AnoCurso, RMAluno, PeriodoAula) VALUES ('Carlos Henrique Rodrigues', '2003-01-10', 'Recursos Humanos', '4', '09876', 'Manhã');
INSERT INTO AlunoEtec (NomeAluno, NascimentoAluno, CursoAluno, AnoCurso, RMAluno, PeriodoAula) VALUES ('Laura Fernandes Santos', '2005-07-22', 'Desenvolvimento de Sistemas', '3', '13579', 'Tarde');
INSERT INTO AlunoEtec (NomeAluno, NascimentoAluno, CursoAluno, AnoCurso, RMAluno, PeriodoAula) VALUES ('Pedro Almeida Costa', '2004-09-05', 'Marketing', '2', '97531', 'Noite');
INSERT INTO AlunoEtec (NomeAluno, NascimentoAluno, CursoAluno, AnoCurso, RMAluno, PeriodoAula) VALUES ('Sofia Gonçalves Pereira', '2007-12-18', 'Enfermagem', '1', '24680', 'Manhã');
INSERT INTO AlunoEtec (NomeAluno, NascimentoAluno, CursoAluno, AnoCurso, RMAluno, PeriodoAula) VALUES ('Lucas Carvalho Lima', '2003-04-30', 'Edificações', '4', '08642', 'Tarde');
INSERT INTO AlunoEtec (NomeAluno, NascimentoAluno, CursoAluno, AnoCurso, RMAluno, PeriodoAula) VALUES ('Isabela Rocha Vieira', '2006-05-08', 'Química', '2', '11223', 'Noite');
INSERT INTO AlunoEtec (NomeAluno, NascimentoAluno, CursoAluno, AnoCurso, RMAluno, PeriodoAula) VALUES ('Rafael Barbosa Melo', '2005-08-12', 'Mecânica', '3', '32123', 'Manhã');

Select * from AlunoEtec