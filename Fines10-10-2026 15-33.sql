#
# TABLE STRUCTURE FOR: Fines
#

DROP TABLE IF EXISTS `Fines`;

CREATE TABLE `Fines` (
  `Fine_id` int(11) NOT NULL AUTO_INCREMENT,
  `Loan_id` int(11) NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `Reason` varchar(20) DEFAULT NULL,
  `Status` varchar(10) DEFAULT 'UnPaid',
  PRIMARY KEY (`Fine_id`),
  UNIQUE KEY `Loan_id` (`Loan_id`),
  CONSTRAINT `Fines_ibfk_1` FOREIGN KEY (`Loan_id`) REFERENCES `Loans` (`Loan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (1, 1, '19.00', 'Travel Out Of Town', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (2, 2, '23.00', 'System Error ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (3, 3, '16.00', 'Transportation Fail', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (4, 4, '25.00', 'Work Overload ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (5, 5, '24.00', 'Book Misplacement', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (6, 6, '27.00', 'Illness', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (7, 7, '22.00', 'Illness', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (8, 8, '22.00', 'Illness', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (9, 9, '21.00', 'Travel Out Of Town', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (10, 10, '18.00', 'Work Overload ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (11, 11, '22.00', 'Travel Out Of Town', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (12, 12, '22.00', 'Transportation Fail', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (13, 13, '21.00', 'Book Misplacement', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (14, 14, '21.00', 'Transportation Fail', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (15, 15, '29.00', 'Illness', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (16, 16, '16.00', 'Book Misplacement', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (17, 17, '29.00', 'Illness', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (18, 18, '27.00', 'Transportation Fail', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (19, 19, '22.00', 'Book Misplacement', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (20, 20, '19.00', 'Book Misplacement', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (21, 21, '33.00', 'Work Overload ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (22, 22, '31.00', 'Transportation Fail', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (23, 23, '21.00', 'Work Overload ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (24, 24, '35.00', 'Travel Out Of Town', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (25, 25, '25.00', 'Illness', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (26, 26, '19.00', 'Forgot the Due Date', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (27, 27, '21.00', 'System Error ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (28, 28, '29.00', 'Illness', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (29, 29, '19.00', 'Work Overload ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (30, 30, '25.00', 'Travel Out Of Town', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (31, 31, '17.00', 'Work Overload ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (32, 32, '29.00', 'Travel Out Of Town', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (33, 33, '27.00', 'System Error ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (34, 34, '29.00', 'Travel Out Of Town', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (35, 35, '24.00', 'System Error ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (36, 36, '17.00', 'Travel Out Of Town', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (37, 37, '17.00', 'Book Misplacement', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (38, 38, '24.00', 'Book Misplacement', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (39, 39, '34.00', 'Forgot the Due Date', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (40, 40, '15.00', 'Transportation Fail', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (41, 41, '22.00', 'Book Misplacement', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (42, 42, '22.00', 'Book Misplacement', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (43, 43, '17.00', 'Illness', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (44, 44, '27.00', 'Book Misplacement', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (45, 45, '18.00', 'Forgot the Due Date', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (46, 46, '23.00', 'System Error ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (47, 47, '17.00', 'Transportation Fail', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (48, 48, '15.00', 'Transportation Fail', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (49, 49, '32.00', 'System Error ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (50, 50, '18.00', 'System Error ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (51, 51, '32.00', 'Travel Out Of Town', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (52, 52, '16.00', 'Transportation Fail', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (53, 53, '33.00', 'Transportation Fail', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (54, 54, '31.00', 'Book Misplacement', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (55, 55, '18.00', 'System Error ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (56, 56, '27.00', 'System Error ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (57, 57, '15.00', 'Work Overload ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (58, 58, '21.00', 'Illness', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (59, 59, '33.00', 'Transportation Fail', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (60, 60, '32.00', 'System Error ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (61, 61, '31.00', 'Travel Out Of Town', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (62, 62, '24.00', 'Travel Out Of Town', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (63, 63, '21.00', 'Book Misplacement', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (64, 64, '32.00', 'Illness', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (65, 65, '17.00', 'Illness', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (66, 66, '29.00', 'Illness', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (67, 67, '17.00', 'Work Overload ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (68, 68, '22.00', 'System Error ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (69, 69, '19.00', 'Travel Out Of Town', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (70, 70, '26.00', 'Travel Out Of Town', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (71, 71, '34.00', 'System Error ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (72, 72, '21.00', 'Book Misplacement', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (73, 73, '29.00', 'Work Overload ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (74, 74, '32.00', 'Illness', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (75, 75, '28.00', 'Travel Out Of Town', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (76, 76, '28.00', 'Travel Out Of Town', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (77, 77, '23.00', 'Travel Out Of Town', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (78, 78, '28.00', 'Work Overload ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (79, 79, '22.00', 'Work Overload ', '');
INSERT INTO `Fines` (`Fine_id`, `Loan_id`, `Amount`, `Reason`, `Status`) VALUES (80, 80, '24.00', 'Illness', '');


