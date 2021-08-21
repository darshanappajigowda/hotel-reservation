# hotel-reservation

MySQL create statements - 
Schema:
CREATE DATABASE `hotel_reservation` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

Tables:
CREATE TABLE `city` (
  `id` varchar(10) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `hotel` (
  `id` varchar(20) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `room_type` varchar(45) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `gst` decimal(10,0) DEFAULT NULL,
  KEY `id_idx` (`city`),
  CONSTRAINT `id` FOREIGN KEY (`city`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
