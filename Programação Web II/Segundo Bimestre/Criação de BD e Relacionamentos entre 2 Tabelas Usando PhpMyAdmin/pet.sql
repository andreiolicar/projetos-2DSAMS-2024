-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Abr-2025 às 20:11
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pet`
--

create database `pet`;
use `pet`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal`
--

CREATE TABLE `animal` (
  `id_animal` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `id_especie` int(11) NOT NULL,
  `raca` varchar(30) NOT NULL,
  `data_nascimento` date NOT NULL,
  `cor` varchar(30) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `peso` decimal(10,2) NOT NULL,
  `porte` varchar(10) NOT NULL,
  `observacoes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `animal`
--

INSERT INTO `animal` (`id_animal`, `nome`, `id_especie`, `raca`, `data_nascimento`, `cor`, `sexo`, `peso`, `porte`, `observacoes`) VALUES
(1, 'Rex', 1, 'Labrador Retriever', '2023-05-10', 'Amarelo', 'Macho', '33.00', 'Grande', 'Muito brincalhão e adora água.'),
(2, 'Luna', 2, 'Siamês', '2024-01-15', 'Creme com pontas escuras', 'Fêmea', '4.35', 'Médio', 'Calma e carinhosa.'),
(3, 'Piu-Piu', 3, 'Canário', '2024-08-20', 'Amarelo', 'Macho', '0.20', 'Pequeno', 'Canto melodioso.'),
(4, 'Nemo', 4, 'Peixe-Palhaço', '2024-11-01', 'Laranja e branco', 'Macho', '0.10', 'Pequeno', 'Vive em aquário de água salgada.'),
(5, 'Kaa', 5, 'Corn Snake', '2022-07-01', 'Laranja com padrões', 'Fêmea', '1.50', 'Médio', 'Docil e fácil de manusear.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `especies`
--

CREATE TABLE `especies` (
  `id_especie` int(11) NOT NULL,
  `nome_especie` varchar(50) NOT NULL,
  `observacoes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `especies`
--

INSERT INTO `especies` (`id_especie`, `nome_especie`, `observacoes`) VALUES
(1, 'Cachorro', 'Mamífero carnívoro da família Canidae, conhecido por sua domesticação e variedade de raças.'),
(2, 'Gato', 'Pequeno mamífero carnívoro da família Felidae, caracterizado por sua agilidade e hábitos independentes.'),
(3, 'Pássaro', 'Animal vertebrado endotérmico, caracterizado por penas, asas e capacidade de voar (na maioria das espécies).'),
(4, 'Peixe', 'Animal vertebrado aquático, com brânquias e barbatanas.'),
(5, 'Réptil', 'Animal vertebrado ectotérmico, com pele coberta por escamas ou placas.');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id_animal`);

--
-- Índices para tabela `especies`
--
ALTER TABLE `especies`
  ADD PRIMARY KEY (`id_especie`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `animal`
--
ALTER TABLE `animal`
  MODIFY `id_animal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `especies`
--
ALTER TABLE `especies`
  MODIFY `id_especie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
