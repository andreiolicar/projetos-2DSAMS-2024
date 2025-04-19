-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/04/2025 às 21:06
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
-- Banco de dados: `bd_empresa`
--

create database `bd_empresa`;
use `bd_empresa`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `Cod_Fornecedor` int(11) NOT NULL,
  `Razao_Social` varchar(70) NOT NULL,
  `Nome_Fantasia` varchar(70) NOT NULL,
  `CNPJ` varchar(20) NOT NULL,
  `Endereco` varchar(50) NOT NULL,
  `Num` varchar(7) NOT NULL,
  `Bairro` varchar(25) NOT NULL,
  `Cidade` varchar(25) NOT NULL,
  `Fone` varchar(18) NOT NULL,
  `Nome_Contato` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Site` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fornecedores`
--

INSERT INTO `fornecedores` (`Cod_Fornecedor`, `Razao_Social`, `Nome_Fantasia`, `CNPJ`, `Endereco`, `Num`, `Bairro`, `Cidade`, `Fone`, `Nome_Contato`, `Email`, `Site`) VALUES
(1, 'Esporte Total Brasil Ltda', 'Action Sports', '12.345.678/0001-90', 'Av. dos Atletas', '500', 'Vila Olímpica', 'São Paulo', '(11) 5555-1234', 'Sr. João Silva', 'joaosilva@actionsports.com.br', 'actionsports.com.br'),
(2, 'Moda Esportiva Nacional S.A', 'Vigor Sport', '98.765.432/0001-21', 'Rua dos Campeões', '123', 'Jardim Esportivo', 'Rio de Janeiro', '(21) 3333-9876', 'Sra. Maria Souza', 'mariasouza@vigorsport.com.br', 'vigorsport.com.br'),
(3, 'Calçados e Acessórios Sport Ltda', 'Velocita Shoes', '23.456.789/0001-52', 'Av. da Corrida', '789', 'Bairro do Atleta', 'Belo Horizonte', '(31) 2222-4567', 'Sr. Carlos Pereira', 'carlospereira@velocitashoes.com.br', 'velocitashoes.com.br'),
(4, 'Equipamentos Esportivos Premium S.A', 'Apex Gear', '54.321.678/0001-83', 'Rua do Desempenho', '456', 'Zona Esportiva', 'Porto Alegre', '(51) 4444-7890', 'Sra. Ana Rodrigues', 'anarodrigues@apexgear.com.br', 'apexgear.com.br'),
(5, 'Confecções Esportivas Brasil Ltda.', 'Dynamic Wear', '67.890.123/0001-14', 'Av. dos Esportes', '900', 'Centro Olímpico', 'Salvador', '(71) 6666-1234', 'Sr. Pedro Santos', 'pedrosantos@dynamicwear.com.br', 'dynamicwear.com.br'),
(6, 'Artigos Esportivos do Norte S.A', 'Amazon Sport', '89.012.345/0001-45', 'Rua dos Jogos', '321', 'Parque Esportivo', 'Manaus', '(92) 8888-9876', 'Sra. Laura Oliveira', 'lauraoliveira@amazonsport.com.br', 'amazonsport.com.br'),
(7, 'Esportes Radicais e Aventura Ltda', 'Xtreme Zone', '01.234.567/0001-76', 'Av. da Aventura', '654', 'Bairro Radical', 'Recife', '(81) 7777-4567', 'Sr. Bruno Costa', 'brunocosta@xtremezone.com.br', 'xtremezone.com.br'),
(8, 'Nutrição e Suplementos Esportivos S.A', 'Power Fuel', '34.567.890/0001-07', 'Rua da Energia', '1000', 'Zona Fitness', 'Curitiba', '(41) 9999-7890', 'Sra. Juliana Almeida', 'julianaalmeida@powerfuel.com.br', 'powerfuel.com.br'),
(9, 'Acessórios Esportivos do Centro-Oeste Ltda', 'Central Sport', '56.789.012/0001-38', 'Av. dos Campeonatos', '800', 'Vila dos Atletas', 'Brasília', '(61) 1111-1234', 'Sr. Gustavo Rocha', 'gustavorocha@centralsport.com.br', 'centralsport.com.br'),
(10, 'Esportes Aquáticos Brasil S.A', 'Aqua Sport', '78.901.234/0001-69', 'Rua das Piscinas', '200', 'Bairro Aquático', 'Fortaleza', '(85) 2222-9876', 'Sra. Fernanda Nunes', 'fernandanunes@aquasport.com.br', 'aquasport.com.br');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `Cod_Produto` int(11) NOT NULL,
  `Descricao` varchar(50) NOT NULL,
  `Unidade` varchar(2) NOT NULL,
  `Qtde_Estoque` double NOT NULL,
  `Caracteristicas` varchar(50) NOT NULL,
  `Cod_Fornecedor` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`Cod_Produto`, `Descricao`, `Unidade`, `Qtde_Estoque`, `Caracteristicas`, `Cod_Fornecedor`) VALUES
(1, 'Bola de Futebol', 'un', 50, 'Tamanho 5, couro sintético', 1),
(2, 'Chuteira', 'pr', 80, 'Tamanho 42, grama sintética', 2),
(3, 'Camiseta de Time', 'un', 120, 'Tamanho M, algodão', 3),
(4, 'Calção de Jogo', 'un', 100, 'Tamanho G, poliéster', 4),
(5, 'Meias de Futebol', 'pr', 150, 'Tamanho único, cano alto', 5),
(6, 'Luvas de Goleiro', 'pr', 30, 'Tamanho 10, profissional', 6),
(7, 'Caneleira', 'pr', 60, 'Tamanho M, com proteção extra', 7),
(8, 'Bomba de Ar', 'un', 20, 'Com bico universal', 8),
(9, 'Rede de Gol', 'un', 10, 'Fio de nylon, alta resistência', 9),
(10, 'Apito de Árbitro', 'un', 25, 'Com cordão e som potente', 10),
(11, 'Cronômetro', 'un', 15, 'Digital, com memória', 1),
(12, 'Cones de Treinamento', 'un', 40, 'Kit com 10 unidades, cores sortidas', 4),
(13, 'Escada de Agilidade', 'un', 5, '6 metros, ajustável', 6),
(14, 'Mini Barreira', 'un', 30, 'Kit com 5 unidades, altura regulável', 10),
(15, 'Kit de Marcador de Campo', 'un', 8, 'Com 10 unidades, cores vibrantes', 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`Cod_Fornecedor`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`Cod_Produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `Cod_Fornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `Cod_Produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
