-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema bgq3zfl98vhlqgulqlmm
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bgq3zfl98vhlqgulqlmm
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bgq3zfl98vhlqgulqlmm` DEFAULT CHARACTER SET utf8 ;
USE `bgq3zfl98vhlqgulqlmm` ;

-- -----------------------------------------------------
-- Table `bgq3zfl98vhlqgulqlmm`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bgq3zfl98vhlqgulqlmm`.`usuarios` (
  `id_usuarios` INT(11) NOT NULL AUTO_INCREMENT,
  `placaCarro` VARCHAR(6) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `apellido` VARCHAR(45) NULL DEFAULT NULL,
  `correo` VARCHAR(45) NULL DEFAULT NULL,
  `genero` VARCHAR(45) NULL DEFAULT NULL,
  `comumento` VARCHAR(45) NULL DEFAULT NULL,
  `tipo_documento` VARCHAR(45) NULL DEFAULT NULL,
  UNIQUE INDEX `id` (`id_usuarios` ASC) VISIBLE,
  PRIMARY KEY (`id_usuarios`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bgq3zfl98vhlqgulqlmm`.`vehiculos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bgq3zfl98vhlqgulqlmm`.`vehiculos` (
  `id_vehiculos` INT(11) NOT NULL AUTO_INCREMENT,
  `placa` VARCHAR(20) NULL DEFAULT NULL,
  `tipo` VARCHAR(20) NULL DEFAULT NULL,
  `color` VARCHAR(20) NULL DEFAULT NULL,
  `marca` VARCHAR(45) NULL DEFAULT NULL,
  `create_at` TIMESTAMP NULL DEFAULT NULL,
  `update_at` TIMESTAMP NULL DEFAULT NULL,
  `usuarios_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  UNIQUE INDEX `id` (`id_vehiculos` ASC) VISIBLE,
  PRIMARY KEY (`id_vehiculos`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bgq3zfl98vhlqgulqlmm`.`vehiculos_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bgq3zfl98vhlqgulqlmm`.`vehiculos_usuarios` (
  `id_puente` INT NOT NULL,
  `id_usuarios` INT NOT NULL,
  `id_vehiculos` INT NOT NULL,
  PRIMARY KEY (`id_puente`),
  UNIQUE INDEX `id_usuarios_UNIQUE` (`id_usuarios` ASC) VISIBLE,
  UNIQUE INDEX `id_vehiculos_UNIQUE` (`id_vehiculos` ASC) VISIBLE,
  CONSTRAINT `id_usuarios`
    FOREIGN KEY ()
    REFERENCES `bgq3zfl98vhlqgulqlmm`.`usuarios` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_vehiculos`
    FOREIGN KEY ()
    REFERENCES `bgq3zfl98vhlqgulqlmm`.`vehiculos` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
