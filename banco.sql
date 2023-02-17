-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/02/2023 às 02:17
-- Versão do servidor: 10.4.27-MariaDB
-- Versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `contas`
--

CREATE TABLE `contas` (
  `ID_contas` int(11) NOT NULL,
  `ID_pessoas` int(11) NOT NULL,
  `agencia` int(11) DEFAULT NULL,
  `saldo` decimal(7,2) DEFAULT NULL,
  `limite_credito` decimal(7,2) DEFAULT NULL,
  `juros` decimal(7,2) DEFAULT NULL,
  `cesta_de_servicos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contas`
--

INSERT INTO `contas` (`ID_contas`, `ID_pessoas`, `agencia`, `saldo`, `limite_credito`, `juros`, `cesta_de_servicos`) VALUES
(1, 1, 1, '50000.00', '20000.00', '2.00', 'Van Gogh'),
(2, 2, 1, '1320.00', '2000.00', '4.75', 'Serviços Essenciais'),
(3, 3, 1, '2640.00', '5000.00', '3.00', 'Padronizado III'),
(4, 4, 1, '5000.00', '0.00', '0.00', 'Padronizado I'),
(5, 5, 1, '1320.00', '0.00', '0.00', 'Padronizado I'),
(6, 6, 1, '660.00', '0.00', '0.00', 'Salário'),
(7, 7, 1, '10000.00', '2500.00', '4.00', 'Padronizado II'),
(8, 8, 1, '13200.00', '4000.00', '2.50', 'Van Gogh'),
(9, 9, 1, '660.00', '1000.00', '5.00', 'Salário'),
(10, 10, 1, '1320.00', '0.00', '0.00', 'Serviços Essenciais');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `ID_pessoas` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cpf` bigint(20) DEFAULT NULL,
  `telefone` bigint(20) DEFAULT NULL,
  `data_de_nascimento` date DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pessoas`
--

INSERT INTO `pessoas` (`ID_pessoas`, `nome`, `cpf`, `telefone`, `data_de_nascimento`, `sexo`, `endereco`) VALUES
(1, 'Henry Juan Lorenzo Gonçalves', 95845455901, 84984406152, '1952-02-16', 'M', 'Rua Cícera da Cruz de Góis, 770, Lagoa Azul, Natal, RN'),
(2, 'Aurora Pietra Cecília Lima', 70687853281, 69991908187, '2000-01-25', 'F', 'Rua Raimundo Gonzaga Pinheiro, 135, Liberdade, Porto Velho, RO'),
(3, 'Márcio Márcio Jorge Oliveira', 11622486455, 84994657557, '1984-01-23', 'M', 'Rua Marechal Hermes, 278, Barrocas, Mossoró, RN'),
(4, 'Guilherme Nelson Barbosa', 64777422410, 84986346932, '1973-01-12', 'M', 'Rua Lagoa de Patos, 580, Potengi, Natal, RN'),
(5, 'Vera Patrícia Eliane Dias', 63322473554, 84982528668, '1970-02-04', 'F', 'Avenida Augusto Severo, 193, Centro, Mossoró, RN'),
(6, 'Malu Aurora Elaine Almada', 55899799358, 86996716364, '1968-02-02', 'F', 'Quadra AE, 337, Gurupi, Teresina, PI'),
(7, 'Roberto Caleb Martins', 73906782166, 95994125666, '1952-01-26', 'M', 'Rua Tia Joaca, 600, Caimbé, Boa Vista, RR'),
(8, 'Kaique Noah Gustavo Rezende', 69921384481, 68994739607, '1982-02-07', 'M', 'Travessa Joaquim Chaves, 926, Morada do Sol, Rio Branco, AC'),
(9, 'Hugo Nicolas Silveira', 45692912287, 92983878947, '2001-02-13', 'M', 'Rua Pedra Azul, 765, Tancredo Neves, Manaus, AM'),
(10, 'Kamilly Daiane Márcia Bernardes', 14424246809, 68988762846, '1980-02-02', 'F', 'Rua Baguari, 745, Taquarí, Rio Branco, AC');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `contas`
--
ALTER TABLE `contas`
  ADD PRIMARY KEY (`ID_contas`),
  ADD KEY `ID_pessoa` (`ID_pessoas`);

--
-- Índices de tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`ID_pessoas`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contas`
--
ALTER TABLE `contas`
  MODIFY `ID_contas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `ID_pessoas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `contas`
--
ALTER TABLE `contas`
  ADD CONSTRAINT `contas_ibfk_1` FOREIGN KEY (`ID_pessoas`) REFERENCES `pessoas` (`ID_pessoas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
