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
-- Banco de dados: `detran-condutores`
--
create database `detran-condutores`
use `detran-condutores`

-- --------------------------------------------------------

--
-- Estrutura para tabela `condutor`
--

CREATE TABLE `condutor` (
  `id_condutor` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `data_nascimento` date NOT NULL,
  `numero_carteira` varchar(20) NOT NULL,
  `placa_veiculo` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `condutor`
--

INSERT INTO `condutor` (`id_condutor`, `nome`, `cpf`, `data_nascimento`, `numero_carteira`, `placa_veiculo`) VALUES
(1, 'Ana Silva', '123.456.789-01', '1990-05-20', '1234567890', 'ABC1234'),
(2, 'Bruno Oliveira', '234.567.890-12', '1985-10-15', '2345678901', 'DEF5678'),
(3, 'Carla Rodrigues', '345.678.901-23', '1992-03-01', '3456789012', 'GHI9012'),
(4, 'Daniel Souza', '456.789.012-34', '1978-12-10', '4567890123', 'JKL3456'),
(5, 'Elisa Pereira', '567.890.123-45', '1995-08-05', '5678901234', 'MNO7890'),
(6, 'Fábio Costa', '678.901.234-56', '1982-06-25', '6789012345', 'PQR2345'),
(7, 'Gabriela Martins', '789.012.345-67', '1998-01-11', '7890123456', 'STU6789'),
(8, 'Henrique Fernandes', '890.123.456-78', '1970-09-30', '8901234567', 'VWX0123'),
(9, 'Isabela Gonçalves', '901.234.567-89', '1993-04-18', '9012345678', 'YZA4567'),
(10, 'João Alves', '012.345.678-90', '1988-07-08', '0123456789', 'BCD8901');

-- --------------------------------------------------------

--
-- Estrutura para tabela `marca_veiculo`
--

CREATE TABLE `marca_veiculo` (
  `id_marca` int(11) NOT NULL,
  `nome_marca` varchar(30) NOT NULL,
  `pais_origem` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `marca_veiculo`
--

INSERT INTO `marca_veiculo` (`id_marca`, `nome_marca`, `pais_origem`) VALUES
(1, 'Fiat', 'Itália'),
(2, 'Volkswagen', 'Alemanha'),
(3, 'Toyota', 'Japão');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(8) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `id_marca` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `modelo`, `id_marca`) VALUES
('ABC1234', 'Palio', 1),
('DEF5678', 'Gol', 2),
('GHI9012', 'Corolla', 3),
('JKL3456', 'Uno', 1),
('MNO7890', 'Fox', 2),
('PQR2345', 'Hilux', 3),
('STU6789', 'Siena', 1),
('VWX0123', 'Voyage', 2),
('YZA4567', 'Yaris', 3),
('BCD8901', 'Strada', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `condutor`
--
ALTER TABLE `condutor`
  ADD PRIMARY KEY (`id_condutor`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `numero_carteira` (`numero_carteira`);

--
-- Índices de tabela `marca_veiculo`
--
ALTER TABLE `marca_veiculo`
  ADD PRIMARY KEY (`id_marca`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `condutor`
--
ALTER TABLE `condutor`
  MODIFY `id_condutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `marca_veiculo`
--
ALTER TABLE `marca_veiculo`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
