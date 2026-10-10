#
# TABLE STRUCTURE FOR: Members
#

DROP TABLE IF EXISTS `Members`;

CREATE TABLE `Members` (
  `Member_id` int(11) NOT NULL AUTO_INCREMENT,
  `Member_name` varchar(20) DEFAULT NULL,
  `Member_sex` varchar(1) DEFAULT NULL,
  `Member_age` int(11) DEFAULT NULL,
  PRIMARY KEY (`Member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (1, ' Kareem', 'm', 53);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (2, ' Yara', 'f', 12);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (3, ' Tala', 'f', 24);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (4, ' Khaled', 'm', 45);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (5, ' Malak', 'f', 76);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (6, ' Raouf', 'm', 76);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (7, ' Salma', 'f', 43);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (8, ' Tamer', 'm', 98);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (9, ' Medhat', 'm', 62);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (10, ' Habiba', 'f', 33);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (11, ' Nouran', 'f', 84);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (12, ' Mahmoud', 'm', 42);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (13, ' Hoda', 'f', 71);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (14, ' Menna', 'f', 44);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (15, ' Maya', 'f', 76);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (16, ' Haitham', 'f', 16);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (17, ' Rawan', 'f', 92);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (18, ' Yahya', 'm', 17);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (19, ' Omar', 'm', 82);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (20, ' Shady', 'm', 95);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (21, 'Ahmed', 'm', 47);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (22, ' Leen', 'f', 49);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (23, ' Mohamed', 'm', 41);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (24, ' Amr', 'm', 94);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (25, ' Zeina', 'm', 98);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (26, ' Waleed', 'm', 78);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (27, ' Joumana', 'f', 61);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (28, ' Hamza', 'm', 17);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (29, ' Karma', 'f', 77);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (30, ' Mariam', 'f', 75);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (31, ' Hala', 'f', 55);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (32, ' Farah', 'f', 69);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (33, ' Hany', 'm', 71);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (34, ' Lujain', 'f', 72);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (35, ' Layla', 'f', 100);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (36, ' Adam', 'm', 99);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (37, ' Ramy', 'm', 58);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (38, ' Razan', 'f', 46);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (39, ' Anwar', 'm', 53);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (40, ' Majed', 'm', 59);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (41, ' Sameh', 'm', 11);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (42, ' Reem', 'f', 94);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (43, ' Ghalia', 'f', 88);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (44, ' Amira', 'f', 34);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (45, ' Nadine', 'f', 85);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (46, ' Magdy', 'm', 33);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (47, ' Dina', 'f', 39);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (48, ' Ibrahim', 'm', 96);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (49, ' Ashraf', 'm', 25);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (50, ' Youssef', 'm', 12);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (51, ' Saeed', 'm', 44);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (52, ' Judy', 'f', 62);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (53, ' Sara', 'f', 11);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (54, ' Ziad', 'm', 97);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (55, ' Joud', 'f', 35);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (56, ' Mona', 'f', 36);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (57, ' Hisham', 'm', 14);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (58, ' Wael', 'm', 35);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (59, ' Hana', 'm', 12);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (60, ' Mustafa', 'm', 17);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (61, ' Yasmin', 'f', 77);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (62, ' Ali', 'm', 12);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (63, ' Hussein', 'm', 42);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (64, ' Safia', 'f', 28);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (65, ' Hazem', 'm', 84);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (66, ' Aya', 'f', 47);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (67, ' Lana', 'f', 51);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (68, ' Bassem', 'm', 29);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (69, ' Fatima', 'f', 52);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (71, ' Fady', 'm', 82);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (72, ' Haya', 'f', 56);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (73, ' Ezz', 'm', 83);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (74, ' Yassin', 'm', 16);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (75, ' Adel', 'm', 26);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (76, ' Sherif', 'm', 94);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (77, ' Laila', 'f', 88);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (78, ' Sherine', 'f', 30);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (79, ' Shahd', 'f', 32);
INSERT INTO `Members` (`Member_id`, `Member_name`, `Member_sex`, `Member_age`) VALUES (80, ' Jumana', 'f', 61);


