-- academy_db.LIBRI definition

CREATE TABLE `LIBRI` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titolo` text,
  `autore` text,
  `genere` text,
  `anno` int DEFAULT NULL,
  `prezzo` decimal(10,2) DEFAULT NULL,
  `disponibile` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;