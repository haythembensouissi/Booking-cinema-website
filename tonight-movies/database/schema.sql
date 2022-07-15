-- MySQL Script generated by MySQL Workbench
-- Tue Jul 12 17:47:24 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering



-- -----------------------------------------------------
-- Schema cinemadb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cinemadb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cinemadb` DEFAULT CHARACTER SET utf8 ;
USE `cinemadb` ;

-- -----------------------------------------------------
-- Table `cinemadb`.`movies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies` (
  `idmovie` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) ,
  `desc` VARCHAR(255) ,
  `time` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `imgurl` VARCHAR(255) ,
  `categorie` VARCHAR(45) ,
  PRIMARY KEY (`idmovie`));



-- -----------------------------------------------------
-- Table `cinemadb`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `users` (
  `idusers` INT NOT NULL AUTO_increment ,
  `username` VARCHAR(45) UNIQUE  ,
  `password` VARCHAR(45) ,
  `email` VARCHAR(45) ,
  `idmovie` INT ,
  PRIMARY KEY (`idusers`),
  INDEX `idmovie_idx` (`idmovie` ASC) VISIBLE,
  CONSTRAINT `idmovie`
    FOREIGN KEY (`idmovie`)
    REFERENCES `cinemadb`.`movies` (`idmovie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


CREATE TABLE IF NOT EXISTS chairs(
  idchairs INT NOT NULL AUTO_increment ,
  chair1 VARCHAR(45) NOT NULL default 'empty',
  chair2 VARCHAR(45) NOT NULL default 'empty',
  chair3 VARCHAR(45) NOT NULL default 'empty',
  chair4 VARCHAR(45) NOT NULL default 'empty',
  chair5 VARCHAR(45) NOT NULL default 'empty',
  chair6 VARCHAR(45) NOT NULL default 'empty',
  chair7 VARCHAR(45) NOT NULL default 'empty',
  chair8 VARCHAR(45) NOT NULL default 'empty',
  chair9 VARCHAR(45) NOT NULL default 'empty',
  chair10 VARCHAR(45) NOT NULL default 'empty',
  chair11 VARCHAR(45) NOT NULL default 'empty',
  chair12 VARCHAR(45) NOT NULL default 'empty',
  chair13 VARCHAR(45) NOT NULL default 'empty',
   chair14 VARCHAR(45) NOT NULL default 'empty',
  chair15 VARCHAR(45) NOT NULL default 'empty',
  chair16 VARCHAR(45) NOT NULL default 'empty',
  chair17 VARCHAR(45) NOT NULL default 'empty',
  chair18 VARCHAR(45) NOT NULL default 'empty',
  chair19 VARCHAR(45) NOT NULL default 'empty',
  chair20 VARCHAR(45) NOT NULL default 'empty',
  chair21 VARCHAR(45) NOT NULL default 'empty',
  chair22 VARCHAR(45) NOT NULL default 'empty',
  chair23 VARCHAR(45) NOT NULL default 'empty',
  chair24 VARCHAR(45) NOT NULL default 'empty',
   chair25 VARCHAR(45) NOT NULL default 'empty',
  chair26 VARCHAR(45) NOT NULL default 'empty',
  chair27 VARCHAR(45) NOT NULL default 'empty',
  chair28 VARCHAR(45) NOT NULL default 'empty',
  chair29 VARCHAR(45) NOT NULL default 'empty',
  chair30 VARCHAR(45) NOT NULL default 'empty',

  idmovie INT,
 PRIMARY KEY (idchairs),
   CONSTRAINT pk1
    FOREIGN KEY (idmovie)
    REFERENCES cinemadb.movies (idmovie)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION

);
    

-- CREATE TABLE IF NOT EXISTS public.users
-- (
--     iduser integer NOT NULL DEFAULT nextval('users_iduser_seq'::regclass),
--     username character varying(20) COLLATE pg_catalog."default" NOT NULL,
--     "email " character varying(20) COLLATE pg_catalog."default",
--     password character varying(10) COLLATE pg_catalog."default",
--     "id movie" integer NOT NULL DEFAULT nextval('"users_id movie_seq"'::regclass),
--     CONSTRAINT users_pkey PRIMARY KEY (iduser)
-- )

-- CREATE TABLE IF NOT EXISTS public.movies
-- (
--     idmovie integer NOT NULL DEFAULT nextval('movies_idmovie_seq'::regclass),
--     name character varying(40)[] COLLATE pg_catalog."default" NOT NULL,
--     "desc" character varying(255) COLLATE pg_catalog."default",
--     categorie character varying(20) COLLATE pg_catalog."default",
--     imgurl character varying(255)[] COLLATE pg_catalog."default",
--     CONSTRAINT movies_pkey PRIMARY KEY (idmovie)
