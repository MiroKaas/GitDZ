-- 1.
-- Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается время и дата создания записи, 
-- название таблицы, идентификатор первичного ключа и содержимое поля name.
USE shop;

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	created_dt DATETIME NOT NULL DEFAULT current_timestamp(),
	table_name VARCHAR(255) NOT NULL ,
	pk_id BIGINT NOT NULL,
	name_content VARCHAR(255)
) COMMENT = 'Таблица логов вставки новых значений для users, catalogs и products' ENGINE=Archive;

DELIMITER //
DROP TRIGGER IF EXISTS users_insert_log//
CREATE TRIGGER users_insert_log AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_name, pk_id, name_content) VALUES (
		'users', NEW.id,  NEW.name
	);
END//

DELIMITER ;

DELIMITER //
DROP TRIGGER IF EXISTS catalogs_insert_log//
CREATE TRIGGER catalogs_insert_log AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_name, pk_id, name_content) VALUES (
		'catalogs', NEW.id,  NEW.name
	);
END//

DELIMITER ;

DELIMITER //
DROP TRIGGER IF EXISTS products_insert_log//
CREATE TRIGGER products_insert_log AFTER INSERT ON products
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_name, pk_id, name_content) VALUES (
		'products', NEW.id,  NEW.name
	);
END//

DELIMITER ;