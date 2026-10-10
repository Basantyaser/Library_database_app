#
# TABLE STRUCTURE FOR: Books
#

DROP TABLE IF EXISTS `Books`;

CREATE TABLE `Books` (
  `Book_id` int(11) NOT NULL AUTO_INCREMENT,
  `Book_name` varchar(20) DEFAULT NULL,
  `Book_author_id` int(11) DEFAULT NULL,
  `Book_category_id` int(11) DEFAULT NULL,
  `Book_copies` int(11) DEFAULT NULL,
  `Book_status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Book_id`),
  KEY `Book_category_id` (`Book_category_id`),
  KEY `Book_author_id` (`Book_author_id`),
  CONSTRAINT `Books_ibfk_1` FOREIGN KEY (`Book_category_id`) REFERENCES `Categories` (`Category_id`),
  CONSTRAINT `Books_ibfk_2` FOREIGN KEY (`Book_author_id`) REFERENCES `Authors` (`Author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (1, ' Dune', 41, 26, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (2, ' Ulysses', 66, 18, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (3, ' Life of Pi', 23, 2, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (4, ' The Odyssey', 2, 4, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (5, ' Pride and Prejudice', 73, 19, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (6, ' Catch-22', 46, 15, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (7, ' The Alchemist', 8, 13, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (8, ' Alice in Wonderland', 47, 20, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (9, ' Invisible Man', 75, 7, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (10, ' Harry Potter and th', 65, 7, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (11, ' The Kite Runner', 33, 3, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (12, ' Homo Deus', 66, 16, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (13, ' War and Peace', 58, 14, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (14, ' Outliers', 25, 25, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (15, ' The Hunger Games', 57, 1, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (16, ' Dracula', 59, 27, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (17, ' Jane Eyre', 39, 16, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (18, ' The Chronicles of N', 24, 30, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (19, ' Hyperion', 54, 14, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (20, ' Normal People', 77, 25, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (21, ' Quiet', 14, 4, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (22, ' The Lord of the Rin', 62, 20, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (23, ' Wuthering Heights', 66, 26, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (24, ' Thinking Fast and S', 37, 25, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (25, ' Treasure Island', 57, 17, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (26, ' Neuromancer', 38, 24, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (27, ' The God of Small Th', 18, 6, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (28, ' The Power of Habit', 45, 17, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (29, ' Sapiens', 8, 5, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (30, ' Moby-Dick', 59, 11, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (31, ' Crazy Rich Asians', 76, 30, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (32, ' The Da Vinci Code', 71, 17, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (33, ' Crime and Punishmen', 31, 7, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (34, ' To Kill a Mockingbi', 70, 30, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (35, ' The Silent Patient', 42, 4, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (36, ' The Stranger', 76, 20, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (37, ' A Fine Balance', 40, 16, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (38, ' Les Miserables', 64, 23, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (39, ' The Elements of Sty', 54, 24, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (40, ' Fahrenheit 451', 61, 14, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (41, ' Atomic Habits', 41, 16, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (42, ' Gone Girl', 44, 30, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (43, ' Educated', 1, 23, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (44, ' The Catcher in the ', 17, 10, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (45, ' Namesake', 67, 29, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (46, ' The Picture of Dori', 27, 12, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (47, ' Brave New World', 48, 4, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (48, ' Lord of the Flies', 69, 24, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (49, ' 1984', 43, 12, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (50, ' The Road', 46, 3, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (51, ' Midnight''s Children', 77, 4, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (52, ' No Country for Old ', 50, 30, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (53, ' Great Expectations', 35, 24, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (54, ' The Grapes of Wrath', 70, 7, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (55, ' Lolita', 45, 30, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (56, 'The Great Gatsby', 19, 23, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (57, ' Beloved', 40, 13, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (58, ' Becoming', 30, 13, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (59, ' Little Women', 17, 15, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (60, ' The Book Thief', 26, 8, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (61, ' Frankenstein', 33, 28, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (62, ' The Old Man and the', 5, 6, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (63, ' Where the Crawdads ', 6, 9, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (64, ' The Metamorphosis', 43, 25, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (65, ' A Brief History of ', 64, 22, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (66, ' One Hundred Years o', 70, 25, 1, 'available ');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (67, ' The Count of Monte ', 10, 13, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (68, ' Blink', 24, 3, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (69, ' Of Mice and Men', 14, 4, 1, ' not available');
INSERT INTO `Books` (`Book_id`, `Book_name`, `Book_author_id`, `Book_category_id`, `Book_copies`, `Book_status`) VALUES (70, ' Animal Farm', 45, 28, 1, 'available ');


