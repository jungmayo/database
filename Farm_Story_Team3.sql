-- MySQL Workbench Forward Engineering
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
-- -----------------------------------------------------
-- Schema farm_story
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema farm_story
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `farm_story` DEFAULT CHARACTER SET utf8 ;
USE `farm_story` ;
-- -----------------------------------------------------
-- Table `farm_story`.`term`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farm_story`.`term` (
  `term_name` VARCHAR(45) NOT NULL,
  `term_content` TEXT NOT NULL,
  PRIMARY KEY (`term_name`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `farm_story`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farm_story`.`user` (
  `uid` VARCHAR(50) NOT NULL,
  `pass` VARCHAR(50) NOT NULL,
  `nick` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `hp` CHAR(13) NOT NULL,
  `grade` VARCHAR(20) NOT NULL,
  `zip` VARCHAR(20) NOT NULL,
  `addr1` VARCHAR(100) NOT NULL,
  `addr2` VARCHAR(200) NULL,
  `regip` VARCHAR(40) NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (`uid`),
  UNIQUE INDEX `nick_UNIQUE` (`nick` ASC) VISIBLE,
  UNIQUE INDEX `hp_UNIQUE` (`hp` ASC) VISIBLE)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `farm_story`.`article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farm_story`.`article` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `content` TEXT NOT NULL,
  `views` INT NOT NULL DEFAULT 0,
  `group` VARCHAR(20) NOT NULL,
  `cate` VARCHAR(20) NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `user_uid` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_article_user1_idx` (`user_uid` ASC) VISIBLE,
  CONSTRAINT `fk_article_user1`
    FOREIGN KEY (`user_uid`)
    REFERENCES `farm_story`.`user` (`uid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `farm_story`.`article_file`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farm_story`.`article_file` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `origin_name` VARCHAR(100) NOT NULL,
  `stored_name` VARCHAR(100) NOT NULL,
  `created_at` DATETIME NULL DEFAULT NOW(),
  `article_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_article_file_article1_idx` (`article_id` ASC) VISIBLE,
  CONSTRAINT `fk_article_file_article1`
    FOREIGN KEY (`article_id`)
    REFERENCES `farm_story`.`article` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `farm_story`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farm_story`.`product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `type` VARCHAR(20) NOT NULL,
  `price` INT NOT NULL DEFAULT 0,
  `point` INT NOT NULL DEFAULT 0,
  `discount` INT NOT NULL DEFAULT 0,
  `delivery_fee` INT NOT NULL DEFAULT 0,
  `stock` INT NOT NULL DEFAULT 0,
  `img1` VARCHAR(100) NULL,
  `img2` VARCHAR(100) NULL,
  `img3` VARCHAR(100) NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `etc` TEXT NULL,
  `user_uid1` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_product_user1_idx` (`user_uid1` ASC) VISIBLE,
  CONSTRAINT `fk_product_user1`
    FOREIGN KEY (`user_uid1`)
    REFERENCES `farm_story`.`user` (`uid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `farm_story`.`point`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farm_story`.`point` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `points` INT NOT NULL,
  `description` VARCHAR(100) NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `user_uid` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_point_user_idx` (`user_uid` ASC) VISIBLE,
  CONSTRAINT `fk_point_user`
    FOREIGN KEY (`user_uid`)
    REFERENCES `farm_story`.`user` (`uid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `farm_story`.`cart`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farm_story`.`cart` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `count` INT NOT NULL DEFAULT 1,
  `product_id` INT NOT NULL,
  `user_uid` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cart_product1_idx` (`product_id` ASC) VISIBLE,
  INDEX `fk_cart_user1_idx` (`user_uid` ASC) VISIBLE,
  CONSTRAINT `fk_cart_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `farm_story`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cart_user1`
    FOREIGN KEY (`user_uid`)
    REFERENCES `farm_story`.`user` (`uid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `farm_story`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farm_story`.`order` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `point` INT NOT NULL DEFAULT 0,
  `receiver` VARCHAR(45) NOT NULL,
  `receiver_hp` CHAR(13) NOT NULL,
  `zip` VARCHAR(20) NOT NULL,
  `addr1` VARCHAR(100) NOT NULL,
  `addr2` VARCHAR(200) NULL,
  `pay_method` VARCHAR(45) NOT NULL,
  `etc` TEXT NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `user_uid` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_order_user1_idx` (`user_uid` ASC) VISIBLE,
  CONSTRAINT `fk_order_user1`
    FOREIGN KEY (`user_uid`)
    REFERENCES `farm_story`.`user` (`uid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `farm_story`.`order_item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farm_story`.`order_item` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `price` INT NOT NULL,
  `point` INT NOT NULL,
  `discount` INT NOT NULL,
  `delivery_fee` INT NOT NULL,
  `count` INT NOT NULL,
  `order_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_order_item_order1_idx` (`order_id` ASC) VISIBLE,
  INDEX `fk_order_item_product1_idx` (`product_id` ASC) VISIBLE,
  CONSTRAINT `fk_order_item_order1`
    FOREIGN KEY (`order_id`)
    REFERENCES `farm_story`.`order` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_item_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `farm_story`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `farm_story`.`comment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farm_story`.`comment` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `content` TEXT NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `article_id` INT NOT NULL,
  `user_uid` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_comment_article1_idx` (`article_id` ASC) VISIBLE,
  INDEX `fk_comment_user1_idx` (`user_uid` ASC) VISIBLE,
  CONSTRAINT `fk_comment_article1`
    FOREIGN KEY (`article_id`)
    REFERENCES `farm_story`.`article` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comment_user1`
    FOREIGN KEY (`user_uid`)
    REFERENCES `farm_story`.`user` (`uid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;