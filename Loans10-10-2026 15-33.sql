#
# TABLE STRUCTURE FOR: Loans
#

DROP TABLE IF EXISTS `Loans`;

CREATE TABLE `Loans` (
  `Loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `Member_id` int(11) NOT NULL,
  `Book_id` int(11) NOT NULL,
  `Borrowed_date` date DEFAULT NULL,
  `Due_date` date DEFAULT NULL,
  `Returned_date` date DEFAULT NULL,
  PRIMARY KEY (`Loan_id`),
  KEY `Member_id` (`Member_id`),
  KEY `Book_id` (`Book_id`),
  CONSTRAINT `Loans_ibfk_1` FOREIGN KEY (`Member_id`) REFERENCES `Members` (`Member_id`),
  CONSTRAINT `Loans_ibfk_2` FOREIGN KEY (`Book_id`) REFERENCES `Books` (`Book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (1, 69, 25, '2026-09-12', '2026-10-02', '2026-09-21');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (2, 37, 54, '2026-09-11', '2026-10-07', '2026-10-03');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (3, 1, 70, '2026-09-16', '2026-10-01', '2026-10-03');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (4, 44, 51, '2026-09-12', '2026-10-05', '2026-09-30');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (5, 78, 58, '2026-09-11', '2026-10-02', '2026-10-09');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (6, 56, 32, '2026-09-20', '2026-10-04', '2026-10-04');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (7, 23, 53, '2026-09-19', '2026-10-07', '2026-10-07');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (8, 61, 70, '2026-09-20', '2026-10-08', '2026-09-28');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (9, 4, 36, '2026-09-17', '2026-10-06', '2026-09-27');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (10, 11, 48, '2026-09-16', '2026-10-09', '2026-09-22');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (11, 15, 41, '2026-09-17', '2026-09-30', '2026-09-29');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (12, 18, 58, '2026-09-19', '2026-10-02', '2026-09-26');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (13, 69, 36, '2026-09-18', '2026-10-01', '2026-09-29');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (14, 69, 61, '2026-09-11', '2026-10-05', '2026-10-08');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (15, 53, 26, '2026-09-24', '2026-10-06', '2026-10-03');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (16, 9, 13, '2026-09-20', '2026-10-09', '2026-09-25');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (17, 49, 59, '2026-09-23', '2026-10-04', '2026-09-30');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (18, 65, 18, '2026-09-17', '2026-10-05', '2026-09-29');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (19, 19, 65, '2026-09-16', '2026-10-04', '2026-09-30');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (20, 58, 68, '2026-09-21', '2026-09-30', '2026-10-09');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (21, 40, 4, '2026-09-20', '2026-10-03', '2026-10-01');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (22, 58, 48, '2026-09-11', '2026-09-30', '2026-09-28');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (23, 4, 8, '2026-09-16', '2026-10-02', '2026-09-30');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (24, 44, 44, '2026-09-24', '2026-10-06', '2026-10-03');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (25, 50, 37, '2026-09-19', '2026-09-30', '2026-09-23');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (26, 35, 30, '2026-09-12', '2026-10-06', '2026-09-23');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (27, 23, 68, '2026-09-20', '2026-10-04', '2026-09-20');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (28, 57, 55, '2026-09-10', '2026-10-04', '2026-10-04');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (29, 51, 23, '2026-09-14', '2026-09-30', '2026-10-05');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (30, 39, 48, '2026-09-21', '2026-10-05', '2026-09-21');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (31, 71, 66, '2026-09-23', '2026-10-08', '2026-09-21');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (32, 50, 70, '2026-09-23', '2026-10-04', '2026-09-22');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (33, 34, 63, '2026-09-21', '2026-10-07', '2026-09-28');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (34, 46, 34, '2026-09-14', '2026-10-05', '2026-09-20');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (35, 14, 21, '2026-09-21', '2026-10-04', '2026-10-07');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (36, 10, 10, '2026-09-17', '2026-10-05', '2026-10-01');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (37, 79, 3, '2026-09-19', '2026-10-07', '2026-09-28');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (38, 49, 12, '2026-09-16', '2026-10-10', '2026-09-27');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (39, 80, 11, '2026-09-19', '2026-10-04', '2026-10-09');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (40, 2, 57, '2026-09-15', '2026-10-06', '2026-10-08');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (41, 40, 33, '2026-09-16', '2026-10-09', '2026-10-06');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (42, 28, 29, '2026-09-21', '2026-10-02', '2026-09-20');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (43, 64, 60, '2026-09-10', '2026-10-09', '2026-10-01');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (44, 23, 29, '2026-09-14', '2026-10-05', '2026-09-25');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (45, 67, 27, '2026-09-15', '2026-10-08', '2026-09-28');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (46, 24, 70, '2026-09-15', '2026-10-04', '2026-10-04');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (47, 25, 15, '2026-09-18', '2026-10-09', '2026-10-03');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (48, 8, 59, '2026-09-15', '2026-10-01', '2026-09-30');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (49, 33, 62, '2026-09-11', '2026-10-09', '2026-10-04');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (50, 17, 46, '2026-09-19', '2026-10-02', '2026-10-02');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (51, 77, 38, '2026-09-15', '2026-10-06', '2026-09-29');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (52, 64, 42, '2026-09-18', '2026-10-04', '2026-09-30');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (53, 5, 17, '2026-09-11', '2026-10-08', '2026-09-25');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (54, 23, 29, '2026-09-12', '2026-10-09', '2026-09-25');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (55, 49, 3, '2026-09-22', '2026-10-10', '2026-10-02');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (56, 60, 11, '2026-09-12', '2026-10-07', '2026-10-07');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (57, 6, 5, '2026-09-10', '2026-09-30', '2026-10-09');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (58, 10, 19, '2026-09-23', '2026-10-07', '2026-10-10');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (59, 74, 21, '2026-09-18', '2026-10-01', '2026-09-25');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (60, 6, 24, '2026-09-24', '2026-10-08', '2026-10-02');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (61, 31, 25, '2026-09-16', '2026-10-05', '2026-09-21');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (62, 36, 32, '2026-09-10', '2026-10-09', '2026-09-30');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (63, 60, 3, '2026-09-23', '2026-10-10', '2026-09-29');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (64, 76, 25, '2026-09-17', '2026-10-02', '2026-09-28');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (65, 69, 48, '2026-09-21', '2026-10-09', '2026-09-22');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (66, 73, 26, '2026-09-19', '2026-10-09', '2026-09-29');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (67, 74, 57, '2026-09-17', '2026-10-03', '2026-10-04');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (68, 43, 23, '2026-09-23', '2026-10-04', '2026-10-03');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (69, 39, 45, '2026-09-15', '2026-10-08', '2026-10-10');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (70, 70, 14, '2026-09-13', '2026-10-10', '2026-09-20');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (71, 7, 5, '2026-09-23', '2026-10-03', '2026-10-04');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (72, 26, 28, '2026-09-12', '2026-09-30', '2026-09-23');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (73, 70, 6, '2026-09-23', '2026-10-09', '2026-10-09');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (74, 60, 61, '2026-09-18', '2026-10-07', '2026-09-28');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (75, 69, 25, '2026-09-24', '2026-10-07', '2026-10-04');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (76, 56, 63, '2026-09-21', '2026-10-03', '2026-10-06');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (77, 58, 38, '2026-09-20', '2026-10-05', '2026-09-20');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (78, 62, 21, '2026-09-10', '2026-10-05', '2026-09-28');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (79, 46, 5, '2026-09-13', '2026-10-04', '2026-10-04');
INSERT INTO `Loans` (`Loan_id`, `Member_id`, `Book_id`, `Borrowed_date`, `Due_date`, `Returned_date`) VALUES (80, 42, 21, '2026-09-23', '2026-10-01', '2026-09-27');


