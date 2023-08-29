-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.33-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para atividadegeragrafico
CREATE DATABASE IF NOT EXISTS `atividadegeragrafico` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `atividadegeragrafico`;

-- Copiando estrutura para tabela atividadegeragrafico.dadosgrafico
CREATE TABLE IF NOT EXISTS `dadosgrafico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valores` int(4) NOT NULL,
  `quantidade` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela atividadegeragrafico.dadosgrafico: ~0 rows (aproximadamente)
DELETE FROM `dadosgrafico`;
/*!40000 ALTER TABLE `dadosgrafico` DISABLE KEYS */;
INSERT INTO `dadosgrafico` (`id`, `valores`, `quantidade`) VALUES
	(1, 2, 3),
	(2, 23, 22),
	(3, 12, 11);
/*!40000 ALTER TABLE `dadosgrafico` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
