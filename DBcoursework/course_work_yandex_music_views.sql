use course_work_yandex_music;

CREATE OR REPLACE VIEW course_work_yandex_music.top_10_songs AS
SELECT
	s.title as song_name,
	sum(lh.listening_cnt) as listening_count
FROM
	songs s
LEFT JOIN
	listening_history lh
ON lh.song_id = s.id
GROUP BY s.title
ORDER BY listening_count DESC
LIMIT 10;

CREATE OR REPLACE VIEW course_work_yandex_music.users_likes AS
SELECT 
	concat_ws(' ', u.first_name, u.last_name) as user_name,
	o.objective_name_type as like_target,
	count(l.id) as likes_count
FROM
	users u
LEFT JOIN
	likes l
ON l.user_id = u.id
INNER JOIN
	objective_types o
ON 
	l.objective_type_id = o.id
WHERE
	l.like_dislike_flg = 1
GROUP BY user_name, like_target
ORDER BY user_name;