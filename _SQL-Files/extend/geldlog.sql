CREATE DATABASE IF NOT EXISTS `arma3life`;
USE `arma3life`;

CREATE TABLE IF NOT EXISTS `geldlog` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `von` varchar(50) NOT NULL,
  `zu` varchar(50) NOT NULL,
  `betrag` int(100) NOT NULL,
  `curatm` int(100) NOT NULL,
  `curcash` int(100) NOT NULL,
  `type` text NOT NULL,
  `vonname` varchar(50) NOT NULL,
  `zuname` varchar(50) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;