-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: user_db
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cognome` varchar(100) DEFAULT NULL,
  `dati_sensibili` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'giulia_verdi','securepass01','Giulia','Verdi','Contatti bancari'),(2,'luca_bianchi','pass1234!','Luca','Bianchi','Cartella medica'),(3,'anna_rossi','qwerty987','Anna','Rossi','Dati fiscali'),(4,'samuel_neri','password456','Samuel','Neri','Stipendio annuale'),(5,'sofia_gialli','sofia@2023','Sofia','Gialli','Investimenti personali'),(6,'davide_grigi','d4v1de2024','Davide','Grigi','Patrimonio immobiliare'),(7,'marta_azzurri','mart4pwd','Marta','Azzurri','Contratto di lavoro'),(8,'alessio_rossi','al3ss10pass','Alessio','Rossi','Storico di viaggio'),(9,'chiara_blu','bluChi@123','Chiara','Blu','Informazioni sanitarie'),(10,'federico_arancioni','f3d2023!','Federico','Arancioni','Fondi pensione'),(11,'valentina_viola','Vi0laPass!','Valentina','Viola','Codice fiscale'),(12,'simone_nocciola','simone99$','Simone','Nocciola','Dettagli assicurativi'),(13,'maria_paglia','m4r1a@pwd','Maria','Paglia','Dati patrimoniali'),(14,'gabriele_granata','gabr1e13pwd','Gabriele','Granata','Proprietà aziendali'),(15,'francesca_oliva','oliv4pass@','Francesca','Oliva','Storico dei crediti'),(16,'andrea_perla','andr34safe','Andrea','Perla','Investimenti in borsa'),(17,'ilaria_rubino','rUb1no!234','Ilaria','Rubino','Dettagli contrattuali'),(18,'paolo_ocra','pa0lo1990!','Paolo','Ocra','Dati sensibili aziendali'),(19,'serena_crema','crema@serena','Serena','Crema','Storico delle polizze'),(20,'giulia_puorto','fiore<3_pwd','Giulia','Puorto','Dati riservati personali'),(21,'ludovica_ambra','amb1234!','Ludovica','Ambra','Movimenti bancari'),(22,'giorgio_agata','4g4ta2023','Giorgio','Agata','Residenza legale'),(23,'beatrice_lilla','L1llaPwd','Beatrice','Lilla','Informazioni notarili'),(24,'claudio_indaco','ind@co2024','Claudio','Indaco','Dati personali riservati'),(25,'laura_zaffiro','z4ff1r0_pwd','Laura','Zaffiro','Report finanziari');
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

-- Dump completed on 2024-12-15 12:22:58
