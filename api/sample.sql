CREATE DATABASE  IF NOT EXISTS `api` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `api`;
-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: api
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id_categoria` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (2,'Pizzas'),(4,'Caldos'),(5,'Bebidas'),(6,'Doses'),(7,'Refrigerantes'),(8,'água e Sucos'),(9,'Peixes'),(19,'Lanche');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id_conf` int(30) NOT NULL,
  `empresa` varchar(200) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `pgarcon` int(10) NOT NULL,
  `ativo` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (0,'Pizzaria Exata Sistemas','(22) 2762-8679',10,1);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Adriano','Faria Alves','adriano.faria@gmail.com','(22) 2762-8679','2018-03-16 23:43:22','2018-03-28 12:56:36'),(2,'Michele Cristina','Teixeira Faria Alves','micheletalves@gmail.com','+55 2252514521','2018-03-16 23:45:15','2018-03-16 23:45:15'),(46,'AdrianoT','Faria Alves','adriano.faria@gmail.com','+55 999158241','2018-03-23 18:27:33','2018-03-23 18:27:33'),(47,'AdrianoT','Faria Alves','adriano.faria@gmail.com','+55 999158241','2018-03-23 18:27:58','2018-03-23 18:27:58'),(48,'AdrianoT','Faria Alves','adriano.faria@gmail.com','+55 999158241','2018-03-23 18:29:01','2018-03-23 18:29:01'),(49,'AdrianoT','Faria Alves','adriano.faria@gmail.com','+55 999158241','2018-03-23 18:29:29','2018-03-23 18:29:29'),(50,'AdrianoT','Faria Alves','adriano.faria@gmail.com','+55 999158241','2018-03-23 18:32:05','2018-03-23 18:32:05'),(51,'AdrianoT','Faria Alves','adriano.faria@gmail.com','+55 999158241','2018-03-23 18:39:19','2018-03-23 18:39:19'),(52,'AdrianoT','Faria Alves','adriano.faria@gmail.com','+55 999158241','2018-03-23 18:45:00','2018-03-23 18:45:00'),(53,'AdrianoT','Faria Alves','adriano.faria@gmail.com','+55 999158241','2018-03-23 18:47:23','2018-03-23 18:47:23'),(54,'AdrianoT','Faria Alves','adriano.faria@gmail.com','+55 999158241','2018-03-23 20:17:22','2018-03-23 20:17:22'),(55,'AdrianoT','Faria Alves','adriano.faria@gmail.com','+55 999158241','2018-03-23 20:26:10','2018-03-23 20:26:10'),(77,'AdrianoT','Faria Alves','adriano.faria@gmail.com','(55) 9 9915-8241','2018-03-28 12:54:23','2018-03-28 12:54:23');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cozinha`
--

DROP TABLE IF EXISTS `cozinha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cozinha` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `produto` varchar(200) NOT NULL,
  `qtd` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cozinha`
--

LOCK TABLES `cozinha` WRITE;
/*!40000 ALTER TABLE `cozinha` DISABLE KEYS */;
INSERT INTO `cozinha` VALUES (1,'Á Moda',1);
/*!40000 ALTER TABLE `cozinha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrega`
--

DROP TABLE IF EXISTS `entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrega` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod` int(11) NOT NULL,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `qtd` int(11) NOT NULL,
  `comanda` int(200) NOT NULL,
  `data` date NOT NULL,
  `time` time NOT NULL,
  `id_mesa` int(30) NOT NULL,
  `situacao` int(2) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `destino` int(1) NOT NULL,
  `entregue` int(1) NOT NULL,
  `feito` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=470 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrega`
--

LOCK TABLES `entrega` WRITE;
/*!40000 ALTER TABLE `entrega` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garcon`
--

