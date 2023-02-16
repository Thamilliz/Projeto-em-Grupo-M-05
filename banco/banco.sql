-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Fev-2023 às 15:44
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Estrutura da tabela `contas`
--

CREATE TABLE `contas` (
  `ID_contas` int(11) NOT NULL,
  `ID_pessoas` int(11) NOT NULL,
  `agencia` int(11) DEFAULT NULL,
  `saldo` double(7,2) DEFAULT NULL,
  `limite_credito` double(7,2) DEFAULT NULL,
  `juros` double(4,2) DEFAULT NULL,
  `cesta_de_servico` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `ID_pessoas` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cpf` bigint(20) DEFAULT NULL,
  `telefone` bigint(20) DEFAULT NULL,
  `data_de_nascimento` date DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pessoas`
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
-- Índices para tabela `contas`
--
ALTER TABLE `contas`
  ADD PRIMARY KEY (`ID_contas`),
  ADD KEY `ID_pessoa` (`ID_pessoas`);

--
-- Índices para tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`ID_pessoas`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contas`
--
ALTER TABLE `contas`
  MODIFY `ID_contas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `ID_pessoas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `contas`
--
ALTER TABLE `contas`
  ADD CONSTRAINT `contas_ibfk_1` FOREIGN KEY (`ID_pessoas`) REFERENCES `pessoas` (`ID_pessoas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
