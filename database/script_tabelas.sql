-- MySQL Script generated by MySQL Workbench
-- Thu Mar  9 14:11:42 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema grupo5
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema grupo5
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `grupo5` DEFAULT CHARACTER SET utf8 ;
USE `grupo5` ;

-- -----------------------------------------------------
-- Table `grupo5`.`tb_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `grupo5`.`tb_usuario` (
  `id` BIGINT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `grupo5`.`tb_tema`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `grupo5`.`tb_tema` (
  `id` BIGINT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(255) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `grupo5`.`tb_postagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `grupo5`.`tb_postagem` (
  `id` BIGINT NULL AUTO_INCREMENT,
  `data` DATETIME NOT NULL,
  `legenda` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(255) NOT NULL,
  `titulo` VARCHAR(255) NOT NULL,
  `tb_usuario_id` BIGINT NOT NULL,
  `tb_tema_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_postagem_tb_usuario_idx` (`tb_usuario_id` ASC) VISIBLE,
  INDEX `fk_tb_postagem_tb_tema1_idx` (`tb_tema_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_postagem_tb_usuario`
    FOREIGN KEY (`tb_usuario_id`)
    REFERENCES `grupo5`.`tb_usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_postagem_tb_tema1`
    FOREIGN KEY (`tb_tema_id`)
    REFERENCES `grupo5`.`tb_tema` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
