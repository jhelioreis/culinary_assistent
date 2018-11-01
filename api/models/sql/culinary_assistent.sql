-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: culinary_assistent
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `receita`
--

USE culinary_assistent;

DROP TABLE IF EXISTS `receita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `receita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `ingredientes` varchar(255) NOT NULL,
  `tags` json NOT NULL,
  `modo_de_preparo` text NOT NULL,
  `tempo_de_preparo` varchar(255) NOT NULL,
  `porcoes` int(11) NOT NULL,
  `autor` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receita`
--

LOCK TABLES `receita` WRITE;
/*!40000 ALTER TABLE `receita` DISABLE KEYS */;
INSERT INTO `receita` VALUES (3,'BIFE AO FALSO MOLHO MADEIRA','1 kg de carne macia, 1 vidro de champignon, sal, Cebola, Salsinha, 1 caldo de carne, Azeite , Amido de milho, Margarina, Shoyu','[\"carne\", \"champignon\", \"sal\", \"cebola\", \"salsinha\", \"caldo de carne\", \"azeite\", \"amido de milho\", \"margarina\", \"shoyou\"]','1. Corte a carne para bife, lave e tempere a seu gosto. 2. Passe os bifes na margarina até dourar. 3. Reserve . FALSO MOLHO MADEIRA: 1. Corte a cebola em rodelas e fite na margarina até dourar, retire, e coloque em um pires pequeno. 2. Na mesma panela em que fritou as cebolas, coloque óleo, caldo de carne, 1 colher de amilho de milho (caso queira aumentar o molho aumente a quantidade do amido diluído em água e mexa, até o molho ficar homogêneo, adicione 3 colheres de shoyu e o champignon. MONTAGEM: 1. Em um refratário, coloque os bifes fritos e acrescente o molho pronto, por cima coloque as cebolas douradas em rodelas por cima','40 minutos',15,'www.tudogostoso.com.br'),(4,'BIFE AO FALSO MOLHO MADEIRA','1 kg de carne macia, 1 vidro de champignon, sal, Cebola, Salsinha, 1 caldo de carne, Azeite , Amido de milho, Margarina, Shoyu','[\"carne\", \"champignon\", \"sal\", \"cebola\", \"salsinha\", \"caldo de carne\", \"azeite\", \"amido de milho\", \"margarina\", \"shoyou\"]','A','40 minutos',15,'www.tudogostoso.com.br'),(5,'BIFE AO FALSO MOLHO MADEIRA','1 kg de carne macia, 1 vidro de champignon, sal, Cebola, Salsinha, 1 caldo de carne, Azeite , Amido de milho, Margarina, Shoyu','[\"carne\", \"champignon\", \"sal\", \"cebola\", \"salsinha\", \"caldo de carne\", \"azeite\", \"amido de milho\", \"margarina\", \"shoyou\"]','A','40 minutos',15,'www.tudogostoso.com.br'),(6,'BIFE AO FALSO MOLHO MADEIRA','1 kg de carne macia, 1 vidro de champignon, sal, Cebola, Salsinha, 1 caldo de carne, Azeite , Amido de milho, Margarina, Shoyu','[\"carne\", \"champignon\", \"sal\", \"cebola\", \"salsinha\", \"caldo de carne\", \"azeite\", \"amido de milho\", \"margarina\", \"shoyou\"]','A','40 minutos',15,'www.tudogostoso.com.br'),(7,'BIFE AO FALSO MOLHO MADEIRA','1 kg de carne macia, 1 vidro de champignon, sal, Cebola, Salsinha, 1 caldo de carne, Azeite , Amido de milho, Margarina, Shoyu','[\"carne\", \"champignon\", \"sal\", \"cebola\", \"salsinha\", \"caldo de carne\", \"azeite\", \"amido de milho\", \"margarina\", \"shoyou\"]','A','40 minutos',15,'www.tudogostoso.com.br'),(8,'BIFE AO FALSO MOLHO MADEIRA','1 kg de carne macia, 1 vidro de champignon, sal, Cebola, Salsinha, 1 caldo de carne, Azeite , Amido de milho, Margarina, Shoyu','[\"carne\", \"champignon\", \"sal\", \"cebola\", \"salsinha\", \"caldo de carne\", \"azeite\", \"amido de milho\", \"margarina\", \"shoyou\"]','A','40 minutos',15,'www.tudogostoso.com.br'),(9,'BIFE AO FALSO MOLHO MADEIRA','1 kg de carne macia, 1 vidro de champignon, sal, Cebola, Salsinha, 1 caldo de carne, Azeite , Amido de milho, Margarina, Shoyu','[\"carne\", \"champignon\", \"sal\", \"cebola\", \"salsinha\", \"caldo de carne\", \"azeite\", \"amido de milho\", \"margarina\", \"shoyou\"]','A','40 minutos',15,'www.tudogostoso.com.br'),(10,'BIFE AO FALSO MOLHO MADEIRA','1 kg de carne macia, 1 vidro de champignon, sal, Cebola, Salsinha, 1 caldo de carne, Azeite , Amido de milho, Margarina, Shoyu','[\"carne\", \"champignon\", \"sal\", \"cebola\", \"salsinha\", \"caldo de carne\", \"azeite\", \"amido de milho\", \"margarina\", \"shoyou\"]','A','40 minutos',15,'www.tudogostoso.com.br'),(11,'BIFE AO FALSO MOLHO MADEIRA','1 kg de carne macia, 1 vidro de champignon, sal, Cebola, Salsinha, 1 caldo de carne, Azeite , Amido de milho, Margarina, Shoyu','[\"carne\", \"champignon\", \"sal\", \"cebola\", \"salsinha\", \"caldo de carne\", \"azeite\", \"amido de milho\", \"margarina\", \"shoyou\"]','A','40 minutos',15,'www.tudogostoso.com.br'),(14,'Arroz','Arroz','[\"arroz\"]','Colocar o arroz na panela','40 minutos',12,'lusca');
/*!40000 ALTER TABLE `receita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'usuario','usuario@gmail.com','1234',0),(2,'matheus','matheus@gmail.com','123456',1),(3,'kezia','kezia@gmail.com','123456',1),(4,'admin','admin@gmail.com','admin',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-01 14:19:36
