 localhost  -   info
 
-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tempo de Geração: Jul 25, 2016 as 10:51 PM
-- Versão do Servidor: 5.5.8
-- Versão do PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Banco de Dados: `info`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `elements`
--

CREATE TABLE IF NOT EXISTS `elements` (
  `element_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `title_slug` varchar(64) DEFAULT NULL,
  `short_desc` varchar(160) DEFAULT NULL,
  `long_desc` varchar(520) DEFAULT NULL,
  `parent_element_id` int(11) DEFAULT NULL,
  `abuse_report` tinyint(1) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`element_id`),
  KEY `parent_element_id` (`parent_element_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35703 ;

--
-- Extraindo dados da tabela `elements`
--

INSERT INTO `elements` (`element_id`, `title`, `title_slug`, `short_desc`, `long_desc`, `parent_element_id`, `abuse_report`, `created_date`) VALUES
(1, 'APWiki', '', 'Informação para o seu sistema.', 'Através de uma poderosa API você pode consultar informações inseridas por todos os colaboradores rapidamente na APWiki. Faça o teste!', NULL, 0, '2016-07-20 21:23:03'),
(2, 'Tabuada', 'tabuada', 'Tabuada de Multiplicação', 'Tabuada para aprender a multiplicar', 1, 0, '0000-00-00 00:00:00'),
(16, 'Os múltiplos de 1', 'os-multiplos-de-1', 'Tabuada de múltiplos de um', 'Tabuada de múltiplos de um para aprender a multiplicar', 2, 1, '0000-00-00 00:00:00'),
(17, 'Quanto é um vezes um?', 'quanto-e-um-vezes-um', 'Um vezes um é igual a um', '1 x 1 = 1<br>Um vezes um é igual a um', 16, 0, '0000-00-00 00:00:00'),
(18, 'Quanto é um vezes dois?', 'quanto-e-um-vezes-dois', 'Um vezes dois é igual a dois', '1 x 2 = 2<br>Um vezes dois é igual a dois', 16, 0, '0000-00-00 00:00:00'),
(19, 'Quanto é um vezes três?', 'quanto-e-um-vezes-tres', 'Um vezes três é igual a três', '1 x 3 = 3<br>Um vezes três é igual a três', 16, 0, '0000-00-00 00:00:00'),
(20, 'Quanto é um vezes quatro?', 'quanto-e-um-vezes-quatro', 'Um vezes quatro é igual a quatro', '1 x 4 = 4<br>Um vezes quatro é igual a quatro', 16, 0, '0000-00-00 00:00:00'),
(21, 'Quanto é um vezes cinco?', 'quanto-e-um-vezes-cinco', 'Um vezes cinco é igual a cinco', '1 x 5 = 5<br>Um vezes cinco é igual a cinco', 16, 0, '0000-00-00 00:00:00'),
(22, 'Quanto é um vezes seis?', 'quanto-e-um-vezes-seis', 'Um vezes seis é igual a seis', '1 x 6 = 6<br>Um vezes seis é igual a seis', 16, 0, '0000-00-00 00:00:00'),
(23, 'Quanto é um vezes sete?', 'quanto-e-um-vezes-sete', 'Um vezes sete é igual a sete', '1 x 7 = 7<br>Um vezes sete é igual a sete', 16, 0, '0000-00-00 00:00:00'),
(24, 'Quanto é um vezes oito?', 'quanto-e-um-vezes-oito', 'Um vezes oito é igual a oito', '1 x 8 = 8<br>Um vezes oito é igual a oito', 16, 0, '0000-00-00 00:00:00'),
(25, 'Quanto é um vezes nove?', 'quanto-e-um-vezes-nove', 'Um vezes nove é igual a nove', '1 x 9 = 9<br>Um vezes nove é igual a nove', 16, 0, '0000-00-00 00:00:00'),
(26, 'Quanto é um vezes dez?', 'quanto-e-um-vezes-dez', 'Um vezes dez é igual a dez', '1 x 10 = 10<br>Um vezes dez é igual a dez', 16, 0, '0000-00-00 00:00:00'),
(27, 'Os múltiplos de 2', 'os-multiplos-de-2', 'Tabuada de múltiplos de dois', 'Tabuada de múltiplos de dois para aprender a multiplicar', 2, 1, '0000-00-00 00:00:00'),
(28, 'Quanto é dois vezes um?', 'quanto-e-dois-vezes-um', 'Dois vezes um é igual a dois', '2 x 1 = 2<br>Dois vezes um é igual a dois', 27, 0, '0000-00-00 00:00:00'),
(29, 'Quanto é dois vezes dois?', 'quanto-e-dois-vezes-dois', 'Dois vezes dois é igual a quatro', '2 x 2 = 4<br>Dois vezes dois é igual a quatro', 27, 0, '0000-00-00 00:00:00'),
(30, 'Quanto é dois vezes três?', 'quanto-e-dois-vezes-tres', 'Dois vezes três é igual a seis', '2 x 3 = 6<br>Dois vezes três é igual a seis', 27, 0, '0000-00-00 00:00:00'),
(31, 'Quanto é dois vezes quatro?', 'quanto-e-dois-vezes-quatro', 'Dois vezes quatro é igual a oito', '2 x 4 = 8<br>Dois vezes quatro é igual a oito', 27, 0, '0000-00-00 00:00:00'),
(32, 'Quanto é dois vezes cinco?', 'quanto-e-dois-vezes-cinco', 'Dois vezes cinco é igual a dez', '2 x 5 = 10<br>Dois vezes cinco é igual a dez', 27, 0, '0000-00-00 00:00:00'),
(33, 'Quanto é dois vezes seis?', 'quanto-e-dois-vezes-seis', 'Dois vezes seis é igual a doze', '2 x 6 = 12<br>Dois vezes seis é igual a doze', 27, 0, '0000-00-00 00:00:00'),
(34, 'Quanto é dois vezes sete?', 'quanto-e-dois-vezes-sete', 'Dois vezes sete é igual a quatorze', '2 x 7 = 14<br>Dois vezes sete é igual a quatorze', 27, 0, '0000-00-00 00:00:00'),
(35, 'Quanto é dois vezes oito?', 'quanto-e-dois-vezes-oito', 'Dois vezes oito é igual a dezesseis', '2 x 8 = 16<br>Dois vezes oito é igual a dezesseis', 27, 0, '0000-00-00 00:00:00'),
(36, 'Quanto é dois vezes nove?', 'quanto-e-dois-vezes-nove', 'Dois vezes nove é igual a dezoito', '2 x 9 = 18<br>Dois vezes nove é igual a dezoito', 27, 0, '0000-00-00 00:00:00'),
(37, 'Quanto é dois vezes dez?', 'quanto-e-dois-vezes-dez', 'Dois vezes dez é igual a vinte', '2 x 10 = 20<br>Dois vezes dez é igual a vinte', 27, 0, '0000-00-00 00:00:00'),
(38, 'Os múltiplos de 3', 'os-multiplos-de-3', 'Tabuada de múltiplos de três', 'Tabuada de múltiplos de três para aprender a multiplicar', 2, 1, '0000-00-00 00:00:00'),
(39, 'Quanto é três vezes um?', 'quanto-e-tres-vezes-um', 'Três vezes um é igual a três', '3 x 1 = 3<br>Três vezes um é igual a três', 38, 0, '0000-00-00 00:00:00'),
(40, 'Quanto é três vezes dois?', 'quanto-e-tres-vezes-dois', 'Três vezes dois é igual a seis', '3 x 2 = 6<br>Três vezes dois é igual a seis', 38, 0, '0000-00-00 00:00:00'),
(41, 'Quanto é três vezes três?', 'quanto-e-tres-vezes-tres', 'Três vezes três é igual a nove', '3 x 3 = 9<br>Três vezes três é igual a nove', 38, 0, '0000-00-00 00:00:00'),
(42, 'Quanto é três vezes quatro?', 'quanto-e-tres-vezes-quatro', 'Três vezes quatro é igual a doze', '3 x 4 = 12<br>Três vezes quatro é igual a doze', 38, 0, '0000-00-00 00:00:00'),
(43, 'Quanto é três vezes cinco?', 'quanto-e-tres-vezes-cinco', 'Três vezes cinco é igual a quinze', '3 x 5 = 15<br>Três vezes cinco é igual a quinze', 38, 0, '0000-00-00 00:00:00'),
(44, 'Quanto é três vezes seis?', 'quanto-e-tres-vezes-seis', 'Três vezes seis é igual a dezoito', '3 x 6 = 18<br>Três vezes seis é igual a dezoito', 38, 0, '0000-00-00 00:00:00'),
(45, 'Quanto é três vezes sete?', 'quanto-e-tres-vezes-sete', 'Três vezes sete é igual a vinte e um', '3 x 7 = 21<br>Três vezes sete é igual a vinte e um', 38, 0, '0000-00-00 00:00:00'),
(46, 'Quanto é três vezes oito?', 'quanto-e-tres-vezes-oito', 'Três vezes oito é igual a vinte e quatro', '3 x 8 = 24<br>Três vezes oito é igual a vinte e quatro', 38, 0, '0000-00-00 00:00:00'),
(47, 'Quanto é três vezes nove?', 'quanto-e-tres-vezes-nove', 'Três vezes nove é igual a vinte e sete', '3 x 9 = 27<br>Três vezes nove é igual a vinte e sete', 38, 0, '0000-00-00 00:00:00'),
(48, 'Quanto é três vezes dez?', 'quanto-e-tres-vezes-dez', 'Três vezes dez é igual a trinta', '3 x 10 = 30<br>Três vezes dez é igual a trinta', 38, 0, '0000-00-00 00:00:00'),
(49, 'Os múltiplos de 4', 'os-multiplos-de-4', 'Tabuada de múltiplos de quatro', 'Tabuada de múltiplos de quatro para aprender a multiplicar', 2, 1, '0000-00-00 00:00:00'),
(50, 'Quanto é quatro vezes um?', 'quanto-e-quatro-vezes-um', 'Quatro vezes um é igual a quatro', '4 x 1 = 4<br>Quatro vezes um é igual a quatro', 49, 0, '0000-00-00 00:00:00'),
(51, 'Quanto é quatro vezes dois?', 'quanto-e-quatro-vezes-dois', 'Quatro vezes dois é igual a oito', '4 x 2 = 8<br>Quatro vezes dois é igual a oito', 49, 0, '0000-00-00 00:00:00'),
(52, 'Quanto é quatro vezes três?', 'quanto-e-quatro-vezes-tres', 'Quatro vezes três é igual a doze', '4 x 3 = 12<br>Quatro vezes três é igual a doze', 49, 0, '0000-00-00 00:00:00'),
(53, 'Quanto é quatro vezes quatro?', 'quanto-e-quatro-vezes-quatro', 'Quatro vezes quatro é igual a dezesseis', '4 x 4 = 16<br>Quatro vezes quatro é igual a dezesseis', 49, 0, '0000-00-00 00:00:00'),
(54, 'Quanto é quatro vezes cinco?', 'quanto-e-quatro-vezes-cinco', 'Quatro vezes cinco é igual a vinte', '4 x 5 = 20<br>Quatro vezes cinco é igual a vinte', 49, 0, '0000-00-00 00:00:00'),
(55, 'Quanto é quatro vezes seis?', 'quanto-e-quatro-vezes-seis', 'Quatro vezes seis é igual a vinte e quatro', '4 x 6 = 24<br>Quatro vezes seis é igual a vinte e quatro', 49, 0, '0000-00-00 00:00:00'),
(56, 'Quanto é quatro vezes sete?', 'quanto-e-quatro-vezes-sete', 'Quatro vezes sete é igual a vinte e oito', '4 x 7 = 28<br>Quatro vezes sete é igual a vinte e oito', 49, 0, '0000-00-00 00:00:00'),
(57, 'Quanto é quatro vezes oito?', 'quanto-e-quatro-vezes-oito', 'Quatro vezes oito é igual a trinta e dois', '4 x 8 = 32<br>Quatro vezes oito é igual a trinta e dois', 49, 0, '0000-00-00 00:00:00'),
(58, 'Quanto é quatro vezes nove?', 'quanto-e-quatro-vezes-nove', 'Quatro vezes nove é igual a trinta e seis', '4 x 9 = 36<br>Quatro vezes nove é igual a trinta e seis', 49, 0, '0000-00-00 00:00:00'),
(59, 'Quanto é quatro vezes dez?', 'quanto-e-quatro-vezes-dez', 'Quatro vezes dez é igual a quarenta', '4 x 10 = 40<br>Quatro vezes dez é igual a quarenta', 49, 0, '0000-00-00 00:00:00'),
(60, 'Os múltiplos de 5', 'os-multiplos-de-5', 'Tabuada de múltiplos de cinco', 'Tabuada de múltiplos de cinco para aprender a multiplicar', 2, 1, '0000-00-00 00:00:00'),
(61, 'Quanto é cinco vezes um?', 'quanto-e-cinco-vezes-um', 'Cinco vezes um é igual a cinco', '5 x 1 = 5<br>Cinco vezes um é igual a cinco', 60, 0, '0000-00-00 00:00:00'),
(62, 'Quanto é cinco vezes dois?', 'quanto-e-cinco-vezes-dois', 'Cinco vezes dois é igual a dez', '5 x 2 = 10<br>Cinco vezes dois é igual a dez', 60, 0, '0000-00-00 00:00:00'),
(63, 'Quanto é cinco vezes três?', 'quanto-e-cinco-vezes-tres', 'Cinco vezes três é igual a quinze', '5 x 3 = 15<br>Cinco vezes três é igual a quinze', 60, 0, '0000-00-00 00:00:00'),
(64, 'Quanto é cinco vezes quatro?', 'quanto-e-cinco-vezes-quatro', 'Cinco vezes quatro é igual a vinte', '5 x 4 = 20<br>Cinco vezes quatro é igual a vinte', 60, 0, '0000-00-00 00:00:00'),
(65, 'Quanto é cinco vezes cinco?', 'quanto-e-cinco-vezes-cinco', 'Cinco vezes cinco é igual a vinte e cinco', '5 x 5 = 25<br>Cinco vezes cinco é igual a vinte e cinco', 60, 0, '0000-00-00 00:00:00'),
(66, 'Quanto é cinco vezes seis?', 'quanto-e-cinco-vezes-seis', 'Cinco vezes seis é igual a trinta', '5 x 6 = 30<br>Cinco vezes seis é igual a trinta', 60, 0, '0000-00-00 00:00:00'),
(67, 'Quanto é cinco vezes sete?', 'quanto-e-cinco-vezes-sete', 'Cinco vezes sete é igual a trinta e cinco', '5 x 7 = 35<br>Cinco vezes sete é igual a trinta e cinco', 60, 0, '0000-00-00 00:00:00'),
(68, 'Quanto é cinco vezes oito?', 'quanto-e-cinco-vezes-oito', 'Cinco vezes oito é igual a quarenta', '5 x 8 = 40<br>Cinco vezes oito é igual a quarenta', 60, 0, '0000-00-00 00:00:00'),
(69, 'Quanto é cinco vezes nove?', 'quanto-e-cinco-vezes-nove', 'Cinco vezes nove é igual a quarenta e cinco', '5 x 9 = 45<br>Cinco vezes nove é igual a quarenta e cinco', 60, 0, '0000-00-00 00:00:00'),
(70, 'Quanto é cinco vezes dez?', 'quanto-e-cinco-vezes-dez', 'Cinco vezes dez é igual a cinquenta', '5 x 10 = 50<br>Cinco vezes dez é igual a cinquenta', 60, 0, '0000-00-00 00:00:00'),
(71, 'Os múltiplos de 6', 'os-multiplos-de-6', 'Tabuada de múltiplos de seis', 'Tabuada de múltiplos de seis para aprender a multiplicar', 2, 1, '0000-00-00 00:00:00'),
(72, 'Quanto é seis vezes um?', 'quanto-e-seis-vezes-um', 'Seis vezes um é igual a seis', '6 x 1 = 6<br>Seis vezes um é igual a seis', 71, 0, '0000-00-00 00:00:00'),
(73, 'Quanto é seis vezes dois?', 'quanto-e-seis-vezes-dois', 'Seis vezes dois é igual a doze', '6 x 2 = 12<br>Seis vezes dois é igual a doze', 71, 0, '0000-00-00 00:00:00'),
(74, 'Quanto é seis vezes três?', 'quanto-e-seis-vezes-tres', 'Seis vezes três é igual a dezoito', '6 x 3 = 18<br>Seis vezes três é igual a dezoito', 71, 0, '0000-00-00 00:00:00'),
(75, 'Quanto é seis vezes quatro?', 'quanto-e-seis-vezes-quatro', 'Seis vezes quatro é igual a vinte e quatro', '6 x 4 = 24<br>Seis vezes quatro é igual a vinte e quatro', 71, 0, '0000-00-00 00:00:00'),
(76, 'Quanto é seis vezes cinco?', 'quanto-e-seis-vezes-cinco', 'Seis vezes cinco é igual a trinta', '6 x 5 = 30<br>Seis vezes cinco é igual a trinta', 71, 0, '0000-00-00 00:00:00'),
(77, 'Quanto é seis vezes seis?', 'quanto-e-seis-vezes-seis', 'Seis vezes seis é igual a trinta e seis', '6 x 6 = 36<br>Seis vezes seis é igual a trinta e seis', 71, 0, '0000-00-00 00:00:00'),
(78, 'Quanto é seis vezes sete?', 'quanto-e-seis-vezes-sete', 'Seis vezes sete é igual a quarenta e dois', '6 x 7 = 42<br>Seis vezes sete é igual a quarenta e dois', 71, 0, '0000-00-00 00:00:00'),
(79, 'Quanto é seis vezes oito?', 'quanto-e-seis-vezes-oito', 'Seis vezes oito é igual a quarenta e oito', '6 x 8 = 48<br>Seis vezes oito é igual a quarenta e oito', 71, 0, '0000-00-00 00:00:00'),
(80, 'Quanto é seis vezes nove?', 'quanto-e-seis-vezes-nove', 'Seis vezes nove é igual a cinquenta e quatro', '6 x 9 = 54<br>Seis vezes nove é igual a cinquenta e quatro', 71, 0, '0000-00-00 00:00:00'),
(81, 'Quanto é seis vezes dez?', 'quanto-e-seis-vezes-dez', 'Seis vezes dez é igual a sessenta', '6 x 10 = 60<br>Seis vezes dez é igual a sessenta', 71, 0, '0000-00-00 00:00:00'),
(82, 'Os múltiplos de 7', 'os-multiplos-de-7', 'Tabuada de múltiplos de sete', 'Tabuada de múltiplos de sete para aprender a multiplicar', 2, 1, '0000-00-00 00:00:00'),
(83, 'Quanto é sete vezes um?', 'quanto-e-sete-vezes-um', 'Sete vezes um é igual a sete', '7 x 1 = 7<br>Sete vezes um é igual a sete', 82, 0, '0000-00-00 00:00:00'),
(84, 'Quanto é sete vezes dois?', 'quanto-e-sete-vezes-dois', 'Sete vezes dois é igual a quatorze', '7 x 2 = 14<br>Sete vezes dois é igual a quatorze', 82, 0, '0000-00-00 00:00:00'),
(85, 'Quanto é sete vezes três?', 'quanto-e-sete-vezes-tres', 'Sete vezes três é igual a vinte e um', '7 x 3 = 21<br>Sete vezes três é igual a vinte e um', 82, 0, '0000-00-00 00:00:00'),
(86, 'Quanto é sete vezes quatro?', 'quanto-e-sete-vezes-quatro', 'Sete vezes quatro é igual a vinte e oito', '7 x 4 = 28<br>Sete vezes quatro é igual a vinte e oito', 82, 0, '0000-00-00 00:00:00'),
(87, 'Quanto é sete vezes cinco?', 'quanto-e-sete-vezes-cinco', 'Sete vezes cinco é igual a trinta e cinco', '7 x 5 = 35<br>Sete vezes cinco é igual a trinta e cinco', 82, 0, '0000-00-00 00:00:00'),
(88, 'Quanto é sete vezes seis?', 'quanto-e-sete-vezes-seis', 'Sete vezes seis é igual a quarenta e dois', '7 x 6 = 42<br>Sete vezes seis é igual a quarenta e dois', 82, 0, '0000-00-00 00:00:00'),
(89, 'Quanto é sete vezes sete?', 'quanto-e-sete-vezes-sete', 'Sete vezes sete é igual a quarenta e nove', '7 x 7 = 49<br>Sete vezes sete é igual a quarenta e nove', 82, 0, '0000-00-00 00:00:00'),
(90, 'Quanto é sete vezes oito?', 'quanto-e-sete-vezes-oito', 'Sete vezes oito é igual a cinquenta e seis', '7 x 8 = 56<br>Sete vezes oito é igual a cinquenta e seis', 82, 0, '0000-00-00 00:00:00'),
(91, 'Quanto é sete vezes nove?', 'quanto-e-sete-vezes-nove', 'Sete vezes nove é igual a sessenta e três', '7 x 9 = 63<br>Sete vezes nove é igual a sessenta e três', 82, 0, '0000-00-00 00:00:00'),
(92, 'Quanto é sete vezes dez?', 'quanto-e-sete-vezes-dez', 'Sete vezes dez é igual a setenta', '7 x 10 = 70<br>Sete vezes dez é igual a setenta', 82, 0, '0000-00-00 00:00:00'),
(93, 'Os múltiplos de 8', 'os-multiplos-de-8', 'Tabuada de múltiplos de oito', 'Tabuada de múltiplos de oito para aprender a multiplicar', 2, 1, '0000-00-00 00:00:00'),
(94, 'Quanto é oito vezes um?', 'quanto-e-oito-vezes-um', 'Oito vezes um é igual a oito', '8 x 1 = 8<br>Oito vezes um é igual a oito', 93, 0, '0000-00-00 00:00:00'),
(95, 'Quanto é oito vezes dois?', 'quanto-e-oito-vezes-dois', 'Oito vezes dois é igual a dezesseis', '8 x 2 = 16<br>Oito vezes dois é igual a dezesseis', 93, 0, '0000-00-00 00:00:00'),
(96, 'Quanto é oito vezes três?', 'quanto-e-oito-vezes-tres', 'Oito vezes três é igual a vinte e quatro', '8 x 3 = 24<br>Oito vezes três é igual a vinte e quatro', 93, 0, '0000-00-00 00:00:00'),
(97, 'Quanto é oito vezes quatro?', 'quanto-e-oito-vezes-quatro', 'Oito vezes quatro é igual a trinta e dois', '8 x 4 = 32<br>Oito vezes quatro é igual a trinta e dois', 93, 0, '0000-00-00 00:00:00'),
(98, 'Quanto é oito vezes cinco?', 'quanto-e-oito-vezes-cinco', 'Oito vezes cinco é igual a quarenta', '8 x 5 = 40<br>Oito vezes cinco é igual a quarenta', 93, 0, '0000-00-00 00:00:00'),
(99, 'Quanto é oito vezes seis?', 'quanto-e-oito-vezes-seis', 'Oito vezes seis é igual a quarenta e oito', '8 x 6 = 48<br>Oito vezes seis é igual a quarenta e oito', 93, 0, '0000-00-00 00:00:00'),
(100, 'Quanto é oito vezes sete?', 'quanto-e-oito-vezes-sete', 'Oito vezes sete é igual a cinquenta e seis', '8 x 7 = 56<br>Oito vezes sete é igual a cinquenta e seis', 93, 0, '0000-00-00 00:00:00'),
(101, 'Quanto é oito vezes oito?', 'quanto-e-oito-vezes-oito', 'Oito vezes oito é igual a sessenta e quatro', '8 x 8 = 64<br>Oito vezes oito é igual a sessenta e quatro', 93, 0, '0000-00-00 00:00:00'),
(102, 'Quanto é oito vezes nove?', 'quanto-e-oito-vezes-nove', 'Oito vezes nove é igual a setenta e dois', '8 x 9 = 72<br>Oito vezes nove é igual a setenta e dois', 93, 0, '0000-00-00 00:00:00'),
(103, 'Quanto é oito vezes dez?', 'quanto-e-oito-vezes-dez', 'Oito vezes dez é igual a oitenta', '8 x 10 = 80<br>Oito vezes dez é igual a oitenta', 93, 0, '0000-00-00 00:00:00'),
(104, 'Os múltiplos de 9', 'os-multiplos-de-9', 'Tabuada de múltiplos de nove', 'Tabuada de múltiplos de nove para aprender a multiplicar', 2, 1, '0000-00-00 00:00:00'),
(105, 'Quanto é nove vezes um?', 'quanto-e-nove-vezes-um', 'Nove vezes um é igual a nove', '9 x 1 = 9<br>Nove vezes um é igual a nove', 104, 0, '0000-00-00 00:00:00'),
(106, 'Quanto é nove vezes dois?', 'quanto-e-nove-vezes-dois', 'Nove vezes dois é igual a dezoito', '9 x 2 = 18<br>Nove vezes dois é igual a dezoito', 104, 0, '0000-00-00 00:00:00'),
(107, 'Quanto é nove vezes três?', 'quanto-e-nove-vezes-tres', 'Nove vezes três é igual a vinte e sete', '9 x 3 = 27<br>Nove vezes três é igual a vinte e sete', 104, 0, '0000-00-00 00:00:00'),
(108, 'Quanto é nove vezes quatro?', 'quanto-e-nove-vezes-quatro', 'Nove vezes quatro é igual a trinta e seis', '9 x 4 = 36<br>Nove vezes quatro é igual a trinta e seis', 104, 0, '0000-00-00 00:00:00'),
(109, 'Quanto é nove vezes cinco?', 'quanto-e-nove-vezes-cinco', 'Nove vezes cinco é igual a quarenta e cinco', '9 x 5 = 45<br>Nove vezes cinco é igual a quarenta e cinco', 104, 0, '0000-00-00 00:00:00'),
(110, 'Quanto é nove vezes seis?', 'quanto-e-nove-vezes-seis', 'Nove vezes seis é igual a cinquenta e quatro', '9 x 6 = 54<br>Nove vezes seis é igual a cinquenta e quatro', 104, 0, '0000-00-00 00:00:00'),
(111, 'Quanto é nove vezes sete?', 'quanto-e-nove-vezes-sete', 'Nove vezes sete é igual a sessenta e três', '9 x 7 = 63<br>Nove vezes sete é igual a sessenta e três', 104, 0, '0000-00-00 00:00:00'),
(112, 'Quanto é nove vezes oito?', 'quanto-e-nove-vezes-oito', 'Nove vezes oito é igual a setenta e dois', '9 x 8 = 72<br>Nove vezes oito é igual a setenta e dois', 104, 0, '0000-00-00 00:00:00'),
(113, 'Quanto é nove vezes nove?', 'quanto-e-nove-vezes-nove', 'Nove vezes nove é igual a oitenta e um', '9 x 9 = 81<br>Nove vezes nove é igual a oitenta e um', 104, 0, '0000-00-00 00:00:00'),
(114, 'Quanto é nove vezes dez?', 'quanto-e-nove-vezes-dez', 'Nove vezes dez é igual a noventa', '9 x 10 = 90<br>Nove vezes dez é igual a noventa', 104, 0, '0000-00-00 00:00:00'),
(115, 'Os múltiplos de 10', 'os-multiplos-de-10', 'Tabuada de múltiplos de dez', 'Tabuada de múltiplos de dez para aprender a multiplicar', 2, 1, '0000-00-00 00:00:00'),
(116, 'Quanto é dez vezes um?', 'quanto-e-dez-vezes-um', 'Dez vezes um é igual a dez', '10 x 1 = 10<br>Dez vezes um é igual a dez', 115, 0, '0000-00-00 00:00:00'),
(117, 'Quanto é dez vezes dois?', 'quanto-e-dez-vezes-dois', 'Dez vezes dois é igual a vinte', '10 x 2 = 20<br>Dez vezes dois é igual a vinte', 115, 0, '0000-00-00 00:00:00'),
(118, 'Quanto é dez vezes três?', 'quanto-e-dez-vezes-tres', 'Dez vezes três é igual a trinta', '10 x 3 = 30<br>Dez vezes três é igual a trinta', 115, 0, '0000-00-00 00:00:00'),
(119, 'Quanto é dez vezes quatro?', 'quanto-e-dez-vezes-quatro', 'Dez vezes quatro é igual a quarenta', '10 x 4 = 40<br>Dez vezes quatro é igual a quarenta', 115, 0, '0000-00-00 00:00:00'),
(120, 'Quanto é dez vezes cinco?', 'quanto-e-dez-vezes-cinco', 'Dez vezes cinco é igual a cinquenta', '10 x 5 = 50<br>Dez vezes cinco é igual a cinquenta', 115, 0, '0000-00-00 00:00:00'),
(121, 'Quanto é dez vezes seis?', 'quanto-e-dez-vezes-seis', 'Dez vezes seis é igual a sessenta', '10 x 6 = 60<br>Dez vezes seis é igual a sessenta', 115, 0, '0000-00-00 00:00:00'),
(122, 'Quanto é dez vezes sete?', 'quanto-e-dez-vezes-sete', 'Dez vezes sete é igual a setenta', '10 x 7 = 70<br>Dez vezes sete é igual a setenta', 115, 0, '0000-00-00 00:00:00'),
(123, 'Quanto é dez vezes oito?', 'quanto-e-dez-vezes-oito', 'Dez vezes oito é igual a oitenta', '10 x 8 = 80<br>Dez vezes oito é igual a oitenta', 115, 0, '0000-00-00 00:00:00'),
(124, 'Quanto é dez vezes nove?', 'quanto-e-dez-vezes-nove', 'Dez vezes nove é igual a noventa', '10 x 9 = 90<br>Dez vezes nove é igual a noventa', 115, 0, '0000-00-00 00:00:00'),
(125, 'Quanto é dez vezes dez?', 'quanto-e-dez-vezes-dez', 'Dez vezes dez é igual a cem', '10 x 10 = 100<br>Dez vezes dez é igual a cem', 115, 0, '0000-00-00 00:00:00'),
(127, 'Heróis da Marvel', 'herois-da-marvel', 'Lista de heróis da Marvel', 'Veja a lista completa dos principais super-heróis da editora Marvel', 1, 0, '0000-00-00 00:00:00'),
(128, 'Deadpool', 'deadpool', 'Sobre Deadpool', 'Deadpool é um herói da Marvel seu nome verdadeiro é Wade Wilson', 127, 0, '0000-00-00 00:00:00'),
(129, 'Homem-Aranha', 'homem-aranha', 'Sobre Homem-Aranha', 'Homem-Aranha é um herói da Marvel seu nome verdadeiro é Peter Benjamin Parker', 127, 0, '0000-00-00 00:00:00'),
(130, 'Homem-Formiga', 'homem-formiga', 'Sobre Homem-Formiga', 'Homem-Formiga é um herói da Marvel seu nome verdadeiro é Henry "Hank" Pym', 127, 0, '0000-00-00 00:00:00'),
(131, 'Pantera Negra', 'pantera-negra', 'Sobre Pantera Negra', 'Pantera Negra é um herói da Marvel seu nome verdadeiro é T''Challa', 127, 0, '0000-00-00 00:00:00'),
(132, 'Gambit', 'gambit', 'Sobre Gambit', 'Gambit é um herói da Marvel seu nome verdadeiro é Remmy LeBeau', 127, 0, '0000-00-00 00:00:00'),
(133, 'Luke Cage', 'luke-cage', 'Sobre Luke Cage', 'Luke Cage é um herói da Marvel seu nome verdadeiro é Carl Lucas', 127, 0, '0000-00-00 00:00:00'),
(134, 'Homem de Ferro', 'homem-de-ferro', 'Sobre Homem de Ferro', 'Homem de Ferro é um herói da Marvel seu nome verdadeiro é Tony Stark', 127, 0, '0000-00-00 00:00:00'),
(135, 'Viúva Negra', 'viuva-negra', 'Sobre Viúva Negra', 'Viúva Negra é um herói da Marvel seu nome verdadeiro é Natasha Romanoff', 127, 0, '0000-00-00 00:00:00'),
(136, 'Mulher-Aranha', 'mulher-aranha', 'Sobre Mulher-Aranha', 'Mulher-Aranha é um herói da Marvel seu nome verdadeiro é Jessica Drewn', 127, 0, '0000-00-00 00:00:00'),
(137, 'Capitão América', 'capitao-america', 'Sobre Capitão América', 'Capitão América é um herói da Marvel seu nome verdadeiro é Steve Rogers', 127, 0, '0000-00-00 00:00:00'),
(138, 'Ciclope', 'ciclope', 'Sobre Ciclope', 'Ciclope é um herói da Marvel seu nome verdadeiro é Scott Summers', 127, 0, '0000-00-00 00:00:00'),
(139, 'Fera', 'fera', 'Sobre Fera', 'Fera é um herói da Marvel seu nome verdadeiro é Henry Mccoy', 127, 0, '0000-00-00 00:00:00'),
(140, 'Demolidor', 'demolidor', 'Sobre Demolidor', 'Demolidor é um herói da Marvel seu nome verdadeiro é Matt Murdock', 127, 0, '0000-00-00 00:00:00'),
(141, 'Motoqueiro Fantasma', 'motoqueiro-fantasma', 'Sobre Motoqueiro Fantasma', 'Motoqueiro Fantasma é um herói da Marvel seu nome verdadeiro é Johnny Blaze', 127, 0, '0000-00-00 00:00:00'),
(142, 'Lince Negra', 'lince-negra', 'Sobre Lince Negra', 'Lince Negra é um herói da Marvel seu nome verdadeiro é Kitty Pryde', 127, 0, '0000-00-00 00:00:00'),
(143, 'Elektra', 'elektra', 'Sobre Elektra', 'Elektra é um herói da Marvel seu nome verdadeiro é Elektra Natchios', 127, 0, '0000-00-00 00:00:00'),
(144, 'Homem de Gelo', 'homem-de-gelo', 'Sobre Homem de Gelo', 'Homem de Gelo é um herói da Marvel seu nome verdadeiro é Bobby Drake', 127, 0, '0000-00-00 00:00:00'),
(145, 'Surfista Prateado', 'surfista-prateado', 'Sobre Surfista Prateado', 'Surfista Prateado é um herói da Marvel seu nome verdadeiro é Norrin Radd', 127, 0, '0000-00-00 00:00:00'),
(146, 'Colossus', 'colossus', 'Sobre Colossus', 'Colossus é um herói da Marvel seu nome verdadeiro é Piotr Rasputin', 127, 0, '0000-00-00 00:00:00'),
(147, 'Jean Grey', 'jean-grey', 'Sobre Jean Grey', 'Jean Grey é um herói da Marvel seu nome verdadeiro é Garota Marvel', 127, 0, '0000-00-00 00:00:00'),
(148, 'Emma Frost', 'emma-frost', 'Sobre Emma Frost', 'Emma Frost é um herói da Marvel', 127, 0, '0000-00-00 00:00:00'),
(149, 'Namor', 'namor', 'Sobre Namor', 'Namor é um herói da Marvel', 127, 0, '0000-00-00 00:00:00'),
(150, 'Hulk', 'hulk', 'Sobre Hulk', 'Hulk é um herói da Marvel seu nome verdadeiro é Bruce Banner', 127, 0, '0000-00-00 00:00:00'),
(151, 'Gavião Arqueiro', 'gaviao-arqueiro', 'Sobre Gavião Arqueiro', 'Gavião Arqueiro é um herói da Marvel seu nome verdadeiro é Clint Bartoon', 127, 0, '0000-00-00 00:00:00'),
(152, 'Feiticeira Escarlate', 'feiticeira-escarlate', 'Sobre Feiticeira Escarlate', 'Feiticeira Escarlate é um herói da Marvel seu nome verdadeiro é Wanda Maximoff', 127, 0, '0000-00-00 00:00:00'),
(153, 'Visão', 'visao', 'Sobre Visão', 'Visão é um herói da Marvel', 127, 0, '0000-00-00 00:00:00'),
(154, 'Thor Odinson', 'thor-odinson', 'Sobre Thor Odinson', 'Thor Odinson é um herói da Marvel', 127, 0, '0000-00-00 00:00:00'),
(155, 'Hércules', 'hercules', 'Sobre Hércules', 'Hércules é um herói da Marvel', 127, 0, '0000-00-00 00:00:00'),
(156, 'Justiceiro', 'justiceiro', 'Sobre Justiceiro', 'Justiceiro é um herói da Marvel seu nome verdadeiro é Frank Castle', 127, 0, '0000-00-00 00:00:00'),
(157, 'Punhos de Aço', 'punhos-de-aco', 'Sobre Punhos de Aço', 'Punhos de Aço é um herói da Marvel seu nome verdadeiro é Daniel Randy', 127, 0, '0000-00-00 00:00:00'),
(158, 'Blade', 'blade', 'Sobre Blade', 'Blade é um herói da Marvel seu nome verdadeiro é Erik Brooks', 127, 0, '0000-00-00 00:00:00'),
(159, 'Manto', 'manto', 'Sobre Manto', 'Manto é um herói da Marvel seu nome verdadeiro é Tyrone Johnson', 127, 0, '0000-00-00 00:00:00'),
(160, 'Adaga', 'adaga', 'Sobre Adaga', 'Adaga é um herói da Marvel seu nome verdadeiro é Tandy Bowen', 127, 0, '0000-00-00 00:00:00'),
(161, 'Ka-zar', 'ka-zar', 'Sobre Ka-zar', 'Ka-zar é um herói da Marvel', 127, 0, '0000-00-00 00:00:00'),
(162, 'Cavaleiro da Lua', 'cavaleiro-da-lua', 'Sobre Cavaleiro da Lua', 'Cavaleiro da Lua é um herói da Marvel seu nome verdadeiro é Marc Spector', 127, 0, '0000-00-00 00:00:00'),
(163, 'Raio Negro', 'raio-negro', 'Sobre Raio Negro', 'Raio Negro é um herói da Marvel', 127, 0, '0000-00-00 00:00:00'),
(164, 'Star-Lord', 'star-lord', 'Sobre Star-Lord', 'Star-Lord é um herói da Marvel seu nome verdadeiro é Peter Quill', 127, 0, '0000-00-00 00:00:00'),
(165, 'Nova', 'nova', 'Sobre Nova', 'Nova é um herói da Marvel seu nome verdadeiro é Richard Rider', 127, 0, '0000-00-00 00:00:00'),
(166, 'Mulher Invisivel', 'mulher-invisivel', 'Sobre Mulher Invisivel', 'Mulher Invisivel é um herói da Marvel seu nome verdadeiro é Susan Storm', 127, 0, '0000-00-00 00:00:00'),
(167, 'Mulher Hulk', 'mulher-hulk', 'Sobre Mulher Hulk', 'Mulher Hulk é um herói da Marvel seu nome verdadeiro é Jennifer Walters', 127, 0, '0000-00-00 00:00:00'),
(168, 'Noturno', 'noturno', 'Sobre Noturno', 'Noturno é um herói da Marvel seu nome verdadeiro é Kurt Wagner', 127, 0, '0000-00-00 00:00:00'),
(169, 'Vampira, Anna Marie', 'vampira-anna-marie', 'Sobre Vampira, Anna Marie', 'Vampira, Anna Marie é um herói da Marvel', 127, 0, '0000-00-00 00:00:00'),
(170, 'Dr. Estranho', 'dr-estranho', 'Sobre Dr. Estranho', 'Dr. Estranho é um herói da Marvel seu nome verdadeiro é Stephen Strange', 127, 0, '0000-00-00 00:00:00'),
(171, 'Mercúrio', 'mercurio', 'Sobre Mercúrio', 'Mercúrio é um herói da Marvel seu nome verdadeiro é Pietro Maximoff', 127, 0, '0000-00-00 00:00:00'),
(172, 'Crystal', 'crystal', 'Sobre Crystal', 'Crystal é um herói da Marvel seu nome verdadeiro é Cristalys', 127, 0, '0000-00-00 00:00:00'),
(173, 'Medusa', 'medusa', 'Sobre Medusa', 'Medusa é um herói da Marvel', 127, 0, '0000-00-00 00:00:00'),
(174, 'Miss Marvel', 'miss-marvel', 'Sobre Miss Marvel', 'Miss Marvel é um herói da Marvel seu nome verdadeiro é Carol Danvers', 127, 0, '0000-00-00 00:00:00'),
(175, 'Psylocke', 'psylocke', 'Sobre Psylocke', 'Psylocke é um herói da Marvel seu nome verdadeiro é Elisabeth Braddock', 127, 0, '0000-00-00 00:00:00'),
(176, 'Tocha Humana', 'tocha-humana', 'Sobre Tocha Humana', 'Tocha Humana é um herói da Marvel seu nome verdadeiro é Jonhy Storm', 127, 0, '0000-00-00 00:00:00'),
(177, 'Tempestade', 'tempestade', 'Sobre Tempestade', 'Tempestade é um herói da Marvel seu nome verdadeiro é Ororo Munroe', 127, 0, '0000-00-00 00:00:00'),
(178, 'Wolverine', 'wolverine', 'Sobre Wolverine', 'Wolverine é um herói da Marvel seu nome verdadeiro é Logan Howlett', 127, 0, '0000-00-00 00:00:00'),
(179, 'Senhor Fantástico', 'senhor-fantastico', 'Sobre Senhor Fantástico', 'Senhor Fantástico é um herói da Marvel seu nome verdadeiro é Reed Richards', 127, 0, '0000-00-00 00:00:00'),
(180, 'Coisa', 'coisa', 'Sobre Coisa', 'Coisa é um herói da Marvel seu nome verdadeiro é Ben Grimm', 127, 0, '0000-00-00 00:00:00'),
(181, 'Arcanjo', 'arcanjo', 'Sobre Arcanjo', 'Arcanjo é um herói da Marvel seu nome verdadeiro é Warren Worthington III', 127, 0, '0000-00-00 00:00:00'),
(6861, 'API', 'api', 'Como usar a API', 'Navegue para qualquer item e clique em Consultar Item pela API. Você será direcionado para a URL da API que retornará o objeto JSON com os dados do item e seus filhos.', 1, 0, '2016-07-20 01:00:51'),
(6864, 'Visualizar o objeto JSON', 'visualizar-o-objeto-json', 'Como visualizar o objeto JSON?', 'Um objeto JSON pode ser visualizado de diversas formas. Você pode usar o console do seu navegador ao resgatá-lo em uma consulta ou simplesmente colar o seu conteúdo em um visualizado online como o http://jsonviewer.stack.hu/ - Faça o teste!', 6861, 0, '2016-07-20 01:13:58'),
(6865, 'Me dá um exemplo?', 'me-d-um-exemplo', 'Exemplo no JSFiddle', 'Este exemplo <a href="http://jsfiddle.net/yw1javdv/2/">http://jsfiddle.net/yw1javdv/2/</a> te mostra como fazer uma query à API e converter o retorno em JSON.', 6861, 0, '2016-07-20 22:29:37'),
(35701, 'Não exibir sinalizados', 'nao-exibir-sinalizados', 'Como remover os sinalizados como impróprios', 'Para não exibir os itens sinalizados como impróprios em uma consulta pela API basta acrescentar o parâmetro "clean=true".\r\n\r\n', 6861, 0, '2016-07-25 21:46:19');

--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `elements_ibfk_1` FOREIGN KEY (`parent_element_id`) REFERENCES `elements` (`element_id`) ON DELETE CASCADE ON UPDATE CASCADE;

