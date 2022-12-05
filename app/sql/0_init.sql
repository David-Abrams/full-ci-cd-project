
CREATE DATABASE IF NOT EXISTS `app-database`;


USE `app-database`
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `bio` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10001 ;
