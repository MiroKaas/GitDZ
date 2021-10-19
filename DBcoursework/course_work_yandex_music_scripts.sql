use course_work_yandex_music;
-- Жанр самого старого исполнителя, если брать за возраст дату создания записи
SELECT
	g.genre_name
FROM
	songs s
INNER JOIN
	genres g
ON g.id = s.genre_id
WHERE
	s.performer_id =
	(SELECT
		p.id
	FROM
		performers p
	ORDER BY p.created_at ASC
	LIMIT 1);
	
-- Самый активный пользователь
SELECT
	user_name,
	sum(likes_count) as likes
FROM users_likes
GROUP BY
	user_name
ORDER BY likes DESC
LIMIT 1;

-- Сколько тэгов использовано
SELECT
	count(DISTINCT a.tag_id) / (
		SELECT 
			count(at2.id) 
		FROM 
			album_tag at2) as tags_usage_percent
FROM
	albums a;

