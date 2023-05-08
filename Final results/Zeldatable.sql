-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema zelda
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema zelda
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `zelda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `zelda` ;

-- -----------------------------------------------------
-- Table `zelda`.`Games`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zelda`.`Games` (
  `Titles` VARCHAR(45) NOT NULL,
  `Description` VARCHAR(45) NULL,
  `Developer` VARCHAR(45) NULL,
  `Publisher` VARCHAR(45) NULL,
  `Release date` VARCHAR(45) NULL,
  `id` VARCHAR(45) NULL,
  `Release by system` VARCHAR(45) NULL,
  `Metascore` VARCHAR(45) NULL,
  PRIMARY KEY (`Titles`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
