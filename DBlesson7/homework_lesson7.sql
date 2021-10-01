use shop;

-- 1.

INSERT
	INTO
	orders (user_id)
	-- вставляем значения в заказы
VALUES
	('1'),
    ('3'),
    ('4');
    
SELECT
	u.id,
	u.name
FROM
	users u
RIGHT JOIN orders o
ON
	u.id = o.user_id;
	
-- 2.

SELECT 
	p.name AS product_name,
	c.name AS catalog_name
FROM
	products p
LEFT JOIN catalogs c
ON
	p.catalog_id = c.id;
	
-- 3.

CREATE TABLE cities (
	label VARCHAR(255) NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL
);

CREATE TABLE flights (
	id SERIAL PRIMARY KEY,
	`from` VARCHAR(255) NOT NULL,
	`to` VARCHAR(255) NOT NULL,
	CONSTRAINT flights_from FOREIGN KEY (`from`) REFERENCES cities(label),
	CONSTRAINT flights_to FOREIGN KEY (`to`) REFERENCES cities(label)
);

INSERT
	INTO
	cities
VALUES 
('moscow',
'Москва'),
('irkutsk',
'Иркутск'),
('novgorod',
'Новгород'),
('kazan',
'Казань'),
('omsk',
'Омск');

INSERT
	INTO
	flights (`from`,
	`to`)
VALUES 
	('moscow', 'omsk'),
	('novgorod', 'kazan'),
	('irkutsk', 'moscow'),
	('omsk', 'irkutsk'),
	('moscow', 'kazan');

-- Вариант 1
SELECT
	f.id,
	(
	SELECT
		c.name
	FROM
		cities c
	WHERE
		c.label = f.`from`) AS `from`,
	(
	SELECT
		c.name
	FROM
		cities c
	WHERE
		c.label = f.`to`) AS `to`
FROM
	flights f
ORDER BY
	f.id;
	
-- Вариант 2
SELECT
	f.id,
	c1.name AS `from`,
	c2.name AS `to`
FROM
	flights f
INNER JOIN cities c1 ON
	f.`from` = c1.label
INNER JOIN cities c2 ON
	f.`to` = c2.label;