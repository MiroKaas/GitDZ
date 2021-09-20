/* Описать обьекты и явления предметной области 
1. Профиль
2. Друзья
3. Сообщения
4.Группы
5. Пост
6. Лайки
7. Файлы
Создать первичные сущности
*/

/*
Аномалии: вставки, обновления, удаления.
*/

CREATE database vk;
USE vk;

-- Таблица профилей

-- SERIAL
-- CHAR(8) - строка фиксированной длины
-- VARCHAR(255) - строка произвольной длины, не более заданной 

-- 89771234567

-- Тип
-- 1. Представление
-- 2. Способ хранения
-- 3. Набор допустимых операций

SHOW TABLES;

DESCRIBE profiles;
DESC profiles;

-- PRIMARY KEY (NOT NULL, UNIQUE)

-- NOT NULL 
-- UNIQUE
-- DEFAULT
-- AUTO_INCREMENT

DROP TABLE IF EXISTS `users`;
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", -- искусственный ключ
  first_name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта",
  phone CHAR(11) NOT NULL UNIQUE COMMENT "Телефон",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Пользователи";  

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Cheyanne', 'Jacobson', 'lexus43@example.com', '438-214-147', '1986-02-22 01:33:30', '2007-06-06 21:19:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Gregory', 'Blanda', 'alivia94@example.com', '1-374-227-1', '1976-09-24 19:58:11', '2006-09-02 22:02:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Chyna', 'Collier', 'jeffery.frami@example.net', '339.710.213', '1978-08-28 14:37:36', '2008-06-18 12:47:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Piper', 'Goldner', 'ciara.crooks@example.org', '1-829-263-1', '2012-08-14 17:15:27', '2010-03-27 23:37:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Lorenza', 'Parisian', 'daltenwerth@example.net', '(265)882-47', '1996-11-24 07:48:49', '1975-06-02 19:21:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Danyka', 'Pacocha', 'gene.harber@example.net', '(471)432-86', '1982-02-26 18:12:26', '1986-06-12 03:19:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Flo', 'Crist', 'skiles.michelle@example.com', '(073)581-42', '2016-06-24 13:40:10', '1982-07-13 18:26:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Zechariah', 'Ondricka', 'lynch.christine@example.net', '1-065-082-3', '1973-02-08 18:46:10', '1987-08-07 04:16:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Vena', 'McKenzie', 'fay.marvin@example.net', '804-422-121', '1971-05-04 06:24:20', '2002-08-29 15:37:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Mafalda', 'Hudson', 'ro\'kon@example.net', '813.516.977', '1977-09-21 23:31:21', '1996-04-13 11:47:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Joel', 'Koepp', 'schowalter.alena@example.net', '1-618-152-5', '2008-05-19 10:08:49', '1985-09-25 20:48:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Christina', 'Witting', 'barton.stoltenberg@example.net', '041-453-688', '1971-09-10 20:52:28', '1985-09-15 20:30:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Alysha', 'Ebert', 'walter.mary@example.net', '1-518-638-4', '1973-10-12 02:32:07', '1971-08-30 08:01:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Bart', 'Hahn', 'mkihn@example.com', '1-664-127-9', '1995-05-12 07:46:15', '2011-05-01 20:11:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Shyann', 'Grimes', 'gbrakus@example.com', '452-101-436', '1977-06-20 15:08:29', '2007-05-29 07:40:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Cielo', 'Wilkinson', 'hluettgen@example.net', '1-596-509-3', '2016-12-19 09:37:05', '2002-01-03 07:56:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Adrian', 'Wolf', 'xkautzer@example.net', '372.447.093', '2009-06-16 10:21:51', '2016-08-02 06:44:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Libbie', 'Paucek', 'karl.steuber@example.net', '1-667-887-3', '1974-02-04 16:29:25', '1993-12-28 18:50:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Kasey', 'Jast', 'eulalia.haley@example.org', '1-896-803-6', '1974-06-22 11:15:48', '1981-01-23 09:42:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Millie', 'Moore', 'romaguera.reinhold@example.com', '867.019.159', '1994-03-09 20:12:20', '1983-04-16 00:56:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Breanna', 'Corwin', 'jensen.erdman@example.net', '1-535-639-2', '1971-02-02 16:13:11', '2019-09-12 12:16:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Ressie', 'Herzog', 'ulindgren@example.org', '07392290106', '1973-09-08 23:47:24', '1989-07-28 01:11:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Mckenzie', 'Hackett', 'psenger@example.net', '(608)455-86', '1980-11-27 01:22:11', '1978-06-11 23:25:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Pascale', 'Murray', 'jalyn34@example.org', '209.496.110', '2010-04-27 08:32:47', '1983-01-10 05:33:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Ulices', 'Kunze', 'vmraz@example.net', '+43(1)71221', '1991-08-23 13:00:36', '2016-10-25 06:24:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Adan', 'Hartmann', 'lubowitz.moriah@example.com', '856.630.218', '2014-07-13 19:21:31', '2003-10-13 09:03:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Joseph', 'Hessel', 'pmayert@example.org', '120-094-466', '1999-05-04 11:10:36', '2017-10-16 22:21:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Viva', 'Monahan', 'koss.ryder@example.org', '939-110-982', '1982-02-01 02:46:01', '2008-12-06 15:21:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Dewitt', 'Murphy', 'tbuckridge@example.org', '266.027.250', '1980-08-19 16:47:01', '1974-10-17 11:18:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Amani', 'Russel', 'isabell23@example.org', '843-542-716', '1972-02-21 09:09:41', '1974-06-08 23:03:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Sid', 'Ruecker', 'estella.kohler@example.net', '318.915.580', '1988-10-02 23:38:24', '1978-03-28 09:59:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Clara', 'Kassulke', 'udonnelly@example.net', '779.170.383', '1999-10-07 10:15:30', '1981-08-09 16:21:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Shanel', 'Borer', 'marcelino.gerlach@example.net', '(230)375-90', '1995-11-25 03:11:27', '1987-11-11 16:03:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Sophia', 'Walsh', 'blake.rath@example.com', '(891)103-47', '1982-04-03 12:11:18', '1990-07-24 09:37:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Brady', 'Casper', 'schumm.neha@example.com', '1-416-113-7', '2020-04-29 12:13:51', '2013-12-07 02:02:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Carissa', 'Treutel', 'casimir.green@example.net', '651.127.419', '1992-03-22 07:58:32', '2015-11-20 03:23:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Emmett', 'Balistreri', 'turcotte.josie@example.net', '114.018.976', '2011-05-03 16:43:49', '2016-03-19 16:30:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Marcus', 'Lueilwitz', 'akuhn@example.com', '09243901644', '2004-02-22 21:19:16', '2000-11-08 17:30:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Brain', 'Lesch', 'swaniawski.marcelle@example.net', '1-691-304-5', '2009-03-20 16:36:45', '2008-04-10 15:36:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Genesis', 'O\'Connell', 'dominique.hamill@example.com', '965-268-438', '1971-02-05 03:29:24', '1986-09-10 12:40:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Alene', 'Wilkinson', 'winnifred04@example.org', '421-870-887', '1997-01-30 21:34:31', '1983-04-12 13:07:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Marley', 'Mohr', 'senger.albina@example.com', '815-892-936', '1991-06-08 14:24:44', '1999-06-29 07:23:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Ezra', 'Pagac', 'kreiger.alexandria@example.net', '1-952-405-0', '1982-06-11 03:40:58', '2017-07-22 09:59:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Gennaro', 'Labadie', 'alanis.marquardt@example.org', '702.905.880', '1988-09-03 01:00:57', '1996-08-22 00:56:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Harold', 'Nienow', 'lisandro28@example.org', '236.224.308', '1981-06-13 09:44:19', '1978-11-29 10:57:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Marcia', 'Weissnat', 'linnea67@example.net', '174.440.583', '1992-01-17 15:33:12', '1997-01-22 12:43:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Pearlie', 'Koelpin', 'rkoepp@example.org', '035-457-864', '1972-02-07 11:42:22', '2016-09-07 23:21:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Nicholas', 'Will', 'mertz.torrance@example.com', '1-466-578-1', '1987-06-20 20:11:14', '2001-11-29 10:18:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Merlin', 'Brown', 'ubailey@example.com', '+19(2)48882', '1985-06-16 03:16:08', '1981-01-02 19:31:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Delfina', 'Sporer', 'hagenes.abbie@example.com', '436-911-361', '2021-07-31 02:27:21', '2012-11-29 11:22:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Erwin', 'Cronin', 'qraynor@example.org', '1-332-740-7', '1984-03-25 06:34:26', '1975-01-21 20:42:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Alysa', 'Roberts', 'blarson@example.com', '461-633-951', '1993-01-23 21:46:57', '1980-01-24 17:38:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Elsie', 'Oberbrunner', 'sipes.gertrude@example.org', '1-982-706-0', '1992-03-31 22:55:01', '2017-04-27 04:54:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Wava', 'Haag', 'laura.pagac@example.org', '(258)808-63', '2015-04-07 22:57:55', '1970-02-15 02:10:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Eloy', 'Wisozk', 'sydnie.collins@example.org', '155-661-478', '1998-07-30 21:05:33', '1999-01-20 08:31:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Jerrod', 'Corwin', 'deckow.jorge@example.com', '03545845597', '1976-05-19 13:57:18', '1970-05-20 18:01:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Rosamond', 'Langosh', 'bstokes@example.com', '02946173967', '2008-10-27 16:42:28', '2020-09-02 14:33:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Dante', 'Moen', 'kevin.jakubowski@example.net', '1-199-790-1', '1989-09-09 20:40:36', '2015-12-14 03:18:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Augusta', 'Metz', 'jfunk@example.com', '+32(6)54105', '1984-09-26 06:48:16', '1975-12-15 10:36:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Kathryn', 'Stiedemann', 'pheidenreich@example.com', '853-736-019', '1982-04-27 05:18:24', '2018-01-04 14:28:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Donald', 'Frami', 'zzboncak@example.net', '1-312-039-6', '1991-03-16 17:35:03', '1981-09-24 19:47:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Aylin', 'Kessler', 'shea.kemmer@example.net', '971-169-455', '2021-02-26 03:45:27', '1993-02-04 01:54:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Elliott', 'Paucek', 'rschamberger@example.org', '05727040632', '1996-11-22 21:03:07', '1987-09-01 02:01:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Evan', 'Christiansen', 'toby99@example.net', '(625)269-69', '2000-06-17 20:53:24', '1977-10-20 07:33:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Patience', 'Larkin', 'margarette.wolf@example.net', '743.857.472', '1979-12-04 23:29:33', '1980-02-07 02:59:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Ezra', 'Becker', 'dariana45@example.com', '(681)525-48', '1982-03-23 20:47:41', '1994-09-10 14:33:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Cathrine', 'Pollich', 'garnet.wilkinson@example.net', '+96(2)65015', '1970-01-27 21:06:41', '1983-09-01 13:31:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Kaya', 'Bradtke', 'easton.hermann@example.net', '003-416-395', '1982-06-12 12:13:44', '1987-09-10 23:06:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Antonietta', 'Pouros', 'alvis.rippin@example.net', '237.884.081', '2020-01-09 13:26:36', '2019-01-02 13:20:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Fred', 'Kautzer', 'fpadberg@example.org', '859.023.071', '2009-06-10 00:23:13', '1985-09-21 18:49:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Alysson', 'Schimmel', 'annetta.russel@example.org', '324.245.356', '1976-02-13 04:03:16', '2016-09-16 21:16:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Clemens', 'Schiller', 'dhintz@example.org', '249.881.896', '1993-06-08 14:55:41', '1999-12-13 10:08:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Norris', 'Greenholt', 'dax.murazik@example.com', '+73(3)70757', '2015-07-14 09:29:48', '1991-11-07 20:39:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Jaycee', 'Armstrong', 'considine.wilfred@example.com', '727.615.832', '1976-07-21 17:11:11', '1979-03-21 19:17:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Gus', 'Mosciski', 'okuneva.garrison@example.net', '1-326-509-7', '1970-06-03 04:13:54', '1989-11-12 08:37:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Jaren', 'Goyette', 'marlene49@example.net', '(394)991-98', '1976-12-05 18:46:37', '2010-06-21 05:20:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Donavon', 'Bartoletti', 'khermann@example.org', '858.152.342', '2011-07-02 16:23:34', '1971-08-06 00:00:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Arianna', 'Strosin', 'jritchie@example.net', '(102)264-11', '1988-01-10 06:15:42', '2020-10-07 16:23:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Hazle', 'Fisher', 'idell89@example.net', '09275375031', '1992-10-28 03:13:03', '1986-10-18 11:31:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Nathaniel', 'Mayer', 'caterina.romaguera@example.org', '207-689-198', '1977-07-21 04:11:53', '1978-02-02 20:13:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Mac', 'Kling', 'rempel.aidan@example.org', '1-361-207-7', '1978-05-05 06:49:52', '1996-11-06 06:29:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Oceane', 'Hodkiewicz', 'fredy74@example.org', '790.917.023', '2004-03-26 19:53:53', '2014-03-14 15:01:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Dallas', 'Hettinger', 'satterfield.barton@example.net', '+20(8)51980', '1993-12-15 10:27:55', '2003-02-13 08:25:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Candida', 'Kilback', 'nthompson@example.net', '(596)877-71', '2006-03-15 06:09:06', '1991-10-21 14:44:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Paxton', 'Brakus', 'felicity.kuhn@example.net', '(460)545-18', '1973-11-26 18:10:12', '2006-09-14 18:30:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Mathias', 'Marquardt', 'fwilliamson@example.com', '+75(1)96798', '1971-02-14 08:16:41', '1995-03-07 08:45:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Miracle', 'Bernier', 'vonrueden.makenzie@example.com', '1-614-374-7', '1981-06-02 02:06:01', '1990-02-25 03:45:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Grady', 'Robel', 'brennan.ruecker@example.com', '1-464-369-2', '1998-02-22 02:43:00', '2013-03-11 17:09:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Mohamed', 'White', 'brekke.kay@example.org', '535-347-547', '1984-06-13 04:05:53', '1992-08-17 00:07:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Thalia', 'Orn', 'pharvey@example.net', '029-326-453', '1980-07-17 10:40:46', '2019-12-02 20:32:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Vicky', 'Hand', 'linwood.o\'reilly@example.com', '1-838-685-5', '1980-10-28 13:32:51', '2019-07-09 15:43:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Haylie', 'Bechtelar', 'deborah34@example.org', '1-158-704-2', '2006-10-01 00:23:10', '1978-10-18 09:31:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Rylan', 'Lakin', 'baylee.pollich@example.net', '(528)552-89', '1979-01-11 19:47:11', '1991-12-12 02:03:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Jefferey', 'Douglas', 'nichole45@example.net', '(127)727-16', '2015-12-21 08:35:41', '2009-11-24 01:55:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Alayna', 'Strosin', 'efarrell@example.com', '176.974.668', '2013-02-17 05:05:36', '1981-09-12 21:58:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Larry', 'Cole', 'wzboncak@example.com', '233.411.448', '1979-07-22 10:23:53', '1986-03-09 00:19:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'German', 'Corkery', 'upton.ezra@example.com', '(556)166-77', '2020-02-08 05:44:45', '2010-08-20 08:21:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Felicity', 'Weissnat', 'csporer@example.org', '1-289-258-2', '2021-05-03 05:39:25', '1982-07-17 03:22:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Yoshiko', 'Stroman', 'armani.brown@example.com', '831.330.490', '2012-05-21 09:58:21', '1984-08-25 22:37:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Leif', 'Lueilwitz', 'edna29@example.net', '361.680.387', '1985-10-15 15:15:28', '1970-10-29 21:03:24');
-- SERIAL -> INT UNSIGNED NOT NULL AUTO_INCREMENT

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE profiles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",  
  gender CHAR(1) NOT NULL COMMENT "Пол",
  birthday DATE COMMENT "Дата рождения",
  photo_id INT UNSIGNED COMMENT "Ссылка на основную фотографию пользователя",
  `status` VARCHAR(30) COMMENT "Текущий статус",
  city VARCHAR(130) COMMENT "Город проживания",
  country VARCHAR(130) COMMENT "Страна проживания",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Профили"; 


ALTER TABLE profiles MODIFY `status` ENUM('online', 'offline', 'disabled') COMMENT "Текущий статус";
ALTER TABLE profiles ADD CONSTRAINT profiles_user_id FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE profiles ADD CONSTRAINT profiles_photo_id FOREIGN KEY (photo_id) REFERENCES media(id);

INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 1, '', '1976-05-05', 1, 'online', 'North Angietown', '', '1985-09-19 12:24:30', '1991-03-09 15:15:13');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 2, '', '2016-01-01', 2, 'disabled', 'Myrtieport', '', '2011-01-01 20:19:21', '1981-02-04 14:51:15');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 3, '', '2018-04-29', 3, 'online', 'New Angelica', '274141', '2003-08-07 05:10:01', '1977-10-26 15:43:00');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 4, '', '1991-08-31', 4, 'online', 'Pfefferfort', '37', '2001-09-01 10:06:13', '1993-12-09 02:11:27');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 5, '', '2005-05-19', 5, 'online', 'North Donald', '4', '1974-01-13 05:48:05', '1982-07-21 10:26:58');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 6, '', '2013-10-24', 6, 'disabled', 'West Ansley', '29919705', '2007-09-10 04:31:42', '2021-09-16 10:26:29');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 7, '', '1971-01-15', 7, 'online', 'East Jannie', '715132520', '2018-07-22 11:29:22', '2001-08-05 17:30:59');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 8, '', '2006-01-05', 8, 'online', 'North Heidi', '25', '1997-10-20 14:56:33', '2001-03-09 10:55:23');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 9, '', '2001-07-24', 9, 'disabled', 'West Lilliana', '8344951', '1999-03-18 23:40:57', '2013-05-14 01:49:27');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 10, '', '2017-03-29', 10, 'offline', 'East Amber', '63585205', '1995-07-17 12:59:22', '1985-12-31 17:41:40');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 11, '', '2015-11-15', 11, 'online', 'Pollybury', '3624', '1995-05-27 21:22:55', '2002-09-07 07:29:00');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 12, '', '1976-01-01', 12, 'online', 'New Coty', '705', '1996-10-27 14:41:08', '2018-12-30 09:57:05');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 13, '', '2004-08-31', 13, 'offline', 'Fayfurt', '6157', '1987-01-16 15:19:11', '1995-04-19 06:51:57');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 14, '', '1990-01-15', 14, 'offline', 'Howeview', '6760097', '1970-07-17 18:30:57', '1997-06-21 00:56:49');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 15, '', '1973-07-08', 15, 'online', 'Rheaview', '7', '2015-10-18 18:45:43', '1982-10-07 23:36:02');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 16, '', '1982-12-20', 16, 'offline', 'Blockmouth', '447052', '1987-01-25 06:55:59', '1999-09-26 04:29:31');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 17, '', '1971-05-18', 17, 'offline', 'South Rubye', '570072', '2007-04-28 10:59:19', '1976-08-08 22:08:27');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 18, '', '2018-09-15', 18, 'offline', 'New Myleneborough', '95411959', '2014-02-07 21:04:07', '1986-10-15 16:09:15');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 19, '', '2000-06-01', 19, 'disabled', 'Port Libbieburgh', '635466427', '2004-01-27 04:07:00', '2005-05-14 23:45:08');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 20, '', '1989-11-28', 20, 'offline', 'New Dakota', '567', '1998-12-17 04:13:59', '2008-11-07 00:51:25');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 21, '', '1986-05-11', 21, 'offline', 'Morissetteborough', '780', '2006-11-03 14:46:29', '1990-03-25 12:53:22');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 22, '', '1978-09-25', 22, 'disabled', 'North Olinburgh', '', '2015-10-29 20:07:11', '1999-03-06 02:42:36');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 23, '', '1986-09-05', 23, 'disabled', 'South Josianehaven', '239527', '1991-09-11 13:46:21', '1988-10-22 09:03:53');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 24, '', '2000-05-20', 24, 'online', 'East Stacy', '8', '1985-09-19 20:02:10', '1979-09-29 09:43:49');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 25, '', '1985-05-04', 25, 'disabled', 'South Keatonmouth', '253', '1980-06-22 13:14:45', '1984-02-11 14:21:29');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 26, '', '1987-03-06', 26, 'offline', 'North Mckayla', '17878452', '2012-10-10 17:23:05', '1981-08-16 06:33:05');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 27, '', '2001-10-20', 27, 'offline', 'West Candace', '6', '2019-11-26 04:06:29', '2011-04-24 02:46:08');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 28, '', '1975-04-05', 28, 'offline', 'South Dayton', '17477', '2010-05-13 01:58:07', '1990-03-20 14:42:34');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 29, '', '1984-12-24', 29, 'online', 'Walkerville', '942976495', '1978-01-04 09:26:03', '2007-09-21 01:12:43');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 30, '', '2010-08-17', 30, 'online', 'New Elliot', '68', '2005-11-14 18:11:04', '2007-01-24 06:48:42');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 31, '', '1974-08-07', 31, 'offline', 'Rueckershire', '8', '1999-05-11 11:40:39', '1973-12-28 15:30:37');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 32, '', '2003-08-25', 32, 'offline', 'Maryseshire', '15269', '2015-07-02 23:02:57', '1977-01-23 05:50:23');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 33, '', '2010-08-21', 33, 'offline', 'Dickensshire', '142', '2017-06-23 03:23:22', '2008-11-02 21:21:36');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 34, '', '2000-04-01', 34, 'offline', 'Rohanville', '', '2017-10-21 04:27:05', '1979-03-23 03:52:09');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 35, '', '1978-12-26', 35, 'online', 'Sengerland', '156490', '2013-10-08 05:15:12', '2002-08-27 20:20:00');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 36, '', '1998-10-25', 36, 'disabled', 'New Claudineshire', '7439', '2006-11-05 07:02:16', '2020-10-26 08:36:26');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 37, '', '1977-11-06', 37, 'offline', 'East Ferne', '9258', '1993-07-12 12:54:01', '1994-02-01 17:50:41');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 38, '', '2012-09-23', 38, 'disabled', 'Port Fiona', '', '1970-09-06 23:11:05', '1991-07-12 05:03:09');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 39, '', '1974-07-11', 39, 'disabled', 'Lake Reyes', '2364', '2018-12-10 09:08:33', '2008-02-26 15:08:56');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 40, '', '1984-08-20', 40, 'online', 'West Rosario', '7314590', '1993-04-07 23:52:59', '1995-03-17 16:08:18');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 41, '', '1989-03-19', 41, 'offline', 'West Moriah', '12447', '1986-05-18 04:55:10', '1971-12-31 20:11:18');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 42, '', '1978-03-07', 42, 'offline', 'West Kassandra', '16', '1972-07-10 22:15:23', '2007-10-20 07:44:58');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 43, '', '1978-04-11', 43, 'online', 'East Annette', '11736', '1977-06-29 19:51:06', '1973-07-24 16:52:53');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 44, '', '1986-12-20', 44, 'offline', 'South Dagmarstad', '51194', '1989-05-29 23:47:29', '1992-12-12 08:40:48');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 45, '', '2009-07-21', 45, 'offline', 'Simonishaven', '', '2005-06-16 20:10:40', '2015-01-07 19:33:26');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 46, '', '1972-12-20', 46, 'disabled', 'Mohammadbury', '57799886', '1999-06-09 12:09:12', '2020-12-16 16:25:25');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 47, '', '2011-05-25', 47, 'online', 'Kuhicside', '9', '2009-02-26 03:03:18', '1998-07-11 17:02:24');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 48, '', '1990-12-23', 48, 'disabled', 'New Carlee', '449198711', '2015-01-10 16:31:51', '1988-11-22 06:32:36');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 49, '', '2012-10-07', 49, 'offline', 'East Glenna', '4761', '1991-12-16 23:52:51', '2015-04-26 20:30:54');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 50, '', '2008-07-05', 50, 'online', 'Wehnerstad', '2579970', '1998-08-06 22:12:49', '1974-05-13 16:47:14');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 51, '', '2010-07-23', 51, 'online', 'Port Clemmieport', '137948052', '1983-07-15 04:25:13', '1973-03-07 03:42:25');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 52, '', '2018-07-23', 52, 'disabled', 'Jayneton', '8322951', '1994-01-23 06:16:51', '2012-05-08 02:07:02');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 53, '', '1988-07-16', 53, 'disabled', 'Sipesfort', '66678', '1979-03-05 05:12:26', '2007-07-08 20:52:47');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 54, '', '2000-12-04', 54, 'online', 'Cordellland', '7558', '1987-02-22 16:38:27', '1974-12-11 11:39:20');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 55, '', '1985-03-18', 55, 'disabled', 'East Lenny', '910296', '1970-04-01 09:57:30', '2012-12-29 12:49:56');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 56, '', '2013-01-28', 56, 'online', 'Lake Stanfordside', '8107768', '2007-03-25 18:47:29', '2012-12-03 02:00:58');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 57, '', '1987-01-22', 57, 'online', 'Aylahaven', '499577', '2015-04-18 22:16:07', '1980-05-23 11:27:15');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 58, '', '1971-06-26', 58, 'online', 'Leannonchester', '5', '2000-06-27 07:29:58', '1989-06-30 16:39:07');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 59, '', '1977-11-17', 59, 'online', 'North Johathan', '230', '1989-01-25 16:18:53', '2012-09-23 15:08:17');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 60, '', '1987-12-12', 60, 'disabled', 'South Lacy', '4364', '1988-12-09 14:09:08', '2012-02-26 11:57:37');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 61, '', '1977-01-14', 61, 'disabled', 'Elsaburgh', '8123609', '1979-07-10 06:18:06', '2018-12-06 12:53:29');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 62, '', '1976-02-11', 62, 'online', 'Faheyport', '1474', '2016-09-08 08:07:23', '1992-08-10 08:30:05');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 63, '', '2007-03-29', 63, 'disabled', 'Kamrynfurt', '4', '2015-12-11 21:21:35', '2005-11-23 10:11:07');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 64, '', '2005-04-13', 64, 'offline', 'East Curtfurt', '268', '1977-09-05 07:04:53', '1976-07-30 17:13:13');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 65, '', '1994-05-29', 65, 'online', 'New Kiera', '27660565', '2015-10-16 14:24:59', '1993-12-16 01:12:54');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 66, '', '1988-06-23', 66, 'online', 'North Burdettechester', '121', '2006-03-05 04:55:45', '2001-04-16 20:48:46');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 67, '', '2010-08-22', 67, 'disabled', 'Nikolausmouth', '34486796', '1975-11-29 06:43:31', '1989-06-26 16:00:52');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 68, '', '1988-12-04', 68, 'offline', 'Noeliamouth', '46861963', '1989-09-22 06:58:07', '1973-10-10 13:23:31');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 69, '', '2004-02-06', 69, 'offline', 'Kutchbury', '249', '2002-03-25 19:24:39', '2000-05-12 07:53:44');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 70, '', '2002-01-10', 70, 'online', 'Lake Stefanburgh', '190', '2007-08-01 00:16:45', '1986-06-29 12:03:01');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 71, '', '1997-05-08', 71, 'disabled', 'East Trisha', '466', '2016-02-23 17:16:22', '2008-06-07 06:51:30');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 72, '', '2007-06-22', 72, 'disabled', 'Ernestoberg', '33992523', '1991-10-10 01:54:53', '1997-12-02 00:25:54');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 73, '', '1983-03-10', 73, 'offline', 'Kaylinberg', '', '1990-01-11 05:58:39', '1996-09-06 05:29:52');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 74, '', '2011-07-01', 74, 'offline', 'Lake Brooke', '527504044', '2014-02-21 09:19:41', '2003-09-24 04:26:21');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 75, '', '1993-02-12', 75, 'offline', 'East Raquel', '2571486', '1976-10-01 08:27:15', '1981-06-23 13:55:23');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 76, '', '1973-08-25', 76, 'disabled', 'East Mariano', '515515799', '1996-04-05 08:18:22', '2006-02-10 09:46:04');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 77, '', '1983-08-10', 77, 'online', 'Port Aliya', '79383', '1988-05-22 04:37:46', '2011-10-24 08:47:33');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 78, '', '2009-01-27', 78, 'online', 'Corwinfort', '4125', '1987-10-06 22:38:51', '1993-12-19 21:57:26');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 79, '', '1984-03-09', 79, 'offline', 'Ebertburgh', '76544940', '2011-05-11 20:33:22', '1982-09-20 11:59:58');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 80, '', '1970-04-10', 80, 'online', 'North Fannyborough', '76061917', '1971-03-27 11:36:32', '1984-04-11 14:46:27');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 81, '', '1976-02-13', 81, 'disabled', 'Edwinashire', '824', '1975-10-16 17:13:47', '1974-02-11 02:15:04');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 82, '', '1979-11-17', 82, 'offline', 'Port Fridachester', '672721148', '1988-11-03 13:48:43', '1996-11-01 19:01:45');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 83, '', '2017-04-02', 83, 'online', 'Port Maxwellside', '24918819', '2011-08-08 03:23:49', '1997-06-20 11:39:17');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 84, '', '1994-03-16', 84, 'offline', 'South Shayna', '47282019', '1987-05-21 13:15:52', '1970-10-21 14:43:42');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 85, '', '1980-11-30', 85, 'online', 'West Colleen', '5327', '2003-11-12 20:51:51', '1991-01-09 12:37:57');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 86, '', '1971-02-04', 86, 'online', 'New Urbanview', '24674', '2003-09-27 17:16:39', '1989-02-03 10:58:16');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 87, '', '1984-05-13', 87, 'online', 'East River', '120026145', '2018-04-29 16:03:11', '2016-04-13 22:30:09');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 88, '', '2007-02-20', 88, 'offline', 'Luisshire', '54', '2015-01-20 01:06:51', '2016-02-29 12:46:26');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 89, '', '2019-08-03', 89, 'offline', 'Legrosland', '', '1972-02-22 11:23:38', '1991-03-19 11:10:03');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 90, '', '1980-10-08', 90, 'offline', 'Gerardoton', '37668407', '1999-09-23 21:24:03', '2007-01-15 05:38:36');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 91, '', '1984-07-02', 91, 'offline', 'East Isobelland', '2', '1990-11-19 23:07:15', '1986-02-27 10:41:02');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 92, '', '1998-12-17', 92, 'disabled', 'Olsonland', '670362', '2014-07-08 14:13:17', '1990-08-09 17:23:26');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 93, '', '2018-02-05', 93, 'online', 'McCulloughfort', '57138', '1975-01-31 19:00:21', '2006-02-06 05:53:03');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 94, '', '2021-08-12', 94, 'disabled', 'Medhurstfort', '52', '2016-08-11 20:54:55', '1996-01-07 05:00:42');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 95, '', '2016-06-22', 95, 'offline', 'Carlishire', '8', '1991-10-14 18:00:14', '2000-03-13 17:39:33');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 96, '', '2013-06-28', 96, 'online', 'South Elmer', '7', '1971-02-09 11:32:17', '1977-01-12 14:36:14');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 97, '', '1994-07-07', 97, 'disabled', 'Brekkeside', '631635', '2020-02-12 13:48:28', '1987-12-16 14:16:45');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 98, '', '1981-02-18', 98, 'online', 'Erdmanmouth', '', '1981-11-20 11:45:51', '2011-07-28 22:33:35');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 99, '', '2011-05-26', 99, 'online', 'Russelhaven', '67', '2002-03-30 03:04:39', '2002-11-20 15:02:52');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 100, '', '2008-04-24', 100, 'disabled', 'Port Ernestina', '8751', '2007-12-27 18:37:35', '2013-04-01 16:03:47');

-- ALTER TABLE profiles ADD COLUMN gender ENUM('M', 'F', '?');

/* Ограничение целостности
0. Ограничение типа
1. NOT NULL
2. UNOIQUE
3. PK - UNIQUE, NOT NULL
4. FK - ссылочную целостность
5. DEFAULT
6. CHECK
*/

/*
1. Создать "ядро" модели данных
2. Последовательно применить нормальные формы
3. Уточняем свойства атрибутов
4. Расширяем модели данных в рамках существующих отношений
5. GO TO 2
*/

DROP TABLE IF EXISTS `friendship`;
CREATE TABLE friendship(
	user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
    friend_id INT UNSIGNED NOT NULL COMMENT "Ссылка на друга пользователя",
    request_type VARCHAR(10) NOT NULL COMMENT "Тип запроса",
    requested_at DATETIME DEFAULT NOW() COMMENT "Время отправления приглашения дружить",
    confirmed_at DATETIME COMMENT "Время подтверждения приглашения",
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
    PRIMARY KEY (user_id, friend_id)
);
SELECT * from friendship;
ALTER TABLE friendship ADD CONSTRAINT friendship_user_id FOREIGN KEY (user_id) REFERENCES users(id); 
ALTER TABLE friendship ADD CONSTRAINT friendship_friend_id FOREIGN KEY (friend_id) REFERENCES users(id);

ALTER TABLE friendship DROP COLUMN request_type;
ALTER TABLE friendship ADD COLUMN request_type_id INT UNSIGNED NOT NULL COMMENT "Ссылка на тип запроса";

DESCRIBE friendship;

INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (1, 1, '1997-09-17 20:30:51', '1973-09-10 21:03:59', '1984-07-18 07:52:58', '1973-01-24 07:24:36', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (2, 2, '1999-07-20 02:00:55', '1995-01-19 20:32:39', '2001-10-20 19:51:32', '2004-10-26 19:41:06', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (3, 3, '1971-08-30 04:59:27', '2017-01-15 03:08:36', '1988-02-02 17:06:53', '1983-07-26 17:30:11', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (4, 4, '1990-07-13 13:13:38', '1992-02-10 11:49:44', '2002-08-19 07:43:26', '1979-12-14 20:17:13', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (5, 5, '1993-02-24 17:42:53', '2013-09-27 06:24:05', '2009-11-20 22:53:32', '1980-09-06 23:01:19', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (6, 6, '2008-04-09 19:04:13', '2000-08-17 11:32:15', '1990-05-18 16:14:06', '2006-11-09 01:19:11', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (7, 7, '1994-07-25 19:11:29', '1971-09-03 17:56:39', '2010-05-15 09:05:57', '1972-04-24 08:37:54', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (8, 8, '1998-09-28 00:24:41', '2010-12-14 05:19:26', '2017-05-01 20:00:52', '1980-02-21 20:47:26', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (9, 9, '2001-01-15 15:38:42', '1982-09-04 20:43:12', '1970-08-30 04:13:09', '1988-05-15 23:12:04', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (10, 10, '2009-07-04 04:01:25', '2010-04-14 08:45:37', '1972-04-13 12:06:13', '1978-02-03 10:05:56', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (11, 11, '1980-03-10 06:27:06', '1988-08-17 08:34:36', '1985-04-16 15:45:33', '1978-06-05 10:34:04', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (12, 12, '1972-12-17 04:57:16', '1979-11-23 13:01:05', '1992-10-15 17:05:34', '2005-09-16 17:02:07', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (13, 13, '1979-03-22 19:20:42', '1998-09-19 09:04:06', '1978-04-04 17:22:24', '2001-04-29 08:06:16', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (14, 14, '2018-06-16 12:38:12', '1993-06-20 12:14:17', '2016-12-05 16:37:24', '1995-11-10 04:27:50', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (15, 15, '2020-07-24 12:59:24', '1974-10-19 20:12:41', '2002-07-19 09:51:27', '1983-10-17 11:54:42', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (16, 16, '2004-09-01 15:18:58', '1970-09-03 03:06:29', '1988-02-14 09:05:37', '1976-07-14 13:07:15', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (17, 17, '2009-03-10 02:42:14', '1992-09-26 07:51:13', '1979-06-25 07:04:45', '1995-10-13 23:00:42', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (18, 18, '1997-05-18 08:15:10', '2005-07-26 21:12:39', '2000-12-19 17:17:30', '1991-12-08 15:51:14', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (19, 19, '1999-01-22 23:14:03', '2019-11-12 22:55:42', '1988-05-28 10:35:06', '1972-08-07 11:35:57', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (20, 20, '1990-02-10 05:59:55', '2013-03-03 20:29:31', '1993-03-08 07:11:54', '1991-02-10 12:40:06', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (21, 21, '1985-08-08 20:05:50', '1995-03-01 21:02:17', '2003-10-31 15:39:45', '1987-11-21 01:15:57', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (22, 22, '1996-04-23 14:20:15', '2008-12-29 22:26:19', '2017-08-15 18:02:31', '1982-11-24 12:36:59', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (23, 23, '2014-09-15 10:42:35', '1981-04-19 07:11:01', '1970-05-19 00:36:58', '1999-10-14 11:25:52', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (24, 24, '1976-03-02 06:14:51', '1974-03-01 19:09:17', '2008-07-03 22:18:39', '1996-10-20 07:13:10', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (25, 25, '2007-02-04 23:11:05', '1973-07-18 10:01:20', '1977-12-19 13:25:04', '2004-09-29 20:11:40', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (26, 26, '1996-01-01 12:07:42', '2012-04-19 21:40:23', '1987-03-21 18:56:46', '1979-10-18 02:54:27', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (27, 27, '1972-01-05 08:16:28', '2009-01-08 15:38:52', '2005-12-07 12:08:36', '1992-12-19 06:24:15', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (28, 28, '2020-05-06 15:01:15', '1975-06-30 09:09:15', '1981-07-28 12:28:56', '1999-10-29 06:15:58', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (29, 29, '1996-04-16 00:39:01', '1971-01-21 22:24:50', '1970-10-31 06:25:21', '2020-10-22 07:05:44', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (30, 30, '2004-08-24 11:34:01', '1988-11-10 08:17:36', '1984-08-11 18:40:51', '1976-12-29 14:52:57', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (31, 31, '2015-06-02 15:33:16', '2002-12-14 11:50:31', '2019-02-23 02:14:13', '1990-08-13 06:02:13', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (32, 32, '2006-06-06 02:54:18', '1991-12-25 05:10:26', '2019-10-05 18:29:16', '1987-06-25 12:03:16', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (33, 33, '2010-02-25 12:57:05', '1982-03-08 04:02:43', '1993-01-11 06:26:17', '1994-06-14 13:53:39', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (34, 34, '2016-05-01 23:16:01', '1994-08-08 14:53:52', '2012-07-07 21:27:35', '2011-05-14 21:29:37', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (35, 35, '2012-08-26 09:35:22', '2014-05-09 23:37:40', '1981-06-19 17:31:51', '1980-02-16 15:08:18', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (36, 36, '1982-07-17 04:47:17', '1990-07-19 23:44:24', '2006-06-11 09:20:23', '1990-12-29 01:56:31', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (37, 37, '1976-08-26 01:31:27', '1971-04-11 11:29:11', '2015-02-16 04:41:07', '1970-10-21 21:32:13', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (38, 38, '2010-05-01 15:53:12', '2002-02-28 22:21:47', '1990-10-08 10:36:08', '2005-08-23 08:58:06', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (39, 39, '2000-04-14 13:01:27', '1989-01-12 01:03:16', '1989-11-03 12:01:05', '2002-12-07 07:02:09', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (40, 40, '2017-05-10 09:34:15', '2014-10-17 12:15:42', '1984-11-29 16:07:53', '1978-10-11 03:59:35', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (41, 41, '1976-10-29 23:49:37', '1973-02-25 13:08:46', '2008-03-11 02:44:15', '1975-12-26 04:06:02', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (42, 42, '1999-11-21 05:59:38', '1990-07-16 23:16:37', '2009-03-14 01:11:49', '1983-11-18 10:37:31', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (43, 43, '1993-10-17 22:31:14', '2013-12-30 04:15:21', '1996-01-03 22:38:41', '2009-11-05 03:57:50', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (44, 44, '2015-07-02 13:37:35', '2007-03-03 04:20:46', '2010-04-06 03:24:55', '1997-09-21 11:43:28', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (45, 45, '2012-11-15 05:57:48', '1979-07-04 22:33:37', '2014-08-29 19:55:10', '2004-02-13 22:40:37', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (46, 46, '2014-01-11 12:33:01', '1995-10-02 07:26:06', '1983-09-20 02:46:38', '2009-10-26 16:11:31', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (47, 47, '1986-03-19 08:56:50', '1993-07-13 01:21:46', '2011-10-20 06:50:07', '1986-08-11 12:05:54', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (48, 48, '1980-01-04 04:58:16', '2002-05-07 15:23:08', '1984-11-26 04:02:26', '2020-03-30 01:06:53', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (49, 49, '1978-11-08 06:37:24', '1980-08-05 09:41:57', '1984-02-24 09:13:31', '1980-02-26 12:29:03', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (50, 50, '1978-03-09 03:26:25', '2001-12-04 06:33:54', '1972-10-05 19:36:52', '2015-06-28 10:55:55', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (51, 51, '1996-07-13 01:54:50', '1995-03-15 23:11:05', '1988-04-04 21:32:43', '2004-01-14 16:56:18', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (52, 52, '1993-03-22 13:03:35', '1985-08-17 21:24:23', '1987-08-15 02:36:34', '1992-02-28 07:05:24', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (53, 53, '1976-11-18 19:15:18', '1971-01-02 18:34:19', '2007-05-24 16:05:53', '2018-09-04 02:15:27', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (54, 54, '1986-07-10 10:01:01', '2018-01-14 09:31:36', '2017-01-06 04:09:51', '1999-11-25 11:42:22', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (55, 55, '1990-05-04 20:44:25', '2012-09-05 06:59:53', '2014-05-23 07:45:08', '2020-01-05 13:29:56', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (56, 56, '2012-07-02 10:44:34', '1991-11-20 14:06:49', '1991-06-22 18:48:03', '2015-06-13 02:20:48', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (57, 57, '1974-06-24 04:42:05', '2008-10-29 20:38:08', '1991-08-22 00:41:06', '2015-04-03 10:01:15', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (58, 58, '2015-11-15 17:47:15', '1980-09-29 23:34:45', '1975-06-04 04:42:25', '1976-05-19 23:40:50', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (59, 59, '2021-05-18 18:40:26', '1992-09-21 21:22:50', '2008-09-25 20:05:45', '2020-07-07 02:02:38', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (60, 60, '1983-12-25 15:03:29', '2013-10-23 16:52:07', '2011-08-18 02:47:33', '1973-08-15 01:13:37', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (61, 61, '2013-03-10 06:22:55', '2012-10-18 00:17:25', '1975-12-26 16:48:10', '1975-05-19 12:07:23', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (62, 62, '1994-07-23 08:30:42', '1979-07-09 00:49:33', '2016-08-27 11:47:27', '2014-03-29 14:25:38', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (63, 63, '1988-11-25 22:47:25', '1986-08-05 08:41:23', '2010-05-10 13:18:59', '1989-06-18 19:29:48', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (64, 64, '1981-06-02 13:28:20', '1982-08-24 12:48:03', '1982-09-24 11:03:39', '2005-03-18 06:48:47', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (65, 65, '2005-11-04 21:56:51', '1980-10-31 12:21:11', '2012-07-19 16:21:28', '2012-07-14 18:37:55', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (66, 66, '1974-03-10 11:43:56', '1974-08-12 17:48:05', '1999-07-30 12:03:50', '1991-03-09 06:10:12', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (67, 67, '2010-04-17 09:59:47', '2010-11-23 23:54:20', '2018-08-11 23:17:59', '1976-01-15 16:20:42', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (68, 68, '2007-07-31 02:06:35', '2010-06-24 16:05:05', '2005-08-05 19:48:57', '1990-08-20 20:32:52', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (69, 69, '1980-07-28 20:24:39', '1995-11-14 20:27:10', '1979-12-23 21:57:09', '2005-11-07 01:24:05', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (70, 70, '1980-01-19 09:22:05', '1987-03-26 03:54:41', '1978-09-16 23:25:00', '2021-05-27 18:24:58', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (71, 71, '1972-04-16 17:23:49', '2020-03-05 23:12:27', '1998-02-17 12:12:58', '2003-08-29 12:45:19', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (72, 72, '2001-12-27 08:33:33', '2000-03-16 19:20:09', '1999-03-18 00:16:53', '2017-11-13 18:01:56', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (73, 73, '1983-02-14 14:42:22', '2012-04-07 22:03:23', '2009-06-17 04:31:22', '2002-07-24 10:29:18', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (74, 74, '2002-02-13 03:58:25', '2003-12-06 09:39:20', '2003-01-04 08:50:49', '1987-09-02 08:07:00', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (75, 75, '1989-03-24 06:11:59', '2016-04-10 14:57:46', '2015-02-12 03:38:59', '2018-12-21 02:03:36', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (76, 76, '2014-01-16 10:05:43', '1980-06-12 00:22:47', '2002-05-12 11:07:16', '2013-04-04 08:51:34', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (77, 77, '1989-07-20 17:01:08', '1984-01-24 05:33:15', '2018-03-04 08:31:45', '2014-11-22 17:57:07', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (78, 78, '1972-10-17 05:15:38', '2017-03-01 03:54:08', '2001-02-08 12:12:44', '2002-03-10 09:46:56', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (79, 79, '1987-09-16 13:59:51', '1988-06-25 19:09:21', '1978-07-09 10:53:08', '2006-05-17 02:00:56', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (80, 80, '1977-08-15 15:57:49', '1982-03-21 16:38:22', '1979-03-22 05:00:46', '1975-08-29 16:45:05', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (81, 81, '2008-02-25 19:44:33', '2005-10-28 03:15:56', '2011-03-16 09:10:14', '1970-10-11 04:33:11', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (82, 82, '1997-09-09 14:29:49', '1980-12-28 01:55:10', '1997-07-08 14:40:54', '2010-05-13 03:16:31', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (83, 83, '2008-01-11 16:30:10', '1996-01-29 06:11:13', '1999-03-22 03:58:57', '2000-06-29 09:19:49', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (84, 84, '2011-03-31 14:54:37', '1999-07-05 09:19:14', '1991-06-11 14:04:46', '1975-11-12 16:19:04', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (85, 85, '2013-05-25 20:19:36', '2017-01-13 14:48:31', '2011-04-04 06:08:53', '2011-05-09 11:19:22', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (86, 86, '1987-09-07 13:37:57', '1974-08-25 21:38:23', '1990-06-10 21:21:12', '1972-06-06 05:16:30', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (87, 87, '1988-06-29 03:35:21', '2001-03-12 23:52:47', '2021-02-11 18:31:29', '1977-11-26 11:31:02', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (88, 88, '1994-04-15 20:03:31', '2002-04-15 02:52:04', '1986-12-29 08:02:06', '1974-05-02 19:38:21', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (89, 89, '2013-11-05 09:11:54', '1999-12-27 23:07:28', '1971-04-30 02:46:29', '1989-12-27 01:24:08', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (90, 90, '2006-05-04 10:37:29', '1993-06-16 19:02:02', '2003-02-15 01:42:43', '1981-04-08 17:00:04', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (91, 91, '1978-12-07 02:53:27', '2000-03-10 05:16:55', '1990-02-18 17:13:32', '1994-05-09 16:38:18', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (92, 92, '2008-03-03 09:52:39', '1979-04-18 15:36:21', '1972-03-21 12:07:33', '1974-06-21 17:13:11', 3);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (93, 93, '2015-06-23 22:15:56', '1991-11-10 02:32:37', '2008-06-17 22:52:00', '1987-04-15 14:48:00', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (94, 94, '2019-04-05 20:31:40', '2018-09-17 03:38:11', '1993-11-01 08:13:43', '2008-03-17 06:39:10', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (95, 95, '2016-08-08 03:27:35', '2019-10-18 21:04:40', '1983-11-14 19:11:29', '1978-10-28 13:12:43', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (96, 96, '2015-07-17 22:42:06', '1981-10-02 23:00:10', '1992-01-20 18:41:04', '1978-11-13 13:36:29', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (97, 97, '2008-03-01 18:20:47', '1986-09-29 08:55:10', '1989-04-14 13:21:48', '1991-07-13 11:42:49', 1);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (98, 98, '1980-07-23 22:44:00', '2016-07-31 17:03:42', '2000-03-12 23:31:48', '1971-01-18 16:14:17', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (99, 99, '1990-01-16 10:19:34', '2012-12-27 10:10:24', '2021-02-10 07:03:56', '1989-09-15 07:17:09', 2);
INSERT INTO `friendship` (`user_id`, `friend_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`, `request_type_id`) VALUES (100, 100, '2016-03-15 21:23:15', '1977-11-05 13:08:36', '2001-12-03 10:38:18', '1978-09-18 03:52:42', 2);

DROP TABLE IF EXISTS `friendship_request_types`;
CREATE TABLE friendship_request_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  name VARCHAR(150) NOT NULL UNIQUE COMMENT "Название статуса",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"  
) COMMENT "Типы запроса на дружбы";

ALTER TABLE friendship ADD CONSTRAINT friendship_request_type_id FOREIGN KEY (request_type_id) REFERENCES friendship_request_types(id); 
-- ALTER TABLE friendship DROP FOREIGN KEY friendship_request_type_id;
ALTER TABLE friendship_request_types ADD CONSTRAINT friendship_request_type_id FOREIGN KEY (request_type_id) REFERENCES friendship(id); 

INSERT INTO `friendship_request_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'temporibus', '2015-04-15 20:17:52', '2001-01-12 08:25:10');
INSERT INTO `friendship_request_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'ad', '2014-02-22 04:31:15', '2008-02-05 19:09:03');
INSERT INTO `friendship_request_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'id', '1988-10-03 11:39:25', '1994-06-12 19:31:31');

-- Связи РСУБД подкрепляются FK
-- Кардинальность (1:1, 1:n, n:n)

-- Таблица групп
DROP TABLE IF EXISTS `communities`;
CREATE TABLE communities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор сроки",
  name VARCHAR(150) NOT NULL UNIQUE COMMENT "Название группы",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"  
) COMMENT "Группы";

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'esse', '2005-01-24 10:47:25', '1986-07-08 10:46:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'sint', '1990-12-22 15:54:01', '2007-09-22 15:23:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'velit', '1995-08-17 12:47:08', '1994-05-10 04:01:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'sapiente', '1991-06-26 12:14:45', '1983-09-24 17:26:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'rem', '2017-11-16 08:16:22', '1973-06-28 23:59:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'delectus', '1981-05-17 08:24:39', '2019-06-28 10:02:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'sequi', '1995-02-09 01:17:55', '1988-08-30 10:14:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'sed', '1977-02-07 07:27:13', '2002-07-31 20:47:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'amet', '1991-01-19 08:07:25', '2013-08-28 11:49:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'tempora', '2002-06-06 02:00:42', '2021-09-10 00:40:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'mollitia', '1992-07-25 22:00:18', '1981-03-20 04:11:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'sit', '1995-08-03 08:31:43', '2015-05-01 14:06:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'consequuntur', '2017-03-19 05:19:41', '1984-02-27 06:52:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'aspernatur', '1984-01-28 08:11:27', '1970-09-21 15:42:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'facilis', '2011-11-07 21:25:16', '1994-10-04 14:13:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'minus', '2013-04-02 06:44:00', '2004-10-07 04:04:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'voluptatibus', '1993-07-21 18:17:10', '1988-09-08 01:03:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'fuga', '1977-09-18 19:11:59', '1990-12-26 09:08:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'tenetur', '1991-10-16 06:06:35', '1973-10-02 23:21:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'laboriosam', '1994-12-06 17:19:54', '1996-07-08 21:31:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'pariatur', '1979-01-01 16:19:02', '1999-07-20 06:44:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'corporis', '2002-10-05 04:40:43', '1974-08-12 01:38:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'laudantium', '1972-09-15 21:56:25', '1999-06-27 13:15:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'vel', '2012-10-30 16:37:16', '1991-03-25 19:57:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'occaecati', '1996-02-24 16:18:03', '1993-04-05 04:23:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'eveniet', '2021-02-12 19:45:28', '2020-12-16 20:36:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'possimus', '1984-10-03 00:42:36', '2013-09-07 23:14:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'qui', '1997-10-04 21:39:13', '1987-09-29 08:06:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'officiis', '2000-10-07 12:54:07', '1998-02-09 22:16:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'quisquam', '2001-11-22 14:44:24', '2004-09-30 14:45:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'temporibus', '2018-11-30 20:26:01', '1992-08-28 21:33:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'quis', '1980-05-11 22:13:09', '1996-11-30 15:50:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'blanditiis', '1973-05-12 03:54:39', '1972-08-16 10:28:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'est', '2007-10-10 16:25:09', '2018-09-09 01:30:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'dolores', '1978-11-10 12:30:57', '1998-04-27 02:27:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'reprehenderit', '2013-06-16 11:06:29', '2009-02-17 00:02:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'incidunt', '1990-03-20 15:30:34', '2007-11-13 15:40:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'animi', '1989-06-14 14:22:46', '2005-07-07 15:51:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'optio', '2020-12-15 12:17:17', '2004-12-28 10:51:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'error', '1974-05-10 04:48:36', '1990-01-25 07:30:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'quae', '1994-06-03 15:43:38', '1981-04-12 13:59:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'eum', '2009-12-13 11:58:22', '1975-07-03 13:35:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'architecto', '1989-01-01 21:37:30', '2003-12-12 03:19:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'saepe', '1998-12-16 07:09:51', '2004-07-31 11:11:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'autem', '1997-08-01 14:44:54', '2011-10-03 20:01:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'nesciunt', '1994-12-06 08:59:40', '1988-01-22 14:39:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'officia', '2010-08-13 12:33:08', '1977-05-24 16:56:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'similique', '1980-10-11 11:13:20', '1983-05-13 16:00:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'veniam', '2007-06-16 20:03:46', '2013-10-14 13:32:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'perferendis', '1987-03-12 03:59:40', '1988-07-02 01:59:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'minima', '2016-08-05 01:50:06', '1994-12-23 16:12:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'dicta', '2018-05-17 00:44:46', '2002-04-11 01:29:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'molestiae', '1979-10-08 00:26:26', '2004-02-01 06:26:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'nam', '2010-09-07 07:24:35', '2002-04-05 03:00:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'accusantium', '2016-11-11 06:44:39', '2001-04-20 00:36:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'neque', '2006-04-09 13:00:44', '1984-03-30 08:09:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'fugiat', '1992-04-05 09:39:25', '1990-05-03 14:45:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'vero', '2020-02-17 18:33:59', '1988-01-19 11:44:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'alias', '1998-12-23 11:58:54', '2017-05-06 08:46:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'aut', '2013-09-22 00:09:06', '2015-01-31 02:16:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'ut', '2000-01-27 01:02:00', '2007-04-19 20:58:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'earum', '2009-12-25 10:10:21', '1988-06-15 03:31:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'voluptate', '2016-06-28 22:38:42', '2004-11-06 21:47:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'rerum', '2008-04-18 05:53:31', '1994-02-13 20:25:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'modi', '2010-03-05 06:29:16', '1970-04-21 03:14:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'cupiditate', '1987-12-14 18:46:17', '1974-10-25 18:11:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'nihil', '2004-08-12 23:42:45', '2005-03-19 11:10:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'eligendi', '2017-05-12 17:04:45', '1972-09-19 17:22:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'magni', '1984-08-29 08:16:39', '1988-09-22 21:36:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'soluta', '2017-12-02 19:44:01', '1989-08-10 01:44:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'ratione', '2004-07-14 10:11:53', '1977-02-09 23:22:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'dolor', '1987-12-24 15:33:26', '2012-08-25 21:18:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'quas', '2003-07-02 07:34:39', '2018-08-19 05:34:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'ad', '1999-04-06 17:51:29', '2017-05-11 07:43:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'sunt', '1992-05-09 19:40:13', '2014-09-11 12:09:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'quibusdam', '1979-07-16 07:20:23', '2011-01-20 08:18:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'enim', '1979-10-29 00:51:19', '1992-12-24 09:18:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'recusandae', '1988-06-11 04:31:13', '1991-04-11 19:21:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'consequatur', '2017-10-26 08:11:41', '1997-09-08 07:20:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'molestias', '1984-03-04 01:38:52', '2008-12-12 09:16:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'quia', '1990-06-06 18:22:21', '1984-11-01 05:35:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'quod', '1992-08-03 06:20:12', '2010-04-10 01:24:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'porro', '2008-01-01 07:12:06', '2008-07-29 10:59:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'suscipit', '2020-03-13 07:51:47', '1983-11-19 14:07:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'exercitationem', '1973-08-17 11:31:56', '2003-10-30 07:28:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'at', '1981-10-16 02:58:56', '2016-06-03 11:52:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'et', '2003-03-23 09:56:49', '1992-03-13 14:10:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'accusamus', '1987-01-10 05:43:28', '2016-07-07 10:08:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'ab', '2009-11-03 16:12:56', '1991-01-23 04:14:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'itaque', '2009-08-16 21:38:43', '1997-12-30 13:14:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'dolorem', '1970-01-19 20:41:05', '1992-02-01 20:56:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'a', '2021-02-11 20:55:47', '2015-03-02 01:36:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'voluptatum', '1983-10-17 06:45:01', '2018-08-27 15:43:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'maiores', '1995-01-10 10:37:29', '1992-06-29 07:40:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'veritatis', '2017-09-23 17:55:00', '1989-04-18 13:33:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'repellendus', '2020-11-10 20:32:49', '2011-08-05 14:01:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'totam', '1973-06-10 16:52:48', '1988-01-06 15:32:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'placeat', '1971-02-23 00:27:57', '1972-10-30 22:59:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'quo', '1990-01-27 03:22:21', '2018-05-03 19:20:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'omnis', '1979-07-14 12:33:43', '1977-12-07 04:42:26');

-- n:n всегда реализуется через таблицу связей
-- Таблица связи пользователей и групп
DROP TABLE IF EXISTS `communities_users`;
CREATE TABLE communities_users (
  community_id INT UNSIGNED NOT NULL COMMENT "Ссылка на группу",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки", 
  PRIMARY KEY (community_id, user_id) COMMENT "Составной первичный ключ"
) COMMENT "Участники групп, связь между пользователями и группами";

ALTER TABLE communities_users ADD CONSTRAINT communities_users_user_id FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE communities_users ADD CONSTRAINT communities_users_community_id_id FOREIGN KEY (community_id) REFERENCES communities(id);

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '1986-02-21 19:05:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '1972-04-10 05:29:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '1974-04-07 12:56:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2011-03-18 02:00:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '1988-02-12 23:30:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '1985-02-26 09:27:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '2001-08-17 06:12:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '2001-11-26 17:40:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '1981-04-15 09:56:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '1992-10-20 08:34:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '2012-08-26 10:40:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '1980-11-27 18:32:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '1971-02-13 03:34:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '1991-01-25 03:49:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '2012-01-07 18:16:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 16, '1984-07-28 15:56:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 17, '2005-12-08 13:54:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 18, '1999-10-18 06:02:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 19, '1991-02-17 01:04:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 20, '1975-02-16 12:36:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 21, '2016-05-25 01:08:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 22, '1995-04-09 05:02:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 23, '2017-02-08 19:17:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 24, '1999-11-24 04:33:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 25, '1992-01-15 03:39:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 26, '2020-09-27 23:01:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 27, '2001-06-08 13:49:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 28, '1994-12-14 17:49:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 29, '1986-02-28 06:03:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 30, '2016-07-26 16:43:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 31, '1995-03-08 23:48:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 32, '1996-12-07 16:39:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 33, '1995-07-19 21:46:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 34, '2020-10-10 19:19:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 35, '2010-11-12 04:51:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 36, '1987-12-01 09:17:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 37, '2021-09-03 02:09:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 38, '1988-03-05 18:25:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 39, '2021-03-11 00:52:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 40, '1987-12-05 02:22:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 41, '2004-12-28 03:56:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 42, '1982-02-04 04:39:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 43, '2017-12-02 19:30:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 44, '1974-12-31 13:59:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 45, '1989-02-14 11:10:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 46, '1972-01-30 18:48:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 47, '2011-01-07 06:05:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 48, '1993-03-20 19:31:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 49, '1991-04-12 18:00:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 50, '1993-03-31 03:19:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 51, '2008-10-22 17:04:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 52, '1984-08-14 15:14:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 53, '2016-06-17 04:11:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 54, '1973-12-09 01:55:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 55, '1993-10-30 00:39:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (56, 56, '1990-07-14 07:16:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 57, '2002-02-05 22:51:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 58, '1984-03-17 10:38:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 59, '2005-05-21 15:42:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 60, '1970-06-26 09:13:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 61, '1997-01-15 13:28:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 62, '2019-12-03 06:55:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 63, '1971-02-26 04:15:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 64, '2021-03-26 04:35:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 65, '1971-03-11 21:05:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 66, '1978-04-27 22:05:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 67, '2013-06-29 11:30:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 68, '1986-03-23 15:41:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 69, '2005-12-28 08:56:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 70, '2006-06-26 15:01:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 71, '1977-06-19 01:47:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 72, '2005-03-14 02:29:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 73, '1982-09-25 14:42:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (74, 74, '2011-10-18 22:38:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 75, '1977-06-17 11:46:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 76, '1987-07-03 04:20:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 77, '1983-05-03 05:19:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (78, 78, '2003-08-25 23:45:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 79, '1989-04-13 04:27:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 80, '1979-12-16 17:35:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 81, '1996-01-06 02:10:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 82, '1981-06-18 23:40:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 83, '1983-01-14 10:09:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 84, '1979-06-22 15:20:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 85, '2010-10-26 22:53:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 86, '2014-02-23 23:37:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (87, 87, '1987-07-24 06:59:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 88, '2013-05-16 09:21:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 89, '2004-06-20 03:08:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 90, '1974-02-08 23:50:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 91, '1998-09-07 10:50:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 92, '1992-05-15 08:37:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 93, '1975-08-09 18:11:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 94, '1994-01-04 07:34:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (95, 95, '2009-10-03 01:49:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 96, '1981-01-08 20:28:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 97, '2004-04-08 05:53:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 98, '1973-02-03 13:38:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 99, '1985-10-20 13:34:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 100, '2018-03-27 12:28:27');

DROP TABLE IF EXISTS `messages`;
CREATE TABLE messages (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  from_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на отправителя сообщения",
  to_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя сообщения",
  body TEXT NOT NULL COMMENT "Текст сообщения",
  is_important BOOLEAN COMMENT "Признак важности",
  is_delivered BOOLEAN COMMENT "Признак доставки",
  created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Сообщения";

ALTER TABLE messages ADD CONSTRAINT messages_from_user_id FOREIGN KEY (from_user_id) REFERENCES users(id);
ALTER TABLE messages ADD CONSTRAINT messages_to_user_id FOREIGN KEY (to_user_id) REFERENCES users(id);

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (1, 1, 1, 'Laboriosam voluptatem nostrum autem distinctio. Dolorum nihil velit et laudantium ducimus. Modi voluptatem voluptatem quis nobis.', 1, 1, '1972-07-23 20:49:46', '2000-03-24 21:49:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (2, 2, 2, 'Est saepe nemo nam delectus eaque enim. Pariatur numquam delectus accusamus cum. Alias dolore aperiam rem.', 0, 1, '2020-01-12 04:39:26', '1978-12-09 15:16:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (3, 3, 3, 'Est in doloremque sunt. Et cupiditate illo et autem quaerat qui reiciendis. Impedit nesciunt ea itaque eligendi asperiores. Beatae doloremque neque aperiam magni sequi beatae repudiandae.', 0, 1, '2016-12-19 15:57:23', '1993-01-19 09:42:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (4, 4, 4, 'Recusandae sed quia est. Laboriosam ut ea minima. Et vel numquam non et eveniet ut.', 0, 0, '1994-05-18 15:35:48', '1990-04-09 18:30:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (5, 5, 5, 'Tenetur similique qui ut deserunt in et. Est ipsum unde consequuntur adipisci reiciendis. Dolores dolor doloribus quo laborum est. Eum sunt fugiat voluptatibus asperiores fuga id.', 1, 1, '2007-06-22 23:33:39', '1971-11-13 10:34:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (6, 6, 6, 'Qui et blanditiis numquam et blanditiis totam animi. Vel minima tempora fugit sunt inventore. Impedit repellat consequuntur rem accusantium.', 0, 0, '2009-01-07 09:46:28', '1998-09-30 22:05:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (7, 7, 7, 'Repellat quis et minus voluptatum placeat qui nisi. Assumenda nam consectetur quae deleniti qui ad. Natus eius dolorem et molestiae enim voluptas.', 1, 1, '1987-08-10 03:33:26', '2018-04-11 12:48:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (8, 8, 8, 'Earum hic qui explicabo in error sit deserunt. Non porro expedita officiis omnis distinctio. Omnis eius quo voluptatem odit ipsum.', 1, 1, '1982-10-14 17:47:16', '2008-01-23 04:34:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (9, 9, 9, 'Delectus dolor corporis quia molestiae non unde in asperiores. Repellat eos sit mollitia. Necessitatibus odio voluptatem ipsum aut deserunt porro.', 1, 0, '2018-02-23 23:07:38', '1992-09-06 16:07:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (10, 10, 10, 'Voluptatem sapiente non dignissimos corporis culpa perferendis. Numquam sit atque inventore magnam aut. Et consequatur et sed. Sit iure architecto doloremque omnis eos qui sint perspiciatis.', 0, 1, '2015-06-25 19:13:37', '1986-09-20 07:06:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (11, 11, 11, 'Quia impedit blanditiis quasi omnis voluptatem officiis eum impedit. Omnis nostrum consequatur saepe dolorum ut ut. Dolorum omnis doloremque qui amet aliquid.', 0, 0, '2007-02-22 22:30:32', '1983-11-27 12:40:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (12, 12, 12, 'Molestiae sapiente qui quos molestiae rerum quis et. Quia consequatur nihil necessitatibus sequi omnis. Voluptas nihil doloremque temporibus atque velit ipsam accusantium. Reprehenderit sed modi officiis quia.', 0, 0, '1974-06-13 05:36:13', '2001-01-01 06:04:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (13, 13, 13, 'Alias doloremque non sit voluptate beatae. Fugiat laborum provident nesciunt consequatur sapiente incidunt quis. Aut nam maxime optio iste et explicabo.', 0, 1, '2008-02-24 06:38:53', '1976-03-20 01:41:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (14, 14, 14, 'Quam quis tenetur quis facere. Eaque ea enim inventore incidunt officiis voluptatem sequi. Non molestiae rerum culpa minima.', 0, 1, '2004-06-09 14:15:47', '1982-02-01 02:57:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (15, 15, 15, 'Deserunt ex amet odit error molestiae nihil est. Architecto amet eligendi et quam odit. At sit qui est. Est quia quis hic et sunt consequuntur et dolor.', 0, 0, '1976-02-02 09:50:05', '2019-02-14 11:28:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (16, 16, 16, 'Et iusto accusamus harum eos. Voluptate non atque a assumenda neque aliquam. Quisquam amet velit nostrum.', 1, 0, '2005-02-18 23:09:40', '1970-01-23 09:54:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (17, 17, 17, 'Modi placeat in corporis atque asperiores qui voluptas. Vel nobis sequi et at tempora vel aliquid. Et dolores qui perferendis porro expedita odit. Vel optio repudiandae quia hic.', 0, 0, '1998-06-28 03:25:47', '2015-11-06 22:10:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (18, 18, 18, 'Vel nam quia occaecati quasi expedita. Et iste architecto ipsum aut. Tempora sunt in qui ex sunt. Omnis cum modi et assumenda hic culpa.', 1, 0, '2011-07-28 07:37:29', '1996-07-16 22:56:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (19, 19, 19, 'Fugiat quaerat deleniti qui nihil quisquam et aperiam aut. Et a sequi incidunt ea doloremque ex. Sint hic fugit beatae eveniet accusantium ad.', 1, 0, '2005-06-09 12:45:10', '1998-06-29 00:14:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (20, 20, 20, 'Quibusdam deleniti reiciendis eveniet eaque quia. Sed excepturi in culpa. Quidem quibusdam est illo nihil veniam nobis alias. Quisquam sed labore eum est quia tempora. Aspernatur aliquam veritatis eveniet occaecati maiores ea et.', 1, 0, '2014-02-04 17:32:38', '1972-06-23 03:44:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (21, 21, 21, 'Veniam velit laborum consequatur pariatur maiores itaque. Debitis maxime cum eius numquam sint magni est ut. Et occaecati impedit placeat et dolor eum tenetur.', 0, 1, '1986-03-08 12:11:31', '1994-10-04 22:04:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (22, 22, 22, 'Qui harum sed minus labore. Quo reprehenderit quia sint ducimus quia. Dolor natus labore sapiente minima accusamus dolorem. Voluptates in aut atque ipsam earum harum.', 0, 1, '2005-04-03 06:46:02', '2012-02-19 04:25:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (23, 23, 23, 'Hic magni occaecati laborum tenetur officiis neque. Ea fuga quasi dolor perferendis aperiam labore. Eos rerum repellendus et provident dolorum ut et.', 1, 1, '2003-03-08 14:14:17', '2003-09-30 17:36:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (24, 24, 24, 'Voluptates illum exercitationem quia. Sequi sint consequatur est molestiae aliquam iusto. Alias quidem tempora molestias animi voluptas incidunt. Eligendi non blanditiis rerum minima aut et. Eos consequatur et et dolor.', 0, 0, '1981-10-03 23:46:05', '1977-07-27 19:08:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (25, 25, 25, 'Excepturi enim eaque et aut doloribus laudantium. Incidunt at maxime dolores sunt reprehenderit odit. Provident doloribus quia corrupti vel. Quis explicabo vero exercitationem et natus cupiditate natus.', 1, 0, '1972-01-19 00:16:51', '2006-09-16 02:20:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (26, 26, 26, 'Et sapiente necessitatibus unde. Eligendi sunt et doloremque nulla. Laborum id non dolor quis sapiente.', 0, 0, '1973-03-01 09:57:09', '2010-11-03 01:53:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (27, 27, 27, 'Temporibus qui qui saepe. Qui est et dolorem temporibus quas quia. Voluptatem tempore neque pariatur quas ab reprehenderit voluptas est. Modi consequuntur ut velit quam ipsam.', 0, 1, '1988-10-28 17:43:05', '1993-07-03 07:47:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (28, 28, 28, 'Similique deleniti sit qui doloremque exercitationem. Sed repellat omnis minus et aut. Labore et corrupti pariatur iure impedit molestiae amet.', 0, 0, '1994-03-11 07:33:12', '2007-11-21 01:46:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (29, 29, 29, 'Omnis iure aut sit aut blanditiis. Officiis magni assumenda consequuntur sint. Sit et est voluptates ad qui debitis. Aliquam debitis dolor a iste est.', 0, 1, '1970-10-12 11:43:23', '1983-12-27 20:01:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (30, 30, 30, 'Dolorem aliquid laboriosam rerum repudiandae rerum est exercitationem. Et qui ipsa aut dolores. Omnis laboriosam omnis explicabo sit voluptatem.', 0, 1, '1997-02-24 14:58:20', '2018-11-03 14:13:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (31, 31, 31, 'Dolores voluptatem sint itaque voluptates rerum expedita laboriosam. Culpa consequatur dolor est delectus hic. Veniam rerum voluptatem dignissimos. Mollitia facilis eum deserunt explicabo amet dolores. Sequi suscipit eos distinctio nam ea molestiae.', 1, 1, '2015-10-01 22:19:11', '1995-02-23 02:00:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (32, 32, 32, 'Iusto quo deserunt cupiditate. Velit quas veritatis occaecati porro ipsa dolorum facilis. Atque quia molestias laudantium alias voluptas omnis.', 1, 0, '1988-06-10 12:52:10', '1972-01-06 05:11:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (33, 33, 33, 'Nemo quis quia eveniet quo neque quia omnis. Mollitia possimus deserunt corporis molestiae pariatur. Excepturi voluptas sed eos pariatur veritatis deserunt omnis voluptatum. Aut corrupti hic cumque.', 0, 0, '2014-12-31 20:02:55', '1972-05-25 06:03:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (34, 34, 34, 'Quae dolorem eligendi adipisci. Sit sit veritatis sit laboriosam aliquid at explicabo. Reiciendis similique aut voluptatem inventore et cum. Ea eligendi corporis dolorum explicabo. Voluptatem sint officiis id veritatis laudantium neque.', 0, 1, '2016-09-13 22:27:09', '1986-04-27 08:09:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (35, 35, 35, 'Magnam officia ut similique. Autem labore et recusandae tempora deserunt. Nihil ipsam fugiat doloribus dolorum magnam odio repellendus.', 0, 0, '1999-07-26 06:09:38', '2005-07-09 13:00:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (36, 36, 36, 'Et sit quos blanditiis voluptatem. Veniam quae laboriosam consequatur et. At autem totam aut enim quos delectus nihil consequatur.', 0, 0, '2016-10-27 13:34:38', '2001-05-12 19:46:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (37, 37, 37, 'Soluta non voluptatem quo iure. Ad est officiis autem ut est pariatur fugiat.', 1, 1, '1990-10-10 05:57:25', '2018-08-21 23:41:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (38, 38, 38, 'Velit velit sint vitae illum quia. Ab quia sint pariatur esse facere exercitationem. Tenetur labore et aut debitis molestiae.', 0, 0, '1996-01-28 21:56:33', '1996-05-04 04:03:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (39, 39, 39, 'Corporis molestiae qui enim distinctio sint. Error enim dolor quasi. Et nihil numquam atque dolor voluptatibus facilis dicta non.', 0, 1, '2004-11-01 05:40:54', '2021-06-03 23:50:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (40, 40, 40, 'Rem culpa et placeat aut eos ex qui. Aut nemo aut aperiam qui.', 0, 1, '1984-03-28 05:39:47', '1983-07-24 10:12:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (41, 41, 41, 'Quasi corporis sunt a magnam ea. Dolor maiores omnis quidem eos eaque labore est. Tempora assumenda nostrum sunt quia voluptatem officiis. Aliquam similique et quo recusandae eaque voluptatem.', 0, 0, '2002-12-10 11:11:49', '2009-08-10 23:56:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (42, 42, 42, 'Quod ratione illum sit aliquid. Praesentium sed laborum error ea illum quia quas. Amet voluptates id quo. Et ea sit ratione cum a tempora.', 1, 1, '1991-02-06 20:18:18', '1989-06-06 06:26:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (43, 43, 43, 'Voluptatem hic dolor non aliquam. Alias architecto natus aut quis voluptas architecto fuga. Possimus commodi corrupti autem ab accusantium quia cupiditate.', 1, 0, '1981-12-09 11:25:40', '1972-04-18 16:10:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (44, 44, 44, 'Et saepe itaque voluptatem beatae. Molestiae nihil aut et suscipit eveniet pariatur. Sapiente est aut corporis eum.', 1, 0, '1985-12-26 09:15:20', '2020-08-06 23:33:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (45, 45, 45, 'Quod iste eius dicta eum porro quasi occaecati. Non ad sit minus asperiores ut est perferendis. Ipsa error alias delectus earum recusandae. Similique expedita consequatur et est.', 1, 1, '2005-05-03 01:09:17', '2007-11-05 20:30:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (46, 46, 46, 'Est similique iure ut cumque et in. Maxime doloribus perspiciatis suscipit illum aliquam ut mollitia. Ut aliquid dolorem corrupti cum dolorem. Quidem ex ex ut aliquam exercitationem a.', 0, 1, '1999-01-30 20:42:52', '1981-01-16 00:58:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (47, 47, 47, 'Excepturi qui fuga odio iusto hic laborum maxime nemo. Blanditiis aut est minus. Sit eos vel laboriosam quod.', 0, 0, '1987-01-29 10:29:27', '2000-01-08 23:05:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (48, 48, 48, 'Eos rerum sint ad ad tenetur. Perspiciatis perspiciatis corrupti voluptas omnis quo sint praesentium. Ut voluptatem fuga aperiam et consectetur qui.', 0, 1, '2003-01-04 17:23:37', '2018-02-26 09:23:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (49, 49, 49, 'Mollitia omnis sapiente saepe voluptatem odit est. Iure quasi saepe magnam voluptas. Quis velit quis sint ab. Consequatur quia beatae nihil est qui officiis officiis.', 1, 1, '1990-04-14 18:47:06', '1993-10-23 10:52:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (50, 50, 50, 'Voluptatem aut excepturi quod non. Dolore velit eligendi voluptatem ipsam. Voluptas culpa natus pariatur et.', 0, 1, '1992-10-07 04:13:10', '1979-01-04 04:52:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (51, 51, 51, 'Aperiam rerum quis voluptatibus inventore impedit quos est voluptatibus. Quibusdam fuga ut rerum quisquam et sed. Id eum hic dolorem placeat accusantium modi. Numquam doloremque eos molestiae omnis. Vel quisquam rem dolores quae cumque.', 1, 1, '2016-02-02 02:03:21', '1975-04-12 22:50:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (52, 52, 52, 'Velit illo iusto ea occaecati. Accusamus in quod ut molestiae. Aut dignissimos et hic repellendus. Magnam magnam sed tempore sed accusantium mollitia.', 1, 1, '1993-03-05 04:09:07', '1999-08-24 07:27:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (53, 53, 53, 'Non aut consequatur suscipit inventore. Quia minus aut praesentium ipsum. Qui molestias dicta sed aperiam voluptatibus. Aut impedit cumque et nesciunt.', 0, 1, '2021-01-04 00:11:47', '1974-12-28 19:49:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (54, 54, 54, 'Necessitatibus fugit est iste omnis nemo. Incidunt sint nostrum velit et animi accusamus. Adipisci et tempore mollitia ducimus.', 1, 0, '1983-03-01 20:53:50', '2013-02-13 23:18:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (55, 55, 55, 'Ut ad aperiam eos. Distinctio ipsa sequi impedit omnis facere temporibus. Quam voluptas ea doloremque vero. Rerum expedita doloremque officia eaque omnis. Enim eos harum praesentium delectus dignissimos itaque.', 0, 1, '2010-01-19 03:12:16', '1984-07-30 10:00:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (56, 56, 56, 'Aliquid aliquid nihil debitis et quidem culpa. Deleniti tempora et cumque et culpa omnis.', 1, 1, '1992-06-24 17:48:13', '2015-04-16 19:40:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (57, 57, 57, 'Voluptates debitis voluptatem culpa et. Minus assumenda dolorem quod. Modi odio maiores blanditiis possimus molestiae aut. Facilis voluptas tempore libero rerum autem aut.', 0, 1, '2008-07-05 08:25:53', '2005-06-14 12:02:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (58, 58, 58, 'Corrupti voluptatem reiciendis enim distinctio quas voluptas dolores. Quia sunt excepturi facilis in iste error. Sed aut quidem iure eos quis recusandae repellendus rerum. Omnis aperiam sed molestias aliquid fugiat atque atque.', 1, 1, '1997-04-13 20:31:36', '1979-11-19 22:38:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (59, 59, 59, 'Rem ducimus voluptatem vel itaque ut. Odit cumque possimus consequatur doloribus temporibus in velit. Aspernatur sit delectus accusamus dolorum distinctio est. Magni ducimus beatae ratione et odio dicta consequuntur.', 0, 1, '1990-01-29 16:31:47', '1987-11-27 10:59:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (60, 60, 60, 'Dolor exercitationem ad consequuntur aut voluptas est fuga. Blanditiis est minus sint adipisci tempora ipsum qui similique. In quasi ullam voluptatem itaque sunt.', 0, 1, '1970-01-04 01:43:56', '1994-07-31 17:14:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (61, 61, 61, 'Sit quibusdam ut expedita soluta. Maiores ut sed voluptas quia dolores. Dolore eum et ducimus iste aliquam hic. Est numquam dolor architecto aut optio quas est.', 1, 0, '2011-12-24 17:04:40', '1978-06-16 21:10:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (62, 62, 62, 'Et consequatur temporibus perferendis quis perspiciatis illo. Beatae soluta illo rerum aperiam dolor pariatur quia. Voluptatibus aut vel sed labore sed vel repellat omnis. Quia veritatis et earum maxime odio.', 0, 1, '1980-11-09 01:08:05', '1985-11-18 21:40:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (63, 63, 63, 'Maxime esse architecto quas vitae nobis natus unde. Laboriosam id aperiam eum nobis ut. Repellat impedit consequatur eius corrupti quo.', 1, 1, '2014-05-11 13:07:46', '2013-06-07 05:57:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (64, 64, 64, 'Optio ex omnis natus rerum. Eligendi quia ad sapiente alias id quibusdam quia voluptatem. Enim quia eum consequuntur provident et. Earum maiores consequatur qui aut.', 1, 0, '1980-11-10 20:09:16', '2001-07-23 08:38:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (65, 65, 65, 'Ducimus et impedit dolores earum minima. Temporibus quasi vel consequatur pariatur ducimus iusto. Suscipit rerum animi aut quia blanditiis eius.', 1, 0, '1983-11-25 02:12:08', '1984-02-28 22:50:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (66, 66, 66, 'Aperiam recusandae sunt sit et sit illum similique. Non et ratione dignissimos qui rem dolor similique. Pariatur doloremque placeat inventore dolorem ut.', 0, 1, '1989-05-27 14:12:44', '1988-10-23 21:06:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (67, 67, 67, 'Et animi fugit consequatur dolore. Illo quo incidunt in voluptas. Qui aspernatur iure et quae. Laboriosam recusandae labore cum enim omnis vitae veniam.', 0, 1, '2017-12-08 12:35:06', '1979-03-26 10:40:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (68, 68, 68, 'Omnis consequuntur corrupti consequatur corporis. Harum nostrum optio iste unde est explicabo.', 0, 1, '2016-01-29 11:02:10', '1991-10-02 07:53:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (69, 69, 69, 'Eveniet tempore quos sed magni quibusdam. Et accusantium dolores et tempora. Enim ex placeat aut aliquid veniam.', 0, 1, '2013-10-27 06:57:48', '1973-03-25 10:56:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (70, 70, 70, 'Consequatur porro minima molestiae doloremque est earum. Fuga ut expedita dolor sint debitis ab illum. Provident tempora exercitationem necessitatibus minus. Eum ea ut et.', 1, 1, '2021-03-20 22:55:48', '1987-12-12 04:33:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (71, 71, 71, 'Voluptatum aut sint ullam placeat a debitis. Magni sit sapiente et ducimus sint.', 1, 0, '2019-07-16 05:16:46', '2012-10-03 17:26:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (72, 72, 72, 'Iusto placeat ut est explicabo facere quos et. Quos quae est ipsa accusantium. Deserunt molestiae veniam ut quaerat.', 1, 0, '1984-10-04 23:22:17', '1978-05-07 12:17:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (73, 73, 73, 'Quisquam praesentium reprehenderit tempora voluptas iure sapiente delectus. Qui cumque voluptatem assumenda ut et. Quia repudiandae porro asperiores itaque nisi. Autem sit non veniam ipsum et omnis nihil totam.', 1, 0, '1985-05-28 09:15:59', '2003-03-11 05:01:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (74, 74, 74, 'Non eum quis quis harum earum. Et id error ipsum cupiditate suscipit possimus possimus. Maiores voluptatibus illo iure impedit voluptate.', 0, 0, '2010-12-02 12:38:06', '1986-11-12 01:19:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (75, 75, 75, 'Consectetur aut aut eum ut adipisci. Architecto dolore et incidunt harum culpa.', 1, 1, '1983-12-07 11:33:53', '1995-02-19 20:15:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (76, 76, 76, 'Dolor tempora vel voluptatem cupiditate consectetur blanditiis officiis. Eos doloribus officiis maiores et neque a. Ab sint vitae quas voluptatem consequatur velit libero dolore. Consequatur qui optio earum nostrum et.', 1, 0, '2020-05-10 02:17:26', '1970-05-01 03:39:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (77, 77, 77, 'Et doloremque et quibusdam iusto amet. Et quasi quasi neque qui qui et atque hic. Amet quo dignissimos totam dolore.', 0, 0, '2009-10-10 21:59:02', '1971-03-01 18:57:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (78, 78, 78, 'Atque cum consequuntur asperiores est sit. Praesentium non dolore id unde rerum rerum suscipit. Similique dicta velit dolores alias eos aliquam necessitatibus non.', 1, 1, '2004-02-22 11:47:16', '2009-03-01 01:18:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (79, 79, 79, 'Esse aut ut sit harum voluptatibus. Animi neque doloribus amet doloremque. Aut odit assumenda eum quia omnis eligendi.', 1, 0, '1990-09-17 20:16:14', '1988-01-19 01:32:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (80, 80, 80, 'Voluptas ea quia error nobis. Consectetur itaque odit eligendi itaque ducimus. Veritatis est delectus ratione eveniet aut aut. Et doloremque doloremque ut nulla.', 0, 1, '1976-07-05 03:44:50', '2019-09-09 18:05:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (81, 81, 81, 'Perferendis laboriosam temporibus distinctio dolorem asperiores expedita a. Illo magni praesentium doloribus. Voluptas laboriosam beatae quod qui.', 0, 0, '1998-09-08 16:24:17', '1974-03-13 12:38:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (82, 82, 82, 'Doloribus corporis aspernatur nobis error eum inventore eos. Facilis sed praesentium culpa quod esse inventore. Dolores necessitatibus consectetur perspiciatis. Explicabo quos esse quibusdam illo suscipit.', 0, 0, '2004-01-25 05:47:38', '1972-05-13 15:08:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (83, 83, 83, 'Similique magni voluptatum unde omnis dolor et natus quaerat. Commodi non incidunt sunt asperiores molestiae. Consequatur laborum modi aut consequatur a ipsa. Tempore nemo asperiores provident minima dolor officia.', 0, 1, '1976-03-26 16:28:37', '1984-04-28 09:21:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (84, 84, 84, 'Iure qui vitae repellendus reprehenderit itaque illo error. Est blanditiis distinctio odio dignissimos sed minima. Delectus ad iste dicta distinctio voluptatem et. Hic nemo laboriosam aspernatur consequuntur.', 1, 0, '2002-01-16 00:16:15', '2020-03-28 21:55:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (85, 85, 85, 'Dolorem delectus accusantium aut quidem molestiae. Tenetur eum vel rem amet molestiae quo quis. Expedita accusantium officiis dolorem consequatur esse quae. Et adipisci repudiandae quia et odio minima et.', 1, 0, '1982-12-22 00:54:24', '2007-08-25 17:45:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (86, 86, 86, 'Accusantium voluptatem est quibusdam esse ipsa aut explicabo soluta. Eum eos alias quis consequuntur eius dolore voluptatibus. Quae accusamus aut molestiae numquam laborum. Sit fuga non velit dignissimos.', 1, 0, '1977-05-11 08:36:35', '1992-07-27 00:47:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (87, 87, 87, 'Aut ab rerum aut mollitia reiciendis. Cumque qui et est rerum voluptas. Dolor optio in excepturi. Consectetur beatae amet rem velit quod minima. Iste cupiditate deserunt unde perspiciatis aut.', 0, 0, '1975-09-09 04:22:24', '2002-02-23 12:00:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (88, 88, 88, 'Et blanditiis occaecati et est quam dolorem. Suscipit molestias qui non nemo quod sed molestias.', 1, 1, '1970-05-11 00:35:26', '2011-11-25 16:03:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (89, 89, 89, 'Repellat delectus rem in enim aut iste sed. Officia maxime facilis et corrupti dicta.', 1, 0, '2011-07-06 09:46:53', '2003-11-02 18:18:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (90, 90, 90, 'Neque possimus doloribus et facilis enim necessitatibus ab. Nemo voluptas error itaque non quia animi consectetur. Quod fuga totam non.', 0, 0, '1979-05-18 17:01:01', '2019-07-05 20:43:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (91, 91, 91, 'Eum hic rerum vitae mollitia odio. Temporibus sed ipsa et officiis. Ea ut dolor nostrum cupiditate.', 0, 0, '1985-12-15 17:42:58', '1997-12-16 03:49:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (92, 92, 92, 'Eligendi enim dolores molestiae vitae maxime. Voluptatem eum commodi nihil aut laboriosam quo vero. Ut provident et corporis placeat ea quia. Ut nam neque sint voluptate rerum.', 0, 1, '1992-12-22 16:22:15', '1975-09-30 06:48:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (93, 93, 93, 'Porro et vitae id aliquid voluptatibus. Totam perspiciatis praesentium necessitatibus dolor. Sit qui atque quod doloribus. Earum ipsum a praesentium ipsum optio.', 1, 1, '2006-12-13 14:48:59', '2002-12-28 05:24:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (94, 94, 94, 'Quia ipsa beatae maxime sequi enim in. Sed laboriosam accusamus fuga eos qui quasi. Sit est accusamus nam sint at accusantium cupiditate. Eaque voluptatem delectus numquam.', 0, 0, '2018-06-15 19:14:07', '1970-11-10 23:00:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (95, 95, 95, 'Molestiae voluptas eum qui voluptas aut veniam non. Alias at laudantium fuga enim voluptatibus nihil. Quis ad laboriosam est provident.', 1, 0, '1972-09-25 20:23:54', '1983-11-16 22:48:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (96, 96, 96, 'Animi dolore distinctio ad. Mollitia explicabo alias quas quam nisi sit. Corrupti necessitatibus voluptatem id in esse fugit qui veniam.', 0, 0, '2013-02-15 23:21:39', '1977-01-30 17:32:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (97, 97, 97, 'Possimus soluta tempore aut omnis non nesciunt. Quod eaque enim veniam ipsam. Ab corrupti est voluptas sint voluptas necessitatibus quas.', 1, 1, '2007-01-24 06:15:27', '1988-05-15 23:19:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (98, 98, 98, 'Voluptates sunt optio sit omnis nihil similique nulla. Impedit est velit nostrum et asperiores. Soluta atque et possimus praesentium adipisci ea.', 1, 0, '1989-08-15 08:06:20', '1988-01-26 16:39:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (99, 99, 99, 'Voluptatem ex et neque officiis beatae tempore et. Possimus aperiam nulla nisi et quo. Qui et quibusdam expedita qui provident fuga voluptatum. Minima iusto tempore ut.', 1, 1, '1971-03-17 06:21:34', '1995-08-09 02:22:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (100, 100, 100, 'Et minima distinctio aut nam. Sed fuga consectetur possimus fuga provident enim. Voluptate facilis delectus sed exercitationem atque.', 1, 0, '1985-12-11 02:31:07', '1998-10-27 16:00:36');

DROP TABLE IF EXISTS `media`;
CREATE TABLE media (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
	filename VARCHAR(255) NOT NULL UNIQUE COMMENT "Путь к файлу",
    media_type VARCHAR(10) NOT NULL COMMENT "Тип файла",
    size INT NOT NULL COMMENT "Размер файла",
    created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки",
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Медиафайлы";

-- ALTER TABLE media MODIFY media_type ENUM('image', 'audio', 'video', 'gif', 'doc');
ALTER TABLE media DROP COLUMN media_type;
ALTER TABLE media ADD COLUMN media_type_id INT UNSIGNED NOT NULL COMMENT "Ссылка на тип файла" ;

ALTER TABLE media ADD CONSTRAINT media_media_type_id FOREIGN KEY (media_type_id) REFERENCES media_types(id);
ALTER TABLE media ADD COLUMN metadata JSON;

DESC media;

INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (1, 'sit', 285767, '1997-11-19 05:58:52', '2017-10-01 10:06:01', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (2, 'enim', 19504, '2017-11-07 03:37:00', '1995-07-13 21:50:21', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (3, 'eum', 64577, '1989-12-30 07:11:29', '2019-10-15 13:13:22', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (4, 'officiis', 17454333, '1991-07-14 05:41:16', '1996-04-26 06:49:24', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (5, 'fugiat', 216, '2005-03-09 14:14:52', '1982-06-16 20:08:36', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (6, 'explicabo', 9457, '2015-02-14 01:52:02', '1987-06-01 03:04:48', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (7, 'ut', 588122937, '1980-08-25 11:26:24', '2020-12-03 06:05:01', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (8, 'et', 540, '1976-01-04 22:58:51', '2015-04-12 16:26:20', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (9, 'in', 90, '1972-10-25 05:15:24', '1991-03-30 09:38:37', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (10, 'voluptas', 80, '1993-12-29 08:57:09', '1979-08-20 23:51:05', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (11, 'quia', 88705, '1989-05-13 15:43:10', '1991-09-24 08:41:04', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (12, 'esse', 402696148, '2015-01-08 21:25:50', '1995-07-03 10:45:19', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (13, 'quam', 7, '1996-12-22 08:37:56', '2016-03-31 03:55:18', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (14, 'qui', 6, '1976-10-17 07:12:21', '2000-04-20 07:35:06', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (15, 'est', 4, '1978-06-04 18:25:30', '1974-11-17 14:28:47', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (16, 'aut', 51399, '2004-09-06 05:59:48', '2018-08-23 02:06:43', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (17, 'blanditiis', 350, '1992-10-05 04:15:15', '1976-07-03 06:07:58', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (18, 'nobis', 476141039, '2002-07-27 21:06:22', '2018-11-04 16:18:02', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (19, 'beatae', 36472684, '1979-05-05 23:26:55', '1970-05-27 11:50:49', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (20, 'tempore', 50, '2013-12-13 01:02:25', '1975-07-01 20:36:39', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (21, 'repellendus', 2965, '2008-02-08 20:22:25', '1987-10-27 21:54:27', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (22, 'cumque', 21480322, '2007-04-29 19:27:21', '2012-07-20 16:54:05', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (23, 'non', 517, '1989-08-20 02:57:16', '2011-03-25 02:47:15', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (24, 'occaecati', 65147098, '2017-11-18 02:36:12', '1982-09-26 01:50:34', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (25, 'totam', 1, '1978-01-13 12:08:01', '1987-08-28 18:22:36', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (26, 'adipisci', 131096899, '1971-11-18 22:32:26', '2019-11-19 03:36:33', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (27, 'sapiente', 823897670, '1972-02-11 21:52:06', '1985-11-03 12:32:17', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (28, 'perferendis', 9527801, '1977-09-23 07:28:50', '2003-05-23 01:16:19', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (29, 'labore', 274862, '2000-02-23 01:15:42', '1985-08-08 22:29:41', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (30, 'quidem', 3, '1974-05-21 12:47:19', '1995-12-03 03:53:27', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (31, 'asperiores', 14, '1996-10-06 09:08:57', '2018-04-23 14:50:49', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (32, 'a', 40106, '1993-09-07 18:25:37', '2011-02-23 22:08:25', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (33, 'laboriosam', 2113016, '2016-09-10 10:49:25', '2018-09-19 11:26:43', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (34, 'amet', 27659, '2021-01-19 13:38:32', '1979-02-16 23:22:14', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (35, 'nemo', 29, '2020-01-08 14:32:00', '2015-10-07 21:02:26', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (36, 'omnis', 502875722, '1971-12-21 05:40:25', '1982-11-24 14:52:22', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (37, 'quibusdam', 89, '2012-11-10 18:53:27', '2020-03-30 16:53:33', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (38, 'itaque', 2465306, '2004-03-17 02:03:40', '1978-05-06 11:07:43', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (39, 'pariatur', 89, '2017-05-04 13:01:38', '1974-01-05 07:37:27', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (40, 'voluptatum', 762794, '1977-06-01 11:43:08', '2009-09-01 04:11:13', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (41, 'ea', 0, '1977-03-03 17:18:14', '2012-07-05 04:35:49', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (42, 'sed', 6447, '1973-05-03 20:00:24', '2014-03-02 03:45:13', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (43, 'assumenda', 78, '1979-10-07 06:31:31', '1973-05-27 15:29:24', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (44, 'voluptate', 23238, '1986-06-23 09:11:04', '1990-07-14 13:10:44', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (45, 'quos', 0, '1975-11-30 03:06:42', '2018-06-24 00:49:38', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (46, 'nihil', 255428, '2012-02-21 23:55:57', '2014-06-02 03:59:51', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (47, 'dolores', 195438, '2019-12-18 13:47:14', '1994-06-18 22:32:45', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (48, 'consequatur', 1509, '1993-06-16 05:09:02', '1988-04-10 08:50:59', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (49, 'unde', 5067234, '1995-06-08 21:20:33', '2000-04-22 02:54:32', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (50, 'exercitationem', 735, '1977-01-09 11:31:35', '1973-07-06 13:07:02', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (51, 'id', 56, '1997-04-16 16:08:42', '1988-10-29 15:10:50', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (52, 'tempora', 81892, '1983-09-07 03:28:31', '1991-10-10 22:59:34', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (53, 'alias', 110655, '1995-02-03 23:16:44', '2010-10-18 07:18:43', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (54, 'laudantium', 7370, '2005-01-01 08:18:19', '2005-09-03 22:15:11', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (55, 'impedit', 70305, '1993-10-07 20:01:21', '2009-10-09 10:53:04', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (56, 'deserunt', 89082856, '2003-03-17 05:04:43', '2017-01-04 09:55:40', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (57, 'illo', 341020318, '1973-07-23 10:15:03', '1995-11-28 03:15:03', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (58, 'ipsum', 0, '2010-03-14 20:18:33', '2013-11-26 20:40:45', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (59, 'commodi', 65, '2004-07-11 17:22:27', '2001-09-15 06:12:56', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (60, 'eius', 0, '2016-06-12 04:34:14', '2002-10-30 17:59:23', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (61, 'libero', 9286, '1995-05-12 11:02:48', '2021-08-03 08:06:59', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (62, 'soluta', 7452, '1999-11-13 00:17:07', '1993-01-20 11:25:40', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (63, 'expedita', 65122, '1986-04-08 18:15:14', '1983-11-19 21:04:42', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (64, 'rerum', 9635065, '1995-01-14 12:10:42', '2019-05-25 05:44:10', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (65, 'quis', 4763893, '1981-06-17 05:36:07', '1987-12-16 03:26:29', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (66, 'incidunt', 11083254, '1972-05-18 16:04:58', '2013-07-31 03:19:07', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (67, 'placeat', 1630487, '1996-06-10 19:29:29', '1994-09-05 01:08:16', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (68, 'facilis', 61960, '2003-04-03 23:12:50', '1991-06-11 01:35:23', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (69, 'velit', 824, '1970-05-13 09:11:27', '1985-05-01 03:49:45', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (70, 'culpa', 87427886, '2020-02-02 14:35:42', '1990-04-09 02:53:22', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (71, 'distinctio', 6256417, '1971-06-22 05:25:05', '2005-03-07 18:47:31', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (72, 'dolor', 50159, '2012-05-10 15:04:45', '2011-11-15 17:41:57', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (73, 'excepturi', 647233, '1983-10-23 12:47:13', '1980-12-18 17:16:35', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (74, 'architecto', 0, '1998-09-10 02:37:53', '2009-07-27 08:12:29', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (75, 'minus', 0, '2021-04-26 13:53:27', '2017-01-20 20:47:00', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (76, 'vero', 38692996, '2009-10-10 16:06:51', '1987-05-16 06:20:05', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (77, 'ipsam', 681, '1975-07-01 03:28:40', '1986-09-06 05:13:41', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (78, 'autem', 883063, '2011-04-26 04:57:39', '1980-08-10 11:59:15', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (79, 'voluptatem', 66575297, '2007-10-19 16:41:35', '1972-12-20 10:41:57', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (80, 'provident', 193, '1988-05-19 11:27:31', '1984-10-21 14:44:02', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (81, 'odio', 0, '1995-10-07 12:44:15', '2014-01-24 09:57:50', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (82, 'ducimus', 95135168, '2015-03-15 21:12:53', '2002-12-12 00:57:39', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (83, 'corporis', 6, '1978-11-04 10:10:38', '1989-02-19 20:19:37', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (84, 'quae', 463669893, '2000-03-08 06:10:02', '1988-05-01 15:44:36', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (85, 'consectetur', 97584, '2002-08-24 01:38:09', '1994-02-27 22:58:04', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (86, 'ab', 0, '1980-06-05 10:10:40', '1973-11-01 14:27:50', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (87, 'possimus', 650056, '1974-03-05 01:14:26', '1975-10-20 01:22:39', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (88, 'deleniti', 81, '1982-08-27 13:51:29', '1999-03-09 19:58:25', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (89, 'quasi', 6, '2007-11-17 08:01:53', '1978-11-26 01:27:57', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (90, 'ad', 36, '1991-12-17 07:31:40', '2011-06-03 19:10:14', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (91, 'inventore', 81, '1978-12-21 06:07:31', '1972-03-28 22:41:04', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (92, 'facere', 7909681, '1990-06-03 21:33:52', '1995-05-28 08:50:52', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (93, 'doloremque', 88862279, '1988-07-07 09:14:50', '2013-08-29 02:04:58', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (94, 'vel', 297, '2011-11-30 18:48:10', '1991-08-16 15:45:28', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (95, 'officia', 0, '1996-11-26 20:34:06', '1997-03-10 19:51:26', 5, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (96, 'nisi', 423, '1991-04-30 07:10:35', '1998-07-02 08:47:59', 1, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (97, 'voluptatibus', 37, '1980-10-25 12:55:34', '1995-09-19 04:28:48', 2, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (98, 'dicta', 0, '2014-01-07 11:09:46', '2016-09-13 20:38:41', 3, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (99, 'doloribus', 334, '1977-06-03 10:52:30', '2020-08-19 06:35:44', 4, NULL);
INSERT INTO `media` (`id`, `filename`, `size`, `created_at`, `updated_at`, `media_type_id`, `metadata`) VALUES (100, 'eligendi', 4, '1998-09-25 10:01:11', '1987-04-24 21:25:08', 5, NULL);

DROP TABLE IF EXISTS `media_types`;
CREATE TABLE media_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название типа",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Типы медиафайлов";

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'quia', '2018-11-07 17:13:58', '2010-05-05 13:28:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'sit', '2019-01-13 17:38:43', '1990-12-28 10:23:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'et', '1999-08-04 15:36:29', '1995-06-11 23:03:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'voluptas', '2009-09-20 15:28:38', '1997-05-08 21:42:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'est', '1997-06-01 23:21:23', '2002-04-27 20:08:03');

-- JSON - Java Script Object Notation
/*
student = {
	"name": "Ivan",
    "age": "23",
    "group_id": "123",
    "faculty": "SE"
    ...
}

/* image: resolution, extention, number_of_colors
   audio: duration, extention, artist, album
   video: resolution, duration, extention
*/

CREATE TABLE test_json (
	metadata JSON
);

-- CRUD (create, read, update, delete)
INSERT INTO test_json (metadata) VALUES (
	'{"extention":"avi", "duration":"02:14:00", "resolution":"1980x1580"}'
);

SELECT * FROM test_json;
SELECT metadata->"$.extention" FROM test_json;
SELECT metadata->>"$.extention" FROM test_json;

-- Таблица постов
DROP TABLE IF EXISTS `posts`;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", -- искусственный ключ
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  post_id INT UNSIGNED NOT  NULL COMMENT "Идентификатор поста",
  content VARCHAR(2000) NOT NULL COMMENT "Содержание поста", -- Для 3НФ надо вынести это в отдельную таблицу
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Пользователи"; 

ALTER TABLE posts ADD CONSTRAINT posts_user_id FOREIGN KEY (user_id) REFERENCES users(id); 

INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (1, 1, 8, 'Dicta sit eveniet enim ipsam qui exercitationem aut sunt. Eos repudiandae sed enim autem et. Porro nihil libero est molestiae odio.', '2020-05-21 21:49:24', '1971-01-27 07:34:33');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (2, 2, 2, 'Vitae eum omnis dolore repellat et. Dolor ea eos inventore in rem. Minus cum recusandae sit.', '2005-09-22 08:21:06', '1992-04-27 14:10:47');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (3, 3, 2, 'Ea velit id sit ut. Perspiciatis libero autem quibusdam. Facere accusamus architecto praesentium sapiente laudantium et id.', '1991-04-03 07:01:58', '2019-05-22 10:40:19');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (4, 4, 6, 'Quam qui voluptatem dolore at repudiandae consequatur. Et quia eos voluptatem repellat. Vel aut vel ullam itaque inventore. Vero exercitationem molestias et voluptatem aut nesciunt.', '1983-10-01 08:51:41', '1993-09-30 13:15:10');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (5, 5, 4, 'Porro voluptatem sit quidem sit hic veniam reiciendis. Aspernatur officia odio animi consequatur qui vel eum. Libero quae praesentium labore autem voluptatem quia molestias.', '2000-06-26 00:59:05', '2009-03-20 08:31:18');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (6, 6, 4, 'Voluptas reiciendis dolores qui. Sit quia eaque ipsam id cupiditate sed. Odit velit minima mollitia quibusdam nemo. Sunt quaerat quas et unde.', '2012-05-11 10:31:02', '1978-05-19 06:17:53');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (7, 7, 1, 'Perferendis et esse error quisquam. Ut consectetur autem est aut quis corporis. Ipsam eaque ad et est. Rerum perferendis voluptatem sequi repellendus veritatis.', '1985-06-01 11:24:10', '1983-11-04 13:23:02');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (8, 8, 2, 'Quam consectetur est omnis vel voluptatem. Repudiandae illum excepturi nisi. Atque nulla saepe sed sed culpa aut ipsum. Nemo voluptatem temporibus laboriosam nemo itaque dolore mollitia.', '2009-07-21 06:59:04', '1973-09-30 01:18:37');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (9, 9, 2, 'Sed sunt fugiat esse quam eius rem illum voluptas. Nesciunt reprehenderit repellat voluptas odio et ad quisquam. Dolorem molestiae dolor optio voluptatem itaque vel fugit illo.', '1993-01-11 13:27:22', '2015-10-04 04:26:22');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (10, 10, 7, 'Ut sunt ut praesentium rem et reiciendis. Ut voluptate pariatur aut eum corrupti autem. Alias quae eaque est autem unde sapiente fuga. Quo molestiae optio ex doloribus sit.', '1971-08-20 17:42:54', '1991-06-05 07:11:23');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (11, 11, 4, 'Tenetur est itaque aliquam dolore. Eos sapiente porro aliquid est. Est neque nihil mollitia dignissimos.', '2007-11-22 07:05:05', '1982-12-03 18:34:13');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (12, 12, 2, 'Autem delectus debitis vel iusto deleniti facilis. Ut dignissimos et suscipit sit ea. Consectetur hic rerum repellendus numquam ipsum pariatur et assumenda. Aut consequatur ab consequatur sed est in.', '1981-11-24 17:20:07', '1970-06-01 09:36:17');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (13, 13, 1, 'Qui harum quibusdam temporibus qui. Ex et mollitia et quos itaque. Ipsam qui cum fuga nihil architecto et omnis.', '2020-02-16 23:32:58', '1999-05-16 07:54:11');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (14, 14, 5, 'Numquam omnis recusandae voluptas id. Distinctio consequuntur nihil repudiandae quos modi repellat aut. Corrupti porro eos et aliquam. Quos nesciunt ducimus consequatur.', '2007-05-26 16:38:38', '1977-03-07 15:01:20');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (15, 15, 3, 'Et enim neque placeat. Exercitationem magnam corporis ab suscipit. Magni rerum et minima voluptatem. Rerum dignissimos nisi sit dignissimos quasi mollitia tenetur. Est beatae eveniet dolorum sed.', '1982-07-12 16:21:53', '1991-01-09 00:56:27');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (16, 16, 4, 'Aut quae molestias doloribus cupiditate eum. Et distinctio odio voluptatem numquam. Minima ipsum ut voluptas explicabo nostrum.', '1988-12-22 09:41:04', '1979-08-09 16:09:56');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (17, 17, 8, 'Nisi excepturi veritatis voluptatem aut distinctio in quam. Consequuntur a quos harum rerum accusantium nostrum et perspiciatis. Cumque officia aut nesciunt odit consectetur.', '2019-01-21 00:56:45', '2009-05-27 14:29:39');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (18, 18, 9, 'Debitis minima impedit fugit eaque quo provident consequatur. Iure optio quas est. Consectetur ut natus sit soluta dolorum optio. Iusto sit quia autem omnis quis dolorum et autem.', '2005-06-01 01:36:29', '1988-03-01 19:08:59');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (19, 19, 3, 'Sit unde vel ea et. Voluptatem iure consequuntur iure sint vitae temporibus ipsam. Explicabo adipisci consequuntur eos maxime omnis doloribus.', '1997-11-27 04:14:12', '1991-05-09 14:43:18');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (20, 20, 2, 'Alias ut non dolorum molestiae molestias optio sint. Ipsam quaerat beatae quod. Cupiditate autem sed est dolorum ducimus numquam. Numquam molestias officiis quis odio.', '2010-02-02 11:35:19', '2000-10-10 02:04:16');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (21, 21, 7, 'Dolores facilis molestiae quod at veritatis laudantium excepturi. Molestiae iusto aut totam velit consequuntur sed et. Architecto minima similique ad fuga dolores perspiciatis corrupti.', '1996-02-23 16:06:42', '2012-07-10 23:51:20');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (22, 22, 7, 'Ullam qui inventore eos sit ipsa quo. Ea enim nisi et adipisci et fuga corrupti. Aliquam quasi non atque.', '1999-12-20 18:17:18', '2020-08-20 22:27:49');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (23, 23, 7, 'Repellendus iusto illo excepturi eligendi voluptate corrupti nemo fugit. Perspiciatis maiores accusamus vitae debitis. Reiciendis velit perferendis amet a non.', '2018-06-09 12:48:37', '1982-01-29 22:11:31');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (24, 24, 4, 'Nam harum qui tempore possimus iste voluptates odit dolores. Iusto quia aliquam libero. Ut odit harum explicabo et aut aut. Cumque quibusdam alias est.', '1976-09-23 02:51:16', '1994-05-04 01:44:11');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (25, 25, 5, 'Magni harum et ut labore impedit tempora odio. Doloremque in in dolores beatae voluptas repellendus.', '2017-01-15 15:04:25', '2001-02-18 05:47:41');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (26, 26, 2, 'Ut omnis quia veritatis voluptatem in illum. Est quos numquam ducimus dolor. Veniam repellat qui quo alias repellat ipsa eaque voluptatem.', '1979-11-20 07:58:40', '2000-05-01 12:24:04');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (27, 27, 6, 'Aut sint consequatur ullam sapiente. Adipisci rem sed reprehenderit dolore cumque. Itaque nulla aliquid non reprehenderit. Eaque earum sit saepe fuga et quidem.', '1980-08-31 07:28:36', '1982-07-26 11:28:30');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (28, 28, 4, 'Aut unde vero qui impedit. Corrupti ut eum dolore consequatur blanditiis facilis neque. Nihil laborum praesentium enim et voluptas molestiae. Dignissimos quibusdam placeat cumque ut quis sed.', '1982-05-07 10:52:10', '2021-02-18 14:40:39');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (29, 29, 8, 'Et aut eius velit nihil inventore. Voluptas at ad sed. Ratione dolor fugit eaque harum sunt.', '1975-02-19 08:32:02', '2012-04-20 11:24:41');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (30, 30, 1, 'Nostrum qui sit totam saepe laboriosam. Et eaque rerum voluptatem vel. Asperiores nisi explicabo maiores dolorem iusto. Labore nam quod aliquid necessitatibus ut.', '1990-03-02 20:02:22', '1986-12-15 23:27:12');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (31, 31, 1, 'Quisquam dignissimos autem ut aut harum consequatur in exercitationem. Minus optio qui architecto. Quisquam autem cumque ut fugit est facilis. Deleniti non nemo nulla sit minus.', '1978-07-23 09:48:48', '1982-04-06 22:57:52');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (32, 32, 4, 'Facere beatae at nostrum. Tempore ducimus qui ut cupiditate qui numquam ratione. Fuga tempora et laboriosam.', '1970-09-25 11:44:09', '1989-09-27 01:59:38');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (33, 33, 6, 'Placeat perspiciatis molestiae rerum ducimus. Ducimus est excepturi est laborum eum unde. Quo aut voluptas ab qui impedit.', '2009-07-28 01:41:36', '2003-10-30 00:23:53');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (34, 34, 4, 'Et quia rem nostrum est vitae dicta dolores. Molestiae aperiam nihil vel placeat sunt repellat. Sapiente est illum esse. Provident eum similique explicabo assumenda officia.', '2008-03-28 06:54:08', '1977-04-20 07:11:26');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (35, 35, 3, 'Nihil deserunt molestiae vero fugit maxime inventore natus voluptatem. Reiciendis consequuntur aperiam corrupti laborum possimus nihil. Adipisci ut quo commodi nulla et dolorem.', '1971-07-10 11:07:50', '1998-12-31 10:51:48');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (36, 36, 8, 'Rerum voluptatem laboriosam consectetur ea ut. Eum dicta laudantium ut quibusdam. Est omnis in quo et fuga sit.', '2016-09-14 13:51:14', '1996-09-19 12:55:04');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (37, 37, 1, 'Aut autem rerum eligendi eveniet. Quia at quis eaque cumque maxime. Explicabo ut quidem veritatis repellendus eius quasi sit. Est animi saepe eos animi tenetur quidem.', '2017-03-09 09:34:31', '1995-06-25 22:10:30');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (38, 38, 6, 'Ratione dolorem quo deserunt sed. Dolor labore autem quod voluptatum pariatur debitis et quis.', '2011-03-30 12:43:31', '1983-07-24 19:05:30');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (39, 39, 4, 'Voluptas recusandae est et ullam eos. Temporibus cupiditate nemo consectetur eum aut et. Suscipit voluptas ut voluptatem et error temporibus delectus. Aut et modi modi eum cumque maxime pariatur.', '2018-08-21 01:41:39', '2015-03-29 10:50:58');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (40, 40, 1, 'Est magnam quod ut sunt minus. Quis officiis enim quis at reiciendis pariatur. Id nulla error sequi fuga suscipit. Eos ut quis impedit at.', '1998-08-25 10:58:24', '2008-04-15 12:23:27');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (41, 41, 5, 'Qui quia aut explicabo. Sint facere dolor debitis itaque corrupti. Ratione inventore molestiae iusto illo. Reprehenderit quas ratione similique commodi quas aut.', '1974-05-06 08:28:54', '1972-07-05 06:38:45');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (42, 42, 4, 'Eos debitis unde odit quasi et est natus. Ut incidunt eligendi aperiam repellat. Molestiae id dignissimos et accusantium beatae. Sit quia unde quos aut aut eaque quis.', '2009-11-24 15:18:37', '2021-01-30 05:55:48');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (43, 43, 4, 'Eum rem autem rerum perspiciatis a. Incidunt animi ipsam aut eligendi. Sint est magni quaerat sint sequi voluptatem voluptates. Sit non error fugiat ut necessitatibus velit ut.', '2003-04-14 08:24:32', '1971-08-23 14:10:08');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (44, 44, 1, 'Corrupti quasi quia saepe mollitia. Autem harum porro exercitationem vel. Similique iure voluptatem voluptas hic. Ab et magni omnis nulla et.', '2013-08-30 04:47:18', '1971-08-26 06:50:43');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (45, 45, 5, 'Praesentium dicta neque sed odio quia. Ex deleniti ex doloribus nostrum nobis. Sed facilis unde consequuntur est non quos ex.', '1992-08-14 06:47:13', '1997-01-12 07:02:12');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (46, 46, 2, 'Officiis asperiores porro quam qui nobis reiciendis explicabo. Architecto ut quia quam. Explicabo reiciendis illo ut et autem qui voluptas. Ea quis recusandae consequatur repellendus sed omnis.', '1978-09-01 13:59:07', '1983-03-27 23:41:15');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (47, 47, 9, 'Quod officia esse ut rem molestiae eos. Omnis quos in fugit accusamus sapiente ipsum. Numquam ut asperiores est et molestiae.', '1994-06-23 02:53:13', '2008-04-17 02:08:39');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (48, 48, 4, 'Et in est voluptatibus dolore et. Incidunt magni molestiae deleniti autem. Explicabo perferendis nam voluptate tempora laborum unde cum. Ipsum dolor totam tenetur voluptas modi.', '1983-01-16 12:00:17', '1981-09-24 09:53:25');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (49, 49, 7, 'Repellendus sit vel labore. Corporis consequatur tempora ipsa magni non. Fugiat placeat inventore ipsum beatae reprehenderit.', '1995-12-20 16:18:21', '1980-06-02 21:30:09');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (50, 50, 1, 'Odit omnis consequatur minus tempora non nesciunt. Velit eos tempore ut laboriosam aut ut optio. Unde fugiat illum nostrum sed quidem quaerat iure.', '1994-06-25 03:37:35', '1979-08-09 03:29:57');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (51, 51, 8, 'Accusamus corrupti omnis in necessitatibus assumenda. Provident distinctio est autem quam omnis maiores. Beatae quibusdam sed maiores quos veritatis quo. Dolor voluptates eaque officiis et.', '2011-04-17 18:13:48', '1977-01-20 22:33:24');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (52, 52, 2, 'Rerum vitae eos voluptatem molestias. Ab laboriosam ratione beatae nulla. Consequatur et dignissimos eum. Quia fugiat quas quia natus quis et sit.', '1976-03-20 15:38:56', '1990-11-07 22:29:11');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (53, 53, 6, 'Dolorum enim dolorem distinctio iure. Consectetur voluptates quis et et. Et amet beatae aut dolores reiciendis aut qui illo.', '1973-07-17 06:22:54', '1981-03-28 16:21:44');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (54, 54, 6, 'Alias dolores quia rerum reprehenderit est. Omnis aut quibusdam labore eos quo.', '1998-10-17 22:42:23', '2014-05-05 08:53:42');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (55, 55, 8, 'Debitis dolor eligendi totam et. Nihil facilis est magnam sit itaque accusantium dolorum et. Hic quaerat aliquid facilis et in.', '2019-11-08 11:27:11', '2004-11-09 00:30:29');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (56, 56, 8, 'Alias autem qui explicabo iusto quo. Omnis harum saepe incidunt ut rerum omnis. Error sequi quos vel non maxime error. Eum esse amet nihil quis et.', '2002-07-17 06:37:32', '1996-09-06 01:59:34');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (57, 57, 1, 'Officiis quia ab minus aliquid qui. Et consequatur totam deleniti qui laboriosam. Veniam vel fugit corrupti officia eos ex et.', '1973-09-25 03:58:32', '2009-05-25 15:38:33');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (58, 58, 1, 'Facilis nihil nesciunt quo aut mollitia ratione deleniti. Omnis qui iste sequi eos ipsa officiis. Et odio voluptatem omnis quos ut distinctio.', '1992-12-09 19:41:28', '1981-12-22 17:04:11');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (59, 59, 9, 'Cum et laborum aperiam nobis ad tempora. Sit officia distinctio deleniti exercitationem vel nulla sunt. Ducimus aliquam iure nostrum.', '2014-04-09 10:40:00', '2013-04-04 10:11:54');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (60, 60, 9, 'Accusantium pariatur eveniet atque. Consequatur aliquam dicta omnis facere repellat qui numquam. Quisquam consequatur numquam quia at officiis accusamus. Dolores sunt et veritatis pariatur commodi.', '1981-06-23 20:31:50', '1974-01-12 23:03:55');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (61, 61, 6, 'Libero et et voluptatem exercitationem eaque. Delectus non est ratione expedita laborum reprehenderit. Quidem voluptas nulla sint est porro. Accusamus consequuntur et possimus impedit.', '2000-01-20 15:25:58', '1983-12-08 06:53:18');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (62, 62, 2, 'Soluta tenetur qui ipsum minima. Sit quae quo delectus suscipit similique beatae qui. Et veritatis et sint eos nemo repudiandae voluptas possimus. Unde voluptatem facilis deserunt molestias.', '2014-07-28 00:30:22', '1976-06-02 14:38:20');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (63, 63, 2, 'Aut non recusandae sed in provident rerum ullam. Quia dolorum ex et id. Corporis et commodi neque nihil alias minus modi.', '2014-12-27 13:14:25', '2013-07-01 03:30:24');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (64, 64, 2, 'Fuga non qui corrupti aut. Qui omnis fugiat sunt. Qui est ratione assumenda iusto qui consequatur iste. Consequatur vel neque ratione reprehenderit.', '2007-04-26 23:18:58', '1989-09-17 10:57:51');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (65, 65, 8, 'Corporis qui quae quis facere magni voluptatem quo qui. In eveniet tempore sint et non eaque. Tenetur magnam hic velit sint iste totam. Officiis in atque repellat fuga aut in.', '1986-03-24 11:21:29', '2014-01-26 16:51:26');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (66, 66, 5, 'Animi quis nemo aperiam non. Error repellat aut recusandae placeat sit eos. Provident nostrum non sed ullam quo facere dolores.', '1984-07-03 01:18:53', '2005-04-20 04:54:46');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (67, 67, 8, 'Ipsum sit quis maiores vel quibusdam. Et voluptatem quibusdam natus veritatis. Nihil a minus aut consequatur ipsum laudantium.', '2012-09-14 08:05:40', '2003-11-13 06:56:14');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (68, 68, 3, 'Et nesciunt est reiciendis molestiae. Sed nihil assumenda vero sed cum. Ut fugiat aliquid ipsa aut error. Est ullam laboriosam vitae sunt.', '2002-05-26 16:35:39', '2008-12-16 16:32:12');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (69, 69, 9, 'Numquam exercitationem error numquam nihil dolor. Temporibus voluptate mollitia ab aut alias. Assumenda et possimus dolorem et quia sit vel.', '2009-11-11 11:27:09', '2019-07-31 18:27:31');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (70, 70, 6, 'Sint explicabo rerum voluptas saepe. Minus quisquam dolorem impedit vel sit aliquid aut. Dignissimos voluptas est minima velit aspernatur.', '1985-11-10 20:23:28', '1977-09-01 14:35:05');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (71, 71, 3, 'Mollitia aut minima accusantium delectus suscipit. Accusamus totam placeat perspiciatis temporibus vitae aut. Quo et porro iusto ipsum.', '2015-06-28 23:14:44', '2007-03-29 22:41:52');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (72, 72, 5, 'Velit et velit a ducimus ad totam. Facere voluptatem tempora pariatur qui iste et. Id sint sint iste quaerat neque aperiam vel.', '2019-09-28 08:42:10', '1976-01-09 01:43:06');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (73, 73, 9, 'Quis maxime ut sed. Vel illo nam distinctio et ut. Dolorum et eius iste vero sapiente commodi. Eveniet sed dolores aut rem.', '1984-09-13 13:22:31', '2004-03-21 00:29:49');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (74, 74, 8, 'Porro recusandae reiciendis doloremque. At rem atque numquam nihil nihil repellendus qui. Quo dolores aut consequatur ea officiis velit.', '1995-05-16 18:56:06', '1979-10-28 16:21:58');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (75, 75, 6, 'Odit nam ea quas. Aspernatur quia occaecati aut qui fugiat maiores. Est et quibusdam ut odit qui ipsum commodi. Repudiandae occaecati tempora atque ab hic nam omnis. Itaque soluta et quis tenetur.', '1980-09-13 03:11:40', '1987-04-13 16:40:33');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (76, 76, 3, 'Harum sed dolor vero architecto id. Sint sed dignissimos non commodi eum. Labore vitae earum odit. Expedita nam odio rerum.', '1991-06-05 06:51:08', '1996-12-10 14:48:00');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (77, 77, 2, 'Ratione ut magni quia alias amet qui. Sit neque officia nam vel reprehenderit aut minima. Repudiandae assumenda molestiae quibusdam.', '2021-06-23 01:12:52', '2015-12-18 05:58:48');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (78, 78, 2, 'Ipsum qui eos qui et rerum similique accusantium. Est quis veritatis error neque exercitationem. Voluptates consequatur quis accusantium quia dolores earum. Ullam consequatur minus esse ab.', '1974-03-30 17:50:40', '1971-11-25 21:02:44');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (79, 79, 5, 'Ut commodi hic nobis sed est tenetur. Est ipsum voluptatem natus. Recusandae sed in aut dolor sed.', '1981-08-25 21:19:49', '2004-06-18 23:31:35');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (80, 80, 5, 'Et est voluptates in aperiam quia autem laborum libero. Tempore ea veniam voluptas quia reiciendis voluptas odit et. Dignissimos vel dolorem esse veniam qui quia autem.', '1976-05-16 13:57:01', '1989-02-06 07:40:25');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (81, 81, 6, 'Est magni illo necessitatibus. Sint et impedit officiis maiores commodi soluta. Culpa ut repellat ut totam illo minus. Deserunt quas veritatis id doloribus impedit non accusamus dolorum.', '2010-11-10 15:48:35', '1994-10-20 18:00:49');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (82, 82, 7, 'Error est facere maxime id modi repellendus repudiandae. Odit consectetur ipsa vel qui. Suscipit quia ex nam et et. Omnis culpa ipsa earum autem.', '2016-05-29 01:01:29', '2012-10-07 00:34:56');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (83, 83, 1, 'Repellat dolor occaecati est beatae sit. Aut dolor facilis sapiente atque enim quia voluptatem. Aut voluptas est minima. Voluptate sit consequatur laudantium ut hic sed voluptatem.', '2014-04-23 10:43:35', '2017-10-23 01:40:40');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (84, 84, 1, 'Et autem fugiat est accusantium. Dolore et consequatur tempore in. Laboriosam beatae nesciunt et vero. Qui vel dolorem minima id sint.', '1995-05-29 13:13:13', '2002-10-26 14:41:56');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (85, 85, 3, 'Maiores sapiente illum rerum deleniti eaque. Sunt rerum quaerat corporis distinctio autem. Molestiae impedit est et error. Minima eos eligendi libero unde.', '1985-12-16 06:30:49', '1975-03-12 22:21:38');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (86, 86, 7, 'Quisquam recusandae praesentium eligendi. Maiores nam illo quo. Dolorem vero voluptatum dicta beatae dolor aut.', '1982-08-05 18:16:42', '1990-05-28 17:19:09');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (87, 87, 4, 'Minus non beatae ut aut aut harum modi. Quo voluptatem culpa voluptas voluptas nesciunt velit perspiciatis. Inventore ea impedit omnis aut. Eligendi natus natus magnam dolorem ipsam.', '2021-07-14 03:38:16', '1978-12-28 09:25:51');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (88, 88, 3, 'Ipsa enim autem nostrum et dolores dolorem nam. Ut beatae officia tempora non qui. Rerum quam natus a itaque aliquid debitis. Id sed commodi aut ipsum maiores nam. Labore autem sit velit in facilis.', '2013-03-15 17:52:36', '1972-07-10 00:16:00');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (89, 89, 8, 'Nemo quos ipsum quo aspernatur tempora. A enim eos hic cum. Voluptas praesentium iste deserunt autem. Occaecati ea sunt non magnam.', '1976-06-12 16:12:41', '1997-02-12 05:36:30');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (90, 90, 9, 'Qui est aspernatur provident et. Porro quas praesentium distinctio deserunt quaerat rem odit. Dolorem nisi rem odit aut suscipit qui qui.', '1981-07-29 10:58:40', '1983-07-01 00:47:08');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (91, 91, 7, 'Culpa voluptatibus nostrum sed voluptas quisquam ut eaque. Earum est omnis quos ipsum repudiandae ullam nulla. In odit necessitatibus cum est.', '2003-10-20 11:56:35', '1986-07-19 05:00:03');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (92, 92, 3, 'Provident dolorum dolores reiciendis sequi autem qui. Nihil eos quia magni nemo ut sit sit.', '2008-05-30 19:20:40', '1975-03-04 23:31:25');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (93, 93, 4, 'Iste maxime atque ea voluptas similique aut qui. Eos nisi sequi accusamus sed qui. Occaecati omnis et deserunt dolorem accusantium eveniet corrupti quia. Aliquid et non quos officia quaerat.', '1981-02-28 04:02:33', '2017-02-22 15:59:58');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (94, 94, 6, 'Eveniet reprehenderit culpa et deserunt sit molestiae impedit. Aspernatur enim et et facilis fuga voluptates similique. Harum quo et voluptatem itaque totam aut. Soluta veniam rerum eaque et libero.', '2007-04-28 01:25:23', '1990-12-05 08:38:43');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (95, 95, 5, 'Excepturi error cumque officia optio aut qui in. Qui rerum optio necessitatibus. Labore excepturi eum sint ut. Est quidem ea veritatis qui molestias. Quisquam dolor aut aspernatur in dolores in sed.', '1980-04-06 23:46:30', '2011-05-09 19:02:23');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (96, 96, 4, 'Et hic nemo ex alias occaecati voluptatem in inventore. Saepe voluptatem architecto maxime quam distinctio. Earum possimus vel facilis ducimus et. Qui id aliquam quibusdam facere.', '1980-12-16 10:30:38', '2008-04-22 09:09:18');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (97, 97, 4, 'Quis autem quis eius qui. Ut velit ut laudantium eum doloremque nam. Qui maiores in eligendi fugiat et et. Iure ut unde velit ipsum deserunt. Qui esse consequatur ex quas officiis aut.', '1976-04-03 11:41:12', '1993-04-18 03:12:48');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (98, 98, 8, 'Et vitae voluptatem unde asperiores sed quia. Sunt et illum excepturi aut nam recusandae. Sequi nisi maiores commodi ipsa error molestiae doloremque.', '2004-09-26 19:20:21', '2016-03-19 17:50:59');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (99, 99, 2, 'Officia vitae dolor velit voluptatem. Provident et et similique consequuntur quis dolores sunt. Et eius dolor nihil veniam vitae ut qui dignissimos.', '1996-01-24 01:52:19', '1970-12-29 12:32:10');
INSERT INTO `posts` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES (100, 100, 3, 'Est necessitatibus vel dolor eum. Consequuntur enim velit molestiae illo. Eum ad corporis quibusdam quo dignissimos qui labore. Vel consequuntur cum totam.', '1995-02-12 15:11:50', '1996-02-19 12:22:16');
-- Добавить, наверно, стоит таблицу-счетчик количества лайков
DESC posts;

-- Таблица лайков
DROP TABLE IF EXISTS `likes`;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", -- искусственный ключ
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  action_type ENUM('A', 'R') NOT NULL COMMENT "Тип действия: A - ADD, R - REMOVE",
  category_type ENUM('user', 'post', 'media') NOT NULL COMMENT "Тип категории",
  category_id INT UNSIGNED NOT NULL COMMENT "Идентификатор в категории",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Пользователи";  

DESC likes;

ALTER TABLE likes ADD CONSTRAINT likes_user_id FOREIGN KEY (user_id) REFERENCES users(id); 
ALTER TABLE likes ADD CONSTRAINT likes_media_id FOREIGN KEY (category_id) REFERENCES media(id);
ALTER TABLE likes ADD CONSTRAINT likes_post_id FOREIGN KEY (category_id) REFERENCES posts(id);
ALTER TABLE likes ADD CONSTRAINT likes_users_id FOREIGN KEY (category_id) REFERENCES users(id); 

INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (1, 1, 'R', 'media', 46, '2005-11-20 05:55:37', '2008-09-13 05:47:35');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (2, 2, 'R', 'user', 94, '1994-01-06 07:52:10', '1985-10-23 02:31:11');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (3, 3, 'A', 'media', 77, '1993-06-24 12:18:10', '1973-10-27 22:19:08');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (4, 4, 'A', 'post', 12, '1978-02-06 22:45:12', '2001-02-22 16:46:39');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (5, 5, 'R', 'post', 31, '1992-02-17 19:07:27', '2016-10-16 14:11:27');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (6, 6, 'R', 'user', 9, '1975-04-23 17:12:33', '2018-01-04 02:09:07');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (7, 7, 'R', 'media', 26, '1989-12-14 20:47:29', '2014-05-03 14:15:57');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (8, 8, 'A', 'media', 66, '2021-06-13 03:52:39', '1980-12-31 06:47:19');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (9, 9, 'A', 'media', 91, '2020-12-10 20:39:01', '1988-01-03 16:16:05');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (10, 10, 'A', 'user', 4, '1998-03-25 17:28:10', '1978-01-15 23:37:28');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (11, 11, 'A', 'user', 66, '2015-09-01 16:04:54', '1986-02-24 11:48:51');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (12, 12, 'A', 'post', 48, '2021-03-09 20:14:58', '2018-03-18 19:04:40');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (13, 13, 'R', 'post', 7, '1998-04-12 09:41:21', '1999-12-08 05:37:28');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (14, 14, 'A', 'user', 38, '1994-05-16 07:28:09', '2006-05-28 19:09:51');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (15, 15, 'A', 'post', 36, '2012-06-21 03:03:00', '1999-08-27 09:56:58');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (16, 16, 'R', 'media', 49, '1975-01-18 18:19:16', '1998-08-24 22:04:58');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (17, 17, 'A', 'user', 11, '2000-06-14 06:29:23', '2020-09-16 08:06:15');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (18, 18, 'A', 'post', 71, '2009-06-02 22:04:25', '1995-08-16 09:38:27');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (19, 19, 'A', 'user', 57, '2014-05-23 07:22:39', '2016-01-13 08:22:20');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (20, 20, 'A', 'post', 12, '1987-03-11 23:56:08', '2019-03-07 00:35:38');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (21, 21, 'A', 'post', 10, '2006-01-13 03:24:17', '1991-02-10 17:10:32');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (22, 22, 'R', 'media', 53, '1985-03-19 11:07:49', '1979-06-07 06:12:33');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (23, 23, 'A', 'media', 70, '2003-04-13 09:50:44', '2016-10-16 00:28:59');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (24, 24, 'R', 'user', 15, '1995-05-04 23:37:30', '1996-11-03 15:49:03');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (25, 25, 'A', 'media', 82, '1977-06-13 09:00:36', '2020-01-23 08:16:22');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (26, 26, 'R', 'post', 76, '2008-02-05 10:59:04', '1971-12-08 07:45:38');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (27, 27, 'R', 'post', 1, '1976-11-18 23:08:30', '2003-04-03 23:03:03');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (28, 28, 'A', 'media', 61, '1990-10-10 16:12:02', '2012-01-21 04:46:12');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (29, 29, 'A', 'user', 68, '1977-08-22 08:38:21', '1994-02-05 21:48:45');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (30, 30, 'R', 'user', 11, '2002-01-12 14:07:27', '1994-09-01 22:53:57');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (31, 31, 'R', 'post', 23, '1997-01-05 07:01:30', '1980-06-09 07:39:21');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (32, 32, 'R', 'media', 48, '2002-10-07 00:17:06', '1995-06-10 15:19:56');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (33, 33, 'A', 'user', 77, '2015-08-31 15:46:17', '1979-04-18 00:40:10');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (34, 34, 'A', 'media', 21, '1972-04-03 12:53:26', '2013-09-11 16:17:45');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (35, 35, 'A', 'post', 2, '1996-06-19 01:44:12', '2019-12-16 03:39:28');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (36, 36, 'R', 'media', 89, '1989-04-26 15:44:59', '1987-04-05 02:18:04');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (37, 37, 'A', 'media', 72, '1976-09-18 03:13:09', '1972-08-07 16:01:54');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (38, 38, 'A', 'post', 42, '1990-09-13 11:54:40', '1988-07-11 19:18:19');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (39, 39, 'R', 'post', 73, '1985-08-11 00:54:26', '1972-01-24 20:12:12');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (40, 40, 'R', 'user', 96, '1983-01-16 23:09:14', '2009-04-22 03:20:29');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (41, 41, 'A', 'user', 64, '2021-03-09 12:08:00', '2000-11-15 16:03:23');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (42, 42, 'R', 'post', 79, '1976-09-25 20:09:13', '1989-09-07 11:24:01');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (43, 43, 'R', 'media', 84, '1983-01-31 10:17:03', '1973-11-08 05:09:09');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (44, 44, 'R', 'user', 84, '2010-05-21 18:59:32', '2002-06-15 22:46:21');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (45, 45, 'R', 'post', 19, '2021-09-12 00:16:01', '1997-05-14 12:11:56');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (46, 46, 'A', 'user', 1, '2011-12-22 05:15:35', '1989-08-13 17:08:36');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (47, 47, 'R', 'user', 46, '1998-01-27 16:39:02', '1987-02-03 10:17:45');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (48, 48, 'R', 'media', 35, '1988-05-22 09:26:45', '2001-08-26 23:57:59');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (49, 49, 'A', 'post', 19, '1991-01-11 10:25:54', '1999-10-24 03:36:50');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (50, 50, 'R', 'user', 47, '2019-01-30 01:11:45', '1993-05-11 11:25:48');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (51, 51, 'A', 'post', 32, '2001-12-15 15:06:50', '2014-03-19 03:45:52');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (52, 52, 'R', 'user', 27, '2003-02-19 21:43:39', '2019-01-11 08:28:40');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (53, 53, 'R', 'post', 95, '2021-03-15 02:04:46', '2003-08-06 10:04:47');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (54, 54, 'A', 'media', 38, '1989-12-14 16:42:36', '1993-06-28 21:43:25');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (55, 55, 'A', 'media', 89, '1998-12-24 18:57:03', '1987-03-19 04:28:46');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (56, 56, 'A', 'media', 97, '2015-11-29 00:32:40', '1986-06-11 16:38:06');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (57, 57, 'A', 'media', 76, '2009-11-21 08:04:12', '1990-03-24 08:44:35');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (58, 58, 'A', 'user', 27, '1990-01-19 09:00:35', '2002-10-04 01:12:07');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (59, 59, 'A', 'user', 19, '2009-07-24 01:23:07', '1983-06-30 13:44:19');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (60, 60, 'A', 'user', 86, '1996-09-12 13:31:10', '1989-04-08 11:08:32');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (61, 61, 'R', 'user', 4, '1981-09-16 14:36:44', '1973-11-28 02:34:46');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (62, 62, 'R', 'media', 63, '2019-10-02 16:38:23', '1995-03-23 08:45:11');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (63, 63, 'A', 'media', 89, '2006-11-03 00:57:48', '2017-09-08 00:35:05');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (64, 64, 'R', 'user', 42, '2004-01-26 19:20:08', '1991-05-07 00:59:52');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (65, 65, 'R', 'media', 15, '1983-05-29 05:38:37', '2020-02-19 16:31:16');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (66, 66, 'A', 'media', 92, '1986-12-22 09:05:38', '1994-08-28 07:56:42');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (67, 67, 'A', 'media', 41, '1989-03-09 21:28:48', '2003-01-14 08:05:37');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (68, 68, 'R', 'media', 8, '1977-11-30 02:17:58', '2001-11-14 09:06:34');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (69, 69, 'R', 'post', 22, '2011-03-04 21:57:39', '1981-10-11 14:07:02');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (70, 70, 'R', 'media', 82, '2011-01-02 13:55:19', '2012-09-16 08:46:24');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (71, 71, 'R', 'media', 70, '1976-08-17 12:11:09', '1983-02-24 03:39:59');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (72, 72, 'R', 'post', 51, '1999-11-08 16:42:48', '2000-10-10 22:11:11');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (73, 73, 'R', 'media', 30, '1984-12-18 22:43:53', '1991-10-13 06:09:38');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (74, 74, 'A', 'user', 40, '1988-02-14 01:36:09', '2005-03-14 04:58:14');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (75, 75, 'R', 'media', 93, '1998-01-08 11:28:41', '2009-06-16 08:23:41');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (76, 76, 'A', 'post', 86, '2001-06-07 08:23:40', '2003-03-31 23:54:28');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (77, 77, 'A', 'post', 43, '1977-05-31 19:58:23', '2002-06-21 13:21:06');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (78, 78, 'A', 'user', 99, '2008-12-03 13:55:31', '1987-05-30 23:26:30');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (79, 79, 'A', 'post', 86, '1991-11-09 01:58:08', '2005-03-24 12:18:06');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (80, 80, 'A', 'media', 20, '2007-09-10 00:08:09', '1999-05-31 08:26:41');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (81, 81, 'A', 'user', 82, '2004-01-20 03:23:40', '2007-08-08 10:25:40');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (82, 82, 'A', 'post', 91, '2011-09-10 22:42:26', '2020-08-07 18:32:16');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (83, 83, 'R', 'media', 87, '2008-10-15 23:30:45', '2000-07-01 14:38:59');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (84, 84, 'R', 'post', 38, '1987-09-01 12:09:55', '2005-12-27 11:04:06');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (85, 85, 'R', 'user', 13, '2021-04-30 03:24:02', '2006-05-08 03:12:19');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (86, 86, 'A', 'user', 19, '2004-02-04 07:14:15', '1992-03-04 03:52:12');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (87, 87, 'A', 'post', 61, '2014-02-27 05:17:13', '1987-12-27 19:38:29');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (88, 88, 'R', 'user', 18, '1990-08-13 23:16:20', '2004-02-25 08:37:49');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (89, 89, 'A', 'user', 78, '2011-10-22 10:56:29', '1990-09-18 09:11:10');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (90, 90, 'A', 'media', 27, '1981-04-20 02:58:32', '1976-07-24 20:37:59');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (91, 91, 'R', 'media', 98, '1981-12-15 09:08:41', '1982-11-25 09:06:01');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (92, 92, 'A', 'media', 30, '2019-02-12 14:24:21', '2010-12-17 16:40:10');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (93, 93, 'R', 'user', 18, '1992-12-20 11:21:18', '2010-12-24 14:06:13');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (94, 94, 'A', 'post', 93, '1998-11-22 03:57:09', '1993-01-06 06:29:20');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (95, 95, 'A', 'post', 98, '2014-06-15 17:56:14', '2000-11-14 05:05:00');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (96, 96, 'R', 'media', 75, '2004-09-29 04:25:41', '2007-01-30 19:18:12');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (97, 97, 'R', 'user', 95, '2010-09-04 06:30:38', '2012-12-14 15:40:49');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (98, 98, 'A', 'post', 41, '1989-03-05 15:39:08', '1975-10-15 22:59:11');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (99, 99, 'A', 'post', 60, '1999-08-22 06:12:24', '1983-05-27 00:45:16');
INSERT INTO `likes` (`id`, `user_id`, `action_type`, `category_type`, `category_id`, `created_at`, `updated_at`) VALUES (100, 100, 'R', 'post', 30, '1979-06-02 07:45:15', '2013-09-07 09:47:04');
