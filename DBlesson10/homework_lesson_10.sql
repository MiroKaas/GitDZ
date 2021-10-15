-- CREATE DATABASE yandex_music;
-- DROP DATABASE yandex_music;
USE yandex_music;

-- сделано
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  email VARCHAR(100) NOT NULL UNIQUE COMMENT 'Почта',
  first_name VARCHAR(100) NOT NULL COMMENT 'Имя пользователя',
  last_name VARCHAR(100) NOT NULL COMMENT 'Фамилия пользователя',
  phone CHAR(11) NOT NULL UNIQUE COMMENT 'Телефон',
  active_subscribe BOOLEAN NOT NULL COMMENT 'Телефон',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Пользователи'; 

-- сделано 
DROP TABLE IF EXISTS songs;
CREATE TABLE songs (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  title VARCHAR(255) NOT NULL COMMENT 'Название песни',
  release_at DATE COMMENT 'Дата выхода песни', 
  genre_id BIGINT UNSIGNED NOT NULL COMMENT 'ID жанра',
  album_id BIGINT UNSIGNED NOT NULL COMMENT 'ID альбома',
  performer_id BIGINT UNSIGNED NOT NULL COMMENT 'ID исполнителя',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Песни'; 

-- сделано 
DROP TABLE IF EXISTS genre;
CREATE TABLE genre (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  genre_name VARCHAR(255) NOT NULL COMMENT 'Название жанра',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Жанр'; 

-- сделано
DROP TABLE IF EXISTS album;
CREATE TABLE album (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  album_title VARCHAR(255) NOT NULL COMMENT 'Название альбома',
  release_at DATE COMMENT 'Дата выхода альбома',
  musician_id BIGINT UNSIGNED NOT NULL  COMMENT 'ID исполнителя',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Альбом'; 

-- сделано
DROP TABLE IF EXISTS album_tag;
CREATE TABLE album_tag (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  tag_name VARCHAR(255) NOT NULL COMMENT 'Название тэга',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Тэги для альбома'; 

-- сделано
DROP TABLE IF EXISTS performer;
CREATE TABLE performer (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  performer_name VARCHAR(255) NOT NULL COMMENT 'Название исполнителя',
  album_id BIGINT UNSIGNED NOT NULL COMMENT 'ID альбома',
  label_id BIGINT UNSIGNED COMMENT 'ID лейбла',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Исполнитель'; 

/* не нужны
DROP TABLE IF EXISTS musician;
CREATE TABLE musician (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  musician_name VARCHAR(255) NOT NULL COMMENT 'Имя музыканта',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Музыкант'; 

-- сделано
DROP TABLE IF EXISTS band;
CREATE TABLE band (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  band_name VARCHAR(255) NOT NULL COMMENT 'Название группы',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Группа'; 

-- сделано
DROP TABLE IF EXISTS band_composition;
CREATE TABLE band_composition (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  band_id INT UNSIGNED NOT NULL COMMENT 'ID группы',
  musician_id INT UNSIGNED NOT NULL COMMENT 'ID музыканта',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Состав группы'; 
*/

-- сделано
DROP TABLE IF EXISTS listening_history;
CREATE TABLE listening_history (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  user_id BIGINT UNSIGNED NOT NULL COMMENT 'ID пользователя',
  song_id BIGINT UNSIGNED NOT NULL COMMENT 'ID песни',
  listening_cnt INT UNSIGNED NOT NULL COMMENT 'Количество прослушиваний',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'История прослушивания'; 

-- сделано
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

-- сделано
DROP TABLE IF EXISTS objective_type;
CREATE TABLE objective_type (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  objective_name_type VARCHAR(255) NOT NULL COMMENT 'Название типа цели',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Тип цели'; 

-- сделано
DROP TABLE IF EXISTS playlists;
CREATE TABLE playlists (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор строки',
  user_id BIGINT UNSIGNED NOT NULL COMMENT 'ID пользователя',
  playlist_name VARCHAR(255) NOT NULL DEFAULT 'Favorites'  COMMENT  'Название плейлиста',
  song_id BIGINT UNSIGNED NOT NULL COMMENT 'ID песни',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Плейлисты'; 


-- ALTER TABLE likes DROP FOREIGN KEY likes_objective_type;
ALTER TABLE likes
ADD CONSTRAINT  likes_objective_type FOREIGN KEY (objective_type_id) REFERENCES objective_type (id)
ON DELETE NO ACTION
ON UPDATE CASCADE;

-- ALTER TABLE likes DROP FOREIGN KEY likes_user_id;
ALTER TABLE likes
ADD CONSTRAINT  likes_user_id FOREIGN KEY (user_id) REFERENCES users (id)
ON DELETE NO ACTION
ON UPDATE CASCADE;

-- ALTER TABLE performer DROP FOREIGN KEY performer_album_id;
ALTER TABLE performer
ADD CONSTRAINT  performer_album_id FOREIGN KEY (album_id) REFERENCES album (id)
ON DELETE NO ACTION
ON UPDATE CASCADE;

-- ALTER TABLE songs DROP FOREIGN KEY songs_genre_id;
ALTER TABLE songs
ADD CONSTRAINT  songs_genre_id FOREIGN KEY (genre_id) REFERENCES genre (id)
ON DELETE NO ACTION
ON UPDATE CASCADE;

-- ALTER TABLE songs DROP FOREIGN KEY songs_album_id;
ALTER TABLE songs
ADD CONSTRAINT  songs_album_id FOREIGN KEY (album_id) REFERENCES album (id)
ON DELETE NO ACTION
ON UPDATE CASCADE;

-- ALTER TABLE songs DROP FOREIGN KEY songs_performer_id;
ALTER TABLE songs
ADD CONSTRAINT  songs_performer_id FOREIGN KEY (performer_id) REFERENCES performer (id)
ON DELETE NO ACTION
ON UPDATE CASCADE;

-- ALTER TABLE listening_history DROP FOREIGN KEY listening_history_user_id;
ALTER TABLE listening_history
ADD CONSTRAINT  listening_history_user_id FOREIGN KEY (user_id) REFERENCES users (id)
ON DELETE NO ACTION
ON UPDATE CASCADE;

-- ALTER TABLE listening_history DROP FOREIGN KEY listening_history_song_id;
ALTER TABLE listening_history
ADD CONSTRAINT  listening_history_song_id FOREIGN KEY (song_id) REFERENCES songs (id)
ON DELETE NO ACTION
ON UPDATE CASCADE;

-- ALTER TABLE playlists DROP FOREIGN KEY playlists_user_id;
ALTER TABLE playlists
ADD CONSTRAINT  playlists_user_id FOREIGN KEY (user_id) REFERENCES users (id)
ON DELETE NO ACTION
ON UPDATE CASCADE;

-- ALTER TABLE playlists DROP FOREIGN KEY playlists_song_id;
ALTER TABLE playlists
ADD CONSTRAINT  playlists_song_id FOREIGN KEY (song_id) REFERENCES songs (id)
ON DELETE NO ACTION
ON UPDATE CASCADE;