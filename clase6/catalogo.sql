-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema introdb64992
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema introdb64992
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `introdb64992` DEFAULT CHARACTER SET utf8 ;
USE `introdb64992` ;

-- -----------------------------------------------------
-- Table `introdb64992`.`marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introdb64992`.`marcas` (
  `idMarca` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `mkNombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idMarca`),
  UNIQUE INDEX `mkNombre_UNIQUE` (`mkNombre` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introdb64992`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introdb64992`.`categorias` (
  `idCategoria` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `catNombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE INDEX `catNombre_UNIQUE` (`catNombre` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introdb64992`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introdb64992`.`productos` (
  `idProducto` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `prdNombre` VARCHAR(45) NOT NULL,
  `prdPrecio` FLOAT(8,2) UNSIGNED NOT NULL,
  `idMarca` TINYINT UNSIGNED NOT NULL,
  `idCategorias` TINYINT UNSIGNED NOT NULL,
  `prdDescripcion` VARCHAR(1000) NOT NULL,
  `prdImagen` VARCHAR(45) NOT NULL,
  `prdActivo` TINYINT(1) NOT NULL,
  PRIMARY KEY (`idProducto`),
  UNIQUE INDEX `prdNombre_UNIQUE` (`prdNombre` ASC) VISIBLE,
  INDEX `fk_productos_categorias_idx` (`idCategorias` ASC) VISIBLE,
  INDEX `fk_productos_marcas1_idx` (`idMarca` ASC) VISIBLE,
  CONSTRAINT `fk_productos_categorias`
    FOREIGN KEY (`idCategorias`)
    REFERENCES `introdb64992`.`categorias` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_productos_marcas1`
    FOREIGN KEY (`idMarca`)
    REFERENCES `introdb64992`.`marcas` (`idMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
