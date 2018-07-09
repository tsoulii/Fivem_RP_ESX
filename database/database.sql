CREATE DATABASE IF NOT EXISTS `essentialmode` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `essentialmode`;

-- Dumping structure for table essentialmode.users
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `addon_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

ALTER TABLE `users`
  ADD COLUMN `name` VARCHAR(255) NULL DEFAULT '' AFTER `money`,
  ADD COLUMN `skin` LONGTEXT NULL AFTER `name`,
  ADD COLUMN `job` varchar(255) NULL DEFAULT 'unemployed' AFTER `skin`,
  ADD COLUMN `job_grade` INT NULL DEFAULT 0 AFTER `job`,
  ADD COLUMN `loadout` LONGTEXT NULL AFTER `job_grade`,
  ADD COLUMN `position` VARCHAR(255) NULL AFTER `loadout`
;

CREATE TABLE `items` (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '-1',
  `rare` int(11) NOT NULL DEFAULT '0',
  `can_remove` int(11) NOT NULL DEFAULT '1',

  PRIMARY KEY (`id`)
);

CREATE TABLE `job_grades` (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,

  PRIMARY KEY (`id`)
);

INSERT INTO `job_grades` VALUES (1,'unemployed',0,'rsa','RSA',200,'{}','{}');

CREATE TABLE `jobs` (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,

  PRIMARY KEY (`id`)
);

INSERT INTO `jobs` VALUES (1,'unemployed','Chômeur');

CREATE TABLE `user_accounts` (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` double NOT NULL DEFAULT '0',

  PRIMARY KEY (`id`)
);

CREATE TABLE `user_inventory` (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,

  PRIMARY KEY (`id`)
);
CREATE TABLE `user_contacts` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`identifier` varchar(255) NOT NULL,
	`name` varchar(255) NOT NULL,
	`number` int(11) NOT NULL,
	
	PRIMARY KEY (`id`)
);

ALTER TABLE `users`
	ADD COLUMN `phone_number` INT NULL
;
CREATE TABLE `society_moneywash` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`identifier` varchar(60) NOT NULL,
	`society` varchar(60) NOT NULL,
	`amount` int(11) NOT NULL,

	PRIMARY KEY (`id`)
);



