DROP DATABASE IF EXISTS course_work_yandex_music;
CREATE DATABASE course_work_yandex_music;

USE course_work_yandex_music;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  email VARCHAR(100) NOT NULL UNIQUE COMMENT 'Почта',
  first_name VARCHAR(100) NOT NULL COMMENT 'Имя пользователя',
  last_name VARCHAR(100) NOT NULL COMMENT 'Фамилия пользователя',
  phone CHAR(11) NOT NULL UNIQUE COMMENT 'Телефон',
  active_subscribe BOOLEAN NOT NULL COMMENT 'Наличие подписки',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Пользователи'; 

DROP TABLE IF EXISTS labels;
CREATE TABLE labels (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  label_name VARCHAR(255) COMMENT 'Название лейбла',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Музыкальный лейбл'; 

DROP TABLE IF EXISTS performers;
CREATE TABLE performers (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  performer_name VARCHAR(255) NOT NULL COMMENT 'Название исполнителя',
  label_id BIGINT UNSIGNED COMMENT 'ID лейбла',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Исполнитель'; 

DROP TABLE IF EXISTS genres;
CREATE TABLE genres (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  genre_name VARCHAR(255) NOT NULL COMMENT 'Название жанра',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Жанр'; 

DROP TABLE IF EXISTS album_tag;
CREATE TABLE album_tag (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  tag_name VARCHAR(255) NOT NULL COMMENT 'Название тэга',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Тэги для альбома'; 

DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  album_title VARCHAR(255) NOT NULL COMMENT 'Название альбома',
  release_at DATE COMMENT 'Дата выхода альбома',
  performer_id BIGINT UNSIGNED NOT NULL  COMMENT 'ID исполнителя',
  tag_id BIGINT UNSIGNED DEFAULT null COMMENT 'ID основного тэга',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Альбом'; 

DROP TABLE IF EXISTS songs;
CREATE TABLE songs (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  title VARCHAR(255) NOT NULL COMMENT 'Название песни',
  genre_id BIGINT UNSIGNED NOT NULL COMMENT 'ID жанра',
  album_id BIGINT UNSIGNED NOT NULL COMMENT 'ID альбома',
  performer_id BIGINT UNSIGNED NOT NULL COMMENT 'ID исполнителя',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Песни'; 

DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  user_id BIGINT UNSIGNED NOT NULL COMMENT 'ID пользователя',
  objective_type_id BIGINT UNSIGNED NOT NULL COMMENT 'ID типа цели',
  objective_id BIGINT UNSIGNED NOT NULL COMMENT 'ID цели',
  like_dislike_flg INT UNSIGNED NOT NULL COMMENT 'Проставлен: 1 - Лайк, 0 - Дизлайк',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Понравившееся'; 

DROP TABLE IF EXISTS objective_types;
CREATE TABLE objective_types (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  objective_name_type VARCHAR(255) NOT NULL COMMENT 'Название типа цели',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Тип цели'; 

DROP TABLE IF EXISTS listening_history;
CREATE TABLE listening_history (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  user_id BIGINT UNSIGNED NOT NULL COMMENT 'ID пользователя',
  song_id BIGINT UNSIGNED NOT NULL COMMENT 'ID песни',
  listening_cnt INT UNSIGNED NOT NULL COMMENT 'Количество прослушиваний',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'История прослушивания'; 

DROP TABLE IF EXISTS playlists;
CREATE TABLE playlists (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  user_id BIGINT UNSIGNED NOT NULL COMMENT 'ID пользователя',
  playlist_name VARCHAR(255) NOT NULL DEFAULT 'Favorites'  COMMENT  'Название плейлиста',
  song_id BIGINT UNSIGNED NOT NULL COMMENT 'ID песни',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Плейлисты'; 

-- Блок связей
-- ALTER TABLE albums DROP FOREIGN KEY performer_label_id;
ALTER TABLE performers
ADD CONSTRAINT  performers_label_id FOREIGN KEY (label_id) REFERENCES labels (id)
ON DELETE NO ACTION
ON UPDATE CASCADE;

-- ALTER TABLE albums DROP FOREIGN KEY album_tag_id;
-- ALTER TABLE albums DROP FOREIGN KEY album_performer_id;
ALTER TABLE albums
ADD CONSTRAINT  albums_tag_id FOREIGN KEY (tag_id) REFERENCES album_tag (id)
ON DELETE NO ACTION
ON UPDATE CASCADE,
ADD CONSTRAINT  albums_performer_id FOREIGN KEY (performer_id) REFERENCES performers (id)
ON DELETE NO ACTION
ON UPDATE CASCADE;

-- ALTER TABLE songs DROP FOREIGN KEY songs_genre_id;
-- ALTER TABLE songs DROP FOREIGN KEY songs_album_id;
-- ALTER TABLE songs DROP FOREIGN KEY songs_performer_id;
ALTER TABLE songs
ADD CONSTRAINT  songs_genres_id FOREIGN KEY (genre_id) REFERENCES genres (id)
ON DELETE NO ACTION
ON UPDATE CASCADE,
ADD CONSTRAINT  songs_albums_id FOREIGN KEY (album_id) REFERENCES albums (id)
ON DELETE NO ACTION
ON UPDATE CASCADE,
ADD CONSTRAINT  songs_performer_id FOREIGN KEY (performer_id) REFERENCES performers (id)
ON DELETE NO ACTION
ON UPDATE CASCADE;

-- ALTER TABLE listening_history DROP FOREIGN KEY listening_history_user_id;
-- ALTER TABLE listening_history DROP FOREIGN KEY listening_history_song_id;
ALTER TABLE listening_history
ADD CONSTRAINT  listening_history_user_id FOREIGN KEY (user_id) REFERENCES users (id)
ON DELETE NO ACTION
ON UPDATE CASCADE,
ADD CONSTRAINT  listening_history_song_id FOREIGN KEY (song_id) REFERENCES songs (id)
ON DELETE NO ACTION
ON UPDATE CASCADE;

-- ALTER TABLE playlists DROP FOREIGN KEY playlists_user_id;
-- ALTER TABLE playlists DROP FOREIGN KEY playlists_song_id;
ALTER TABLE playlists
ADD CONSTRAINT  playlists_user_id FOREIGN KEY (user_id) REFERENCES users (id)
ON DELETE NO ACTION
ON UPDATE CASCADE,
ADD CONSTRAINT  playlists_song_id FOREIGN KEY (song_id) REFERENCES songs (id)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- ALTER TABLE likes DROP FOREIGN KEY likes_objective_type;
-- ALTER TABLE likes DROP FOREIGN KEY likes_user_id;
ALTER TABLE likes
ADD CONSTRAINT  likes_objective_type FOREIGN KEY (objective_type_id) REFERENCES objective_types (id)
ON DELETE NO ACTION
ON UPDATE CASCADE,
ADD CONSTRAINT  likes_user_id FOREIGN KEY (user_id) REFERENCES users (id)
ON DELETE NO ACTION
ON UPDATE CASCADE;

-- Блок индексов
CREATE INDEX ix_users_email ON users(email);
CREATE INDEX ix_songs_title ON songs (title);
CREATE INDEX ix_history_listening_user_time ON listening_history (user_id, updated_at);