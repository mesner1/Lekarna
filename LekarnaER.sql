-- MySQL Script generated by MySQL Workbench
-- Thu May 24 08:08:53 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema lekarna
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lekarna
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lekarna` DEFAULT CHARACTER SET utf8 ;
USE `lekarna` ;

-- -----------------------------------------------------
-- Table `lekarna`.`dopolnilo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lekarna`.`dopolnilo` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `naziv` VARCHAR(45) NOT NULL,
  `naRecept` TINYINT(4) NOT NULL,
  `trajanje` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `lekarna`.`kartoteka`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lekarna`.`kartoteka` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `ime` VARCHAR(45) NOT NULL,
  `priimek` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `lekarna`.`tip`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lekarna`.`tip` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `naziv` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `lekarna`.`zapis`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lekarna`.`zapis` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `cas` DATE NOT NULL,
  `kartoteka_id` INT(11) NOT NULL,
  `tip_id` INT(11) NOT NULL,
  `avtor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_zapis_kartoteka_idx` (`kartoteka_id` ASC),
  INDEX `fk_zapis_tip1_idx` (`tip_id` ASC),
  CONSTRAINT `fk_zapis_kartoteka`
    FOREIGN KEY (`kartoteka_id`)
    REFERENCES `lekarna`.`kartoteka` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_zapis_tip1`
    FOREIGN KEY (`tip_id`)
    REFERENCES `lekarna`.`tip` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `lekarna`.`zapis_dopolnilo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lekarna`.`zapis_dopolnilo` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `dopolnilo_id` INT(11) NOT NULL,
  `zapis_id` INT(11) NOT NULL,
  `kolicina` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_zapis_zd_zdravilo/dopolnilo1_idx` (`dopolnilo_id` ASC),
  INDEX `fk_zapis_zd_zapis1_idx` (`zapis_id` ASC),
  CONSTRAINT `fk_zapis_zd_zapis1`
    FOREIGN KEY (`zapis_id`)
    REFERENCES `lekarna`.`zapis` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_zapis_zd_zdravilo/dopolnilo1`
    FOREIGN KEY (`dopolnilo_id`)
    REFERENCES `lekarna`.`dopolnilo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 14
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
