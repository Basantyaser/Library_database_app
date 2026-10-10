#
# TABLE STRUCTURE FOR: Authors
#

DROP TABLE IF EXISTS `Authors`;

CREATE TABLE `Authors` (
  `Author_id` int(11) NOT NULL AUTO_INCREMENT,
  `Author_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (1, ' Tim Ferriss');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (2, ' J.K. Rowling');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (3, ' Stephen Covey');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (4, ' Mark Twain');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (5, ' Carl Sagan');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (6, ' Isaac Asimov');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (7, ' Ernest Hemingway');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (8, ' H.P. Lovecraft');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (9, ' Zora Neale Hurston');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (10, ' James Clear');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (11, ' Sylvia Plath');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (12, ' Christopher Hitchen');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (13, ' J.K. Rowling');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (14, ' Sylvia Plath');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (15, ' Leo Tolstoy');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (16, ' Sam Harris');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (17, ' William Faulkner');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (18, ' Leo Tolstoy');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (19, ' Stephen Hawking');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (20, ' Jean-Paul Sartre');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (21, ' Langston Hughes');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (22, ' Arthur Conan Doyle');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (23, ' Ray Bradbury');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (24, ' Edgar Allan Poe');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (25, ' Khaled Hosseini');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (26, ' Dan Brown');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (27, ' Jane Austen');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (28, ' Robert Frost');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (29, ' Langston Hughes');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (30, ' Dan Brown');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (31, ' Robert Kiyosaki');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (32, ' Isaac Asimov');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (33, ' Frank Herbert');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (34, ' Michelle Obama');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (35, ' George Bernard Shaw');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (36, ' Tim Ferriss');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (37, ' Kazuo Ishiguro');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (38, ' Walter Isaacson');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (39, ' Charles Dickens');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (40, ' George Orwell');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (41, ' Simon Sinek');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (42, ' F. Scott Fitzgerald');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (43, ' Walt Whitman');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (44, ' Charles Dickens');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (45, ' Franz Kafka');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (46, ' James Clear');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (47, ' Agatha Christie');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (48, ' Fyodor Dostoevsky');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (49, ' Langston Hughes');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (50, ' Alice Walker');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (51, ' Napoleon Hill');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (52, ' Jordan Peterson');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (53, ' George R.R. Martin');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (54, ' F. Scott Fitzgerald');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (55, ' F. Scott Fitzgerald');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (56, ' Dan Brown');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (57, ' Khaled Hosseini');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (58, ' J.R.R. Tolkien');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (59, ' James Joyce');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (60, ' Aldous Huxley');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (61, ' Toni Morrison');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (62, ' Michelle Obama');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (63, ' Richard Dawkins');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (64, ' Chimamanda Ngozi Ad');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (65, ' Aldous Huxley');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (66, ' Arundhati Roy');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (67, ' George R.R. Martin');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (68, ' Friedrich Nietzsche');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (69, ' Maya Angelou');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (70, ' Sigmund Freud');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (71, ' Kazuo Ishiguro');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (72, ' Walt Whitman');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (73, ' Maya Angelou');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (74, ' Margaret Atwood');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (75, ' Simon Sinek');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (76, ' Jordan Peterson');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (77, ' Herman Melville');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (78, ' F. Scott Fitzgerald');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (79, ' Langston Hughes');
INSERT INTO `Authors` (`Author_id`, `Author_name`) VALUES (80, ' James Clear');


