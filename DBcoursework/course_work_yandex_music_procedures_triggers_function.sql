use course_work_yandex_music;

-- триггер
-- корректный формат почты при вставке
DROP TRIGGER IF EXISTS insert_with_at;

DELIMITER //

CREATE TRIGGER insert_with_at BEFORE INSERT ON users
FOR EACH ROW
BEGIN
	IF NEW.email NOT LIKE '%@%.%' THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Not valid email format.";
	END IF;
END //

DELIMITER ;

-- функция
-- увеличение счетчика прослушиваний на 1 
DELIMITER //

DROP FUNCTION IF EXISTS listening_counter//

CREATE FUNCTION listening_counter (song_i BIGINT)
RETURNS INT DETERMINISTIC
BEGIN
	DECLARE start_listening_cnt INT;
	DECLARE listening_cnt INT;
	SET start_listening_cnt = 0;
	SELECT sum(lh.listening_cnt) INTO start_listening_cnt FROM listening_history lh
		WHERE lh.song_id = song_i;
	SET listening_cnt = start_listening_cnt + 1;
	RETURN listening_cnt;
END //

DELIMITER ;

-- процедура
-- вывести id альбомов с одной песней, чтобы проставить тэг single
DELIMITER //
DROP PROCEDURE IF EXISTS album_tag_single//

CREATE PROCEDURE album_tag_single ()
BEGIN
	SELECT 
		s.id 
	FROM
		(SELECT 
			a.id,
			count(s.id) as songs_cnt
		FROM 
			albums a
		LEFT JOIN
			songs s
		ON a.id = s.album_id
		GROUP BY a.id
		HAVING songs_cnt = 1
		) as s;
	-- SELECT count(*) INTO total FROM catalogs;
END//

DELIMITER ;