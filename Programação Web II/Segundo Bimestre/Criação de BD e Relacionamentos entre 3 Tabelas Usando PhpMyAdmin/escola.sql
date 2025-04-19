-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/04/2025 às 02:47
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola`
--
create database `escola`
use `escola`
-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `matricula` varchar(5) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `codcurso` char(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`matricula`, `nome`, `endereco`, `cidade`, `codcurso`) VALUES
('20001', 'Lucas Oliveira', 'Av. Brasil, 1000', 'São Paulo', '04'),
('20002', 'Fernanda Costa', 'Rua das Flores, 22', 'Rio de Janeiro', '04'),
('20003', 'Gabriel Pereira', 'Rua da Praia, 123', 'Santos', '04'),
('20004', 'Amanda Silva', 'Av. Lins de Vasconcelos, 456', 'Campinas', '04'),
('20005', 'Rafael Rodrigues', 'Rua Augusta, 789', 'Belo Horizonte', '04'),
('20006', 'Juliana Souza', 'Rua da Consolação, 1011', 'São Paulo', '05'),
('20007', 'Pedro Henrique Alves', 'Av. Paulista, 1213', 'São Paulo', '05'),
('20008', 'Letícia Oliveira Santos', 'Rua do Sol, 1415', 'Salvador', '05'),
('20009', 'Vinícius Fernandes', 'Rua das Orquídeas, 1617', 'Curitiba', '05'),
('20010', 'Beatriz Gonçalves', 'Rua dos Girassóis, 1819', 'Porto Alegre', '05'),
('20011', 'Guilherme Lima', 'Av. Dom Pedro I, 2021', 'São Bernardo do Campo', '06'),
('20012', 'Bruna Marques', 'Rua da Paz, 2223', 'Santo André', '06'),
('20013', 'Thiago Carvalho', 'Rua da Saudade, 2425', 'Osasco', '06'),
('20014', 'Natália Ribeiro', 'Rua da Esperança, 2627', 'Jundiaí', '06'),
('20015', 'Marcelo Rocha', 'Av. das Nações Unidas, 2829', 'São Paulo', '06'),
('20017', 'Eduardo Martins', 'Rua da Indústria, 3233', 'Sorocaba', '07'),
('20018', 'Carolina Barbosa', 'Rua da Lapa, 3435', 'São Paulo', '07'),
('20019', 'Diego Azevedo', 'Rua do Aterro, 3637', 'Niterói', '07'),
('20020', 'Isabela Vargas', 'Av. Atlântica, 3839', 'Rio de Janeiro', '07'),
('20016', 'Camila Castro', 'Rua do Comércio, 3031', 'Ribeirão Preto', '07');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `codcurso` char(2) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `coddisc1` char(2) NOT NULL,
  `coddisc2` char(2) NOT NULL,
  `coddisc3` char(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`codcurso`, `nome`, `coddisc1`, `coddisc2`, `coddisc3`) VALUES
('04', 'Desenvolvedor Full Stack	', '41', '42', '43'),
('05', 'Analista de Sistemas	', '44', '45', '46'),
('06', 'Gestão de TI	', '47', '48', '49'),
('07', 'Ciência de Dados	', '50', '41', '42');

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `coddisciplina` char(2) NOT NULL,
  `nomedisciplina` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disciplinas`
--

INSERT INTO `disciplinas` (`coddisciplina`, `nomedisciplina`) VALUES
('41', 'Matemática para Computação'),
('42', 'Introdução à IA'),
('43', 'Redes de Computadores'),
('44', 'Sistemas Operacionais'),
('45', 'Análise de Algoritmos'),
('46', 'Engenharia de Requisitos'),
('47', 'Teste de Software'),
('48', 'Segurança da Informação'),
('49', 'Desenvolvimento Mobile'),
('50', 'Computação Humanizada');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`matricula`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`codcurso`);

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`coddisciplina`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