DROP TABLE IF EXISTS `garcon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garcon` (
  `idGarcon` int(10) NOT NULL AUTO_INCREMENT,
  `nomeGarcon` varchar(200) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `nv` int(1) NOT NULL,
  PRIMARY KEY (`idGarcon`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garcon`
--

LOCK TABLES `garcon` WRITE;
/*!40000 ALTER TABLE `garcon` DISABLE KEYS */;
INSERT INTO `garcon` VALUES (1,'Administrador','admin','admin',0),(6,'garçom','garçom','1234',0),(7,'Carala','carla','1234',1),(8,'teste','teste','teste',0),(9,'teste2','teste2','teste2',0);
/*!40000 ALTER TABLE `garcon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesa`
--

DROP TABLE IF EXISTS `mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesa` (
  `id_mesa` int(10) NOT NULL AUTO_INCREMENT,
  `numero` int(10) NOT NULL,
  `idGarcon` varchar(200) DEFAULT NULL,
  `situacao` int(1) NOT NULL,
  PRIMARY KEY (`id_mesa`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesa`
--

LOCK TABLES `mesa` WRITE;
/*!40000 ALTER TABLE `mesa` DISABLE KEYS */;
INSERT INTO `mesa` VALUES (4,4,'1',1),(2,2,'6',1),(3,3,'1',1),(1,1,'6',1),(5,5,'',0),(6,6,'',0),(7,7,'',0),(8,8,'',0),(9,9,'',0),(10,10,'',0);
/*!40000 ALTER TABLE `mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_03_16_195006_contacts',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('adriano.faria@gmail.com','$2y$10$cCI1EvRcZg3Mqv6F5mhwi.tVkFp3VGMLlpbiwES2UPToFfnw6REa6','2018-02-27 17:52:20');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `id_mesa` int(10) NOT NULL AUTO_INCREMENT,
  `numero` int(10) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `situacao` int(1) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `numerocasa` varchar(20) DEFAULT NULL,
  `detalhes` longtext,
  PRIMARY KEY (`id_mesa`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (46,12,'9',0,'teste@gmail.com','Carla Costa','Barcelos','(31) 34542345','Giovanini','Av. Purus ','540',NULL),(47,14,'9',0,'adriano.faria@gmail.com','Adriano','Faria Alves','2227628679','Centro','EuzÃ©bio de Queiroz','600',NULL),(48,14,'9',0,'adriano.faria@gmail.com','Adriano','Faria Alves','2227628679','Centro','EuzÃ©bio de Queiroz','600',NULL),(49,14,'9',0,'adriano.faria@gmail.com','aaa',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_carrinho`
--

DROP TABLE IF EXISTS `tbl_carrinho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_carrinho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod` int(11) NOT NULL,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `qtd` int(11) NOT NULL,
  `comanda` int(200) NOT NULL,
  `data` date NOT NULL,
  `time` time NOT NULL,
  `id_mesa` int(30) NOT NULL,
  `situacao` int(2) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `destino` int(1) unsigned zerofill NOT NULL,
  `entregue` int(1) NOT NULL DEFAULT '0',
  `feito` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=216 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_carrinho`
--

LOCK TABLES `tbl_carrinho` WRITE;
/*!40000 ALTER TABLE `tbl_carrinho` DISABLE KEYS */;
INSERT INTO `tbl_carrinho` VALUES (49,2,'teste2','300.00',1,0,'2013-07-10','23:40:00',9,0,'2',1,0,1,0),(53,2,'teste2','300.00',1,0,'2014-12-02','22:34:00',8,0,'15',0,0,0,0),(159,28,'ANTARTICA','5.50',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(160,53,'Skol lata','4.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(161,53,'Skol lata','4.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(162,53,'Skol lata','4.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(163,53,'Skol lata','4.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(164,53,'Skol lata','4.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(165,53,'Skol lata','4.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(166,53,'Skol lata','4.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(167,53,'Skol lata','4.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(168,53,'Skol lata','4.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(169,53,'Skol lata','4.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(170,53,'Skol lata','4.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(171,53,'Skol lata','4.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(172,53,'Skol lata','4.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(173,53,'Skol lata','4.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(174,53,'Skol lata','4.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(175,53,'Skol lata','4.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(176,53,'Skol lata','4.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(177,53,'Skol lata','4.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(178,26,'SKOL','6.50',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(179,26,'SKOL','6.50',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(180,26,'SKOL','6.50',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(181,26,'SKOL','6.50',1,0,'2018-05-14','17:30:00',1,1,'6',1,0,1,0),(182,54,'Salame Italiano Fino','35.00',1,0,'2018-05-14','17:30:00',1,1,'6',1,1,1,0),(183,54,'Salame Italiano Fino','35.00',1,0,'2018-05-14','17:31:00',1,1,'6',1,1,1,0),(184,18,'Á Moda','38.00',1,0,'2018-05-14','17:35:00',2,1,'0',0,0,0,0),(185,28,'ANTARTICA','5.50',1,0,'2018-05-14','17:44:00',1,1,'6',1,0,1,0),(186,28,'ANTARTICA','5.50',1,0,'2018-05-14','17:44:00',1,1,'6',1,0,1,0),(187,28,'ANTARTICA','5.50',1,0,'2018-05-14','17:44:00',1,1,'6',1,0,1,0),(188,28,'ANTARTICA','5.50',1,0,'2018-05-14','17:44:00',1,1,'6',1,0,1,0),(189,28,'ANTARTICA','5.50',1,0,'2018-05-14','17:44:00',1,1,'6',1,0,1,0),(190,28,'ANTARTICA','5.50',1,0,'2018-05-14','17:44:00',1,1,'6',1,0,1,0),(191,28,'ANTARTICA','5.50',1,0,'2018-05-14','17:44:00',1,1,'6',1,0,1,0),(192,28,'ANTARTICA','5.50',1,0,'2018-05-14','17:44:00',1,1,'6',1,0,1,0),(193,28,'ANTARTICA','5.50',1,0,'2018-05-14','17:44:00',1,1,'6',1,0,1,0),(194,28,'ANTARTICA','5.50',1,0,'2018-05-14','17:44:00',1,1,'6',1,0,1,0),(195,28,'ANTARTICA','5.50',1,0,'2018-05-14','17:44:00',1,1,'6',1,0,1,0),(196,26,'SKOL','6.50',1,0,'2018-05-14','17:44:00',1,1,'6',1,0,1,0),(197,26,'SKOL','6.50',1,0,'2018-05-14','17:44:00',1,1,'6',1,0,1,0),(198,26,'SKOL','6.50',1,0,'2018-05-14','17:44:00',1,1,'6',1,0,1,0),(199,26,'SKOL','6.50',1,0,'2018-05-14','17:44:00',1,1,'6',1,0,1,0),(200,26,'SKOL','6.50',1,0,'2018-05-14','17:44:00',1,1,'6',0,0,0,0),(201,26,'SKOL','6.50',1,0,'2018-05-14','17:44:00',1,1,'6',0,0,0,0),(202,28,'ANTARTICA','5.50',1,0,'2018-05-14','17:44:00',1,1,'6',1,0,1,0),(203,28,'ANTARTICA','5.50',1,0,'2018-05-14','17:44:00',1,1,'6',1,0,1,0),(204,28,'ANTARTICA','5.50',1,0,'2018-05-14','17:44:00',1,1,'6',1,0,1,0),(205,12,'Moqueca Capixaba','65.00',1,0,'2018-05-14','17:45:00',1,1,'6',0,1,0,1),(206,12,'Moqueca Capixaba','65.00',1,0,'2018-05-14','17:58:00',2,1,'6',0,1,0,0),(207,12,'Moqueca Capixaba','65.00',1,0,'2018-05-14','17:58:00',2,1,'6',0,1,0,0),(208,12,'Moqueca Capixaba','65.00',1,0,'2018-05-14','18:13:00',2,1,'6',0,1,0,0),(209,28,'ANTARTICA','5.50',1,0,'2018-05-14','18:13:00',2,1,'6',0,0,0,0),(210,28,'ANTARTICA','5.50',1,0,'2018-05-14','18:13:00',2,1,'6',0,0,0,0),(211,15,'Frango c/ Catupiry','35.00',1,0,'2018-05-14','18:19:00',1,1,'6',0,1,0,0),(212,18,'Á Moda','38.00',1,0,'2018-05-15','01:03:00',4,1,'1',0,0,0,0),(213,17,'Bacon','35.00',1,0,'2018-05-15','01:03:00',4,1,'1',0,1,0,0),(214,28,'ANTARTICA','5.50',1,0,'2018-05-15','01:07:00',4,1,'1',0,0,0,0),(215,18,'Á Moda','38.00',1,0,'2018-05-15','01:10:00',4,1,'1',0,0,0,0);
/*!40000 ALTER TABLE `tbl_carrinho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_produtos`
--

DROP TABLE IF EXISTS `tbl_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_produtos` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `img` varchar(36) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `id_categoria` int(30) NOT NULL,
  `destino` int(1) NOT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_produtos`
--

LOCK TABLES `tbl_produtos` WRITE;
/*!40000 ALTER TABLE `tbl_produtos` DISABLE KEYS */;
INSERT INTO `tbl_produtos` VALUES (9,'Traíra Completa','','74.90',9,1,NULL),(10,'Traíra Média','','64.90',9,1,NULL),(11,'Traíra Pequena','','54.90',9,1,NULL),(12,'Moqueca Capixaba','','65.00',9,1,NULL),(13,'Portuguesa','','35.00',2,1,NULL),(14,'Frango','','35.00',2,1,NULL),(15,'Frango c/ Catupiry','','35.00',2,1,NULL),(16,'Calabresa','','35.00',2,1,NULL),(17,'Bacon','','35.00',2,1,NULL),(18,'Á Moda','','38.00',2,0,NULL),(19,'Filé c/ Fritas','','37.00',10,1,NULL),(20,'Lombo c/ Fritas','','32.00',10,1,NULL),(21,'Língua ao Molho Madeira','','15.00',10,1,NULL),(22,'Arroz','','6.00',10,1,NULL),(23,'Pirão','','6.00',10,1,NULL),(24,'Fritas','','12.00',10,1,NULL),(25,'Salada Completa','','15.00',10,1,NULL),(26,'SKOL','','6.50',5,0,NULL),(27,'BRAHMA','','6.40',5,0,NULL),(28,'ANTARTICA','','5.50',5,0,NULL),(29,'Cerveja Lata','','3.50',5,0,NULL),(30,'Ice','','6.50',5,0,NULL),(31,'Whisk','','15.00',6,0,NULL),(33,'Bacardi','','8.00',6,0,NULL),(34,'Martini','','8.00',6,0,NULL),(35,'Campari','','8.00',6,0,NULL),(36,'Conhaque','','6.00',6,0,NULL),(37,'Vodka','','8.00',6,0,NULL),(38,'Licor de Menta','','6.00',6,0,NULL),(39,'Cachaça','','4.00',6,0,NULL),(40,'Cuba','','10.00',6,0,NULL),(41,'Caipirinha','','9.00',6,0,NULL),(42,'Amarula','','10.00',6,0,NULL),(43,'2 Litros','','7.00',7,0,NULL),(44,'1,25 Litros','','6.00',7,0,NULL),(45,'1 Litro','','5.00',7,0,NULL),(46,'600 ML','','4.50',7,0,NULL),(47,'500 ML','','4.50',7,0,NULL),(48,'Lata 350 ML','','3.50',7,0,NULL),(49,'Feijão','','10.00',4,1,NULL),(50,'Pinto','','10.00',4,1,NULL),(51,'água c/ Gás','','2.00',8,0,NULL),(52,'Água sem Gás','','2.00',8,0,NULL),(53,'Skol lata','','4.00',5,0,NULL),(54,'Salame Italiano Fino','','35.00',19,1,NULL);
/*!40000 ALTER TABLE `tbl_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Adriano Faria Alves','adriano','adriano.faria@gmail.com','d532bf670834a6373bf9fd5d94b5094c',NULL,NULL,NULL),(13,'Camila Teste','adriano.faria@gmail.com','adriano.faria@gmail.com2','$2y$10$r2VFSZ9gX3NIlP1nY35fQeLuf3..LwZV14p./gchJMPUNB2iVNETy',NULL,'2018-03-16 22:14:20','2018-03-16 22:14:20'),(14,'Exata','exata','exata@exatasistemas.com','$2y$10$iVBAFABeTm3mD6qan9nyGOzTT34j9fgueG30UwWP4QOW9jQ5WpH2.',NULL,'2018-04-25 19:51:16','2018-04-25 19:51:16');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-25 18:40:07
