-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema virtualizacion
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema virtualizacion
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `virtualizacion` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `virtualizacion` ;

-- -----------------------------------------------------
-- Table `virtualizacion`.`estudiante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `virtualizacion`.`estudiante` (
  `idEstudiante` INT NOT NULL,
  `nombre` NVARCHAR(45) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `apellido` NVARCHAR(45) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `edad` INT NULL DEFAULT NULL,
  `email` NVARCHAR(60) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `legajo` INT NULL DEFAULT NULL,
  `comision` NVARCHAR(5) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  'urlImagenPerfil' NVARCHAR(200) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL
  PRIMARY KEY (`idEstudiante`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `virtualizacion`.`trabajofinal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `virtualizacion`.`trabajofinal` (
  `idTrabajoFinal` INT NOT NULL,
  `urlTrabajoFinal` NVARCHAR(200) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `idEstudiante` INT NULL DEFAULT NULL,
  PRIMARY KEY (`idTrabajoFinal`),
  INDEX `idEstudiante_idx` (`idEstudiante` ASC) VISIBLE,
  CONSTRAINT `idEstudiante`
    FOREIGN KEY (`idEstudiante`)
    REFERENCES `virtualizacion`.`estudiante` (`idEstudiante`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- LLENAR TABLAS
--
INSERT INTO `virtualizacion`.`estudiante` (`idEstudiante`, `nombre`, `apellido`, `edad`, `email`, `legajo`, `comision`, 'urlImagenPerfil') VALUES ('1', 'Javier Alfredo', 'Paez Lopez', '24', 'javier.paezlopez@alu.frt.utn.edu.ar', '47413', '5K3', 'https://drive.google.com/file/d/1oX7l5pT_zyhlRQss2jJFzAAKM96FLyff/view?usp=sharing');
--CAMBIAR LA URL CUANDO TENGA LA URL DEL trabajo final
INSERT INTO `virtualizacion`.`trabajofinal` (`idTrabajoFinal`, `urlTrabajoFinal`, `idEstudiante`) VALUES ('1', 'URL', '1');
