
ALTER TABLE `properties` ADD COLUMN `garage` varchar(255) DEFAULT NULL
AFTER `room_menu`;

CREATE TABLE `user_parkings` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `plate` varchar(60) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `zone` longtext,
  `vehicle` longtext,

  PRIMARY KEY (`id`)
);

CREATE TABLE `owned_vehicles` (
	`owner` varchar(40) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`vehicle` longtext,
	`type` VARCHAR(20) NOT NULL DEFAULT 'car',
	`job` VARCHAR(20) NULL DEFAULT NULL,
	`stored` TINYINT NOT NULL DEFAULT '0',

	PRIMARY KEY (`plate`)
);

ALTER TABLE `owned_vehicles` ADD `state` BOOLEAN NOT NULL DEFAULT FALSE COMMENT 'Etat de la voiture' AFTER `owner`;

ALTER TABLE `owned_vehicles` ADD COLUMN  `garageperso` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Garage Personnel'

--- Job

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_realestateagent','Agent immobilier',1)
;

INSERT INTO `jobs` (name, label) VALUES
	('realestateagent','Agent immobilier')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('realestateagent',0,'location','Location',10,'{}','{}'),
	('realestateagent',1,'vendeur','Vendeur',25,'{}','{}'),
	('realestateagent',2,'gestion','Gestion',40,'{}','{}'),
	('realestateagent',3,'boss','Patron',0,'{}','{}')
;

