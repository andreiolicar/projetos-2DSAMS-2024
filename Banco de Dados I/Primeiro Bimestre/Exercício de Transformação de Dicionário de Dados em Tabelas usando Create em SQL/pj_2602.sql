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
Nascimento datetime, -- criando um campo "Nascimento" do tipo "datetime"
Sexo varchar(9)-- criando um campo "Sexo" do tipo "varchar(9)"
);

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
DataAdmissao datetime, -- criando um campo "DataAdmissao" do tipo "datetime"
DataCadastro datetime, -- criando um campo "DataCadastro" do tipo "datetime"
Sexo char(1) -- criando um campo "Sexo" do tipo "char(1)"
);

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