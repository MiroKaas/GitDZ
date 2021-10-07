-- Практическое задание по теме “Транзакции, переменные, представления”
-- 1.
ALTER TABLE 
	sample.users
ADD COLUMN birthday_at DATETIME,
ADD COLUMN created_at DATETIME,
ADD COLUMN updated_at DATETIME;

ALTER TABLE sample.users MODIFY id SERIAL PRIMARY KEY;

START TRANSACTION;
INSERT
	INTO
	sample.users (id,
	name,
	birthday_at,
	created_at,
	updated_at) 
	SELECT
	id,
	name,
	birthday_at,
	created_at,
	updated_at
FROM
	shop.users
WHERE
	id = 1;

DELETE
FROM
	shop.users
WHERE
	id = 1;
COMMIT;
SELECT * from sample.users;
SELECT * from shop.users;

-- 2.
CREATE VIEW shop.product_and_catalog_name AS
SELECT
	p.name AS product_name,
	c.name AS catalog_name
FROM
	shop.products AS p
LEFT JOIN shop.catalogs AS c
ON
	p.catalog_id = c.id;
SELECT
	*
FROM
	shop.product_and_catalog_name;
	
-- 3.
CREATE TABLE IF NOT EXISTS date_table (created_at DATE);
INSERT
	INTO
	date_table (created_at)
VALUES 
("2018-08-01"),
("2018-08-04"),
("2018-08-16"),
("2018-08-17");
 
CREATE TABLE IF NOT EXISTS august_dates (created_at DATE);
INSERT
	INTO
	august_dates (created_at) WITH RECURSIVE t AS (
	SELECT
		'2018-08-01' AS dt
UNION
	SELECT
		DATE_ADD(t.dt, INTERVAL 1 DAY)
	FROM
		t
	WHERE
		DATE_ADD(t.dt, INTERVAL 1 DAY) <= '2018-08-31'
)
SELECT 
	dt
FROM
	t;


SELECT 
	created_at,
	CASE
		WHEN created_at IN (
		SELECT
			*
		FROM
			date_table) THEN 1
		ELSE 0
	END
	AS flg
FROM
	august_dates;

-- 4.


CREATE OR REPLACE
VIEW last_dates AS
SELECT
	created_at
FROM
	august_dates
ORDER BY
	created_at DESC
LIMIT 5;

SELECT
	*
FROM
	last_dates;

-- Хранимые процедуры и функции, триггеры
-- 1.
DROP FUNCTION IF EXISTS hello;

DELIMITER //

CREATE FUNCTION hello()
	RETURNS VARCHAR(15)
	
	BEGIN
		DECLARE time_now TIME;
	
		SET time_now = CURRENT_TIME();
	
		IF time_now BETWEEN "06:00:01" AND "12:00:00" THEN 
			RETURN "Доброе утро";
		ELSEIF time_now BETWEEN "12:00:01" AND "18:00:00" THEN 
			RETURN "Добрый день";
		ELSEIF time_now BETWEEN "18:00:01" AND "00:00:00" THEN 
			RETURN "Добрый вечер";
		ELSEIF time_now BETWEEN "00:00:01" AND "06:00:00" THEN 
			RETURN "Доброй ночи";
		END IF;
	END //
	
DELIMITER ;
	
SELECT hello();

-- 2.
SELECT * from products;

DROP TRIGGER IF EXISTS update_without_null;

DELIMITER //

CREATE TRIGGER update_without_null BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
	IF NEW.name IS NULL OR NEW.description IS NULL THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "One value must be not NULL";
	END IF;
END //

DELIMITER ;

DROP TRIGGER IF EXISTS insert_without_null;

DELIMITER //

CREATE TRIGGER insert_without_null BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF NEW.name IS NULL OR NEW.description IS NULL THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "One value must be not NULL";
	END IF;
END //

DELIMITER ;

-- 3.
DROP FUNCTION IF EXISTS fibonacci;

CREATE FUNCTION fibonacci(user_value INT)
	RETURNS INT DETERMINISTIC
	
	BEGIN
		DECLARE counter INT DEFAULT 1;
		
		SET @x = 1;
		SET @y = 0;
		SET @z = 0;
		
			WHILE counter <= user_value DO
				SET @z = @x + @y;
				SET @x = @y;
				SET @y = @z;
				SET counter = counter + 1;
			END WHILE;
		
		RETURN @z;	
	END;

SELECT fibonacci(10);

-- Администрирование MySQL
-- 1. 
CREATE USER 'shop_read'@'localhost' IDENTIFIED BY 'user_password';
CREATE USER 'shop'@'localhost' IDENTIFIED BY 'user_password'; 

GRANT SELECT shop.* TO 'shop_read'@'localhost';
GRANT ALL ON shop.* TO 'shop'@'localhost'

-- 2.
-- Пусть имеется таблица accounts содержащая три столбца id, name, password, содержащие первичный ключ, имя пользователя и его пароль. 
-- Создайте представление username таблицы accounts, предоставляющий доступ к столбца id и name. 
-- Создайте пользователя user_read, который бы не имел доступа к таблице accounts, однако, мог бы извлекать записи из представления username.

CREATE OR REPLACE VIEW username AS
	SELECT 
		id, name
	FROM
		test.accounts;

CREATE USER 'user_read'@'localhost' IDENTIFIED BY 'user_password';
GRANT SELECT ON test.username TO 'user_read'@'localhost';






