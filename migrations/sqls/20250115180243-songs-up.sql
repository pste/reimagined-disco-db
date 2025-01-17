-- UP

-- **
CREATE TABLE artists (
  artist_id SERIAL PRIMARY KEY,
  "name" varchar
);

-- **
CREATE TABLE albums (
  album_id SERIAL PRIMARY KEY,
  title varchar,
  artist_id INT REFERENCES artists,
  "year" int,
  genre varchar
);

-- **
CREATE TABLE songs (
  song_id SERIAL PRIMARY KEY,
  title varchar,
  track_nr int,
  album_id INT REFERENCES albums
);

-- **
CREATE TABLE files (
  file_id SERIAL PRIMARY KEY,
  file_path varchar,
  file_name varchar,
  song_id INT REFERENCES albums
);

-- ** DEPRECATE MULTI SOURCE IDEA
DROP TABLE IF EXISTS sources;
DROP TABLE IF EXISTS source_types;