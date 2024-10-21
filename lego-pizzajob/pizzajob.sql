INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_pizzajob', 'Luchetti`s Pizza', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_pizzajob', 'Luchetti`s Pizza', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_pizzajob', 'Luchetti`s Pizza', 1)
;

INSERT INTO `jobs` (name, label, whitelisted, image) VALUES
	('pizzajob', 'Luchetti`s Pizza', 1, 'business.png')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('pizzajob',0,'recruit','Elev', 100,'{}','{}'),
	('pizzajob',1,'recruit','Medarbejder', 200,'{}','{}'),
	('pizzajob',2,'recruit','Erfaren Medarbejder',300,'{}','{}'),
    ('pizzajob',3,'recruit','KontorChef',400,'{}','{}'),
	('pizzajob',4,'boss','Resturant Chef',500,'{}','{}'),
	('pizzajob',5,'boss','Ejer',600,'{}','{}')
;