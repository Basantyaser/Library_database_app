#
# TABLE STRUCTURE FOR: Categories
#

DROP TABLE IF EXISTS `Categories`;

CREATE TABLE `Categories` (
  `Category_id` int(11) NOT NULL AUTO_INCREMENT,
  `Category_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (1, ' Memoir');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (2, ' Childrens Literatu');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (3, ' Sci-Fi');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (4, ' Childrens Literatu');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (5, ' Memoir');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (6, 'Fiction');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (7, ' Business');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (8, ' Historical Fiction');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (9, ' Autobiography');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (10, ' Childrens Literatu');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (11, ' Drama');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (12, ' Art');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (13, ' Travel');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (14, ' Science');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (15, ' Mystery');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (16, ' Historical Fiction');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (17, ' True Crime');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (18, ' Finance');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (19, ' Biography');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (20, ' Mystery');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (21, ' Thriller');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (22, ' Horror');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (23, ' Technology');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (24, ' Thriller');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (25, ' Business');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (26, ' Romance');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (27, ' Historical Fiction');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (28, ' Young Adult');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (29, ' Science');
INSERT INTO `Categories` (`Category_id`, `Category_name`) VALUES (30, ' Travel');


