-- 1. Получатель пользователь ID 5
WITH top_messangers AS (
	SELECT
			m.from_user_id,
			count(1) AS messages_cnt
	FROM
			messages m
	WHERE
			m.to_user_id = 5
	GROUP BY
			m.from_user_id
	ORDER BY
			m.from_user_id DESC
	LIMIT 1)
SELECT 
	concat_ws(" ", u.first_name, u.last_name)
FROM
	users u
INNER JOIN top_messangers t
ON
	u.id = t.from_user_id;

-- 2.
-- пользователи младше 10 лет
WITH less_then_10 AS (
SELECT
	p.user_id
FROM
	profiles p
WHERE
	TIMESTAMPDIFF(YEAR,
	p.birthday,
	curdate()) < 10
)
SELECT
	count(1) AS likes_cnt
FROM
	likes l
INNER JOIN less_then_10
ON
	l.target_id = less_then_10.user_id
WHERE
	l.target_type_id = 1;

-- 3.
WITH top_gender AS (
	SELECT
		u.gender,
		count(1) AS likes_cnt
	FROM
		likes l
	LEFT JOIN users u
		ON
		l.user_id = u.id
	GROUP BY
		u.gender
	ORDER BY
		likes_cnt DESC
	LIMIT 1
)
SELECT
	gender AS greatest_likes_cnt_gender
FROM
	top_gender;