USE vkdb;
-- 2. берем пользователя id = 1
SELECT
	*
FROM
	users;

 WITH friends AS (
	SELECT
		CASE
			1
		WHEN friend_id THEN user_id
			ELSE friend_id
		END AS friend_id
	FROM
		friendship
	WHERE
		request_type_id = 1
		AND confirmed_at IS NOT NULL
		AND (user_id = 1
			OR friend_id = 1)
UNION
	SELECT
		friend_id
	FROM
		friendship
	WHERE
		request_type_id = 2
		AND user_id = 1
		AND friend_id IN (
		SELECT
			user_id
		FROM
			friendship
		WHERE
			request_type_id = 2
			AND friend_id = 1
		)) -- friends id
SELECT
	count(m.id) AS messages_cnt
FROM
	messages m
WHERE
	(m.from_user_id IN 
		(
	SELECT
		*
	FROM
		friends)
	AND m.to_user_id = 1)
	OR 
(m.to_user_id = 1
		AND m.from_user_id IN 
		(
		SELECT
			*
		FROM
			friends));
		-- нет сообщений от друзей или друзьям




-- 3. 
SELECT
	*
FROM
	likes;

WITH young AS
(
SELECT
	user_id
FROM
	profiles
ORDER BY
	birthday DESC
LIMIT 10)
SELECT
	count(l.id) AS likes_count
FROM
	likes l
WHERE
	l.target_type_id = 1
	AND l.target_id IN (
	SELECT
		user_id
	FROM
		young);
		
-- 4.
	
SELECT
	b.gender_type AS gender_with_more_likes
FROM
	(
	SELECT
		(
		SELECT
			u.gender
		FROM
			users u
		WHERE
			u.id = l.user_id) AS gender_type,
		count(l.id) AS likes_cnt
	FROM
		likes l
	GROUP BY
		gender_type
	ORDER BY
		likes_cnt DESC
	LIMIT 1) AS b;
	
-- 5. Активность по лайкам.
WITH sleep_users AS (
SELECT
	l.user_id,
	count(id) AS likes_cnt
FROM
	likes l
GROUP BY
	l.user_id
ORDER BY
	likes_cnt ASC
LIMIT 10)
SELECT
	concat(u.first_name, " ", u.last_name) AS user_name
FROM
	users u
WHERE
	u.id IN (
	SELECT
		user_id
	FROM
		sleep_users);













