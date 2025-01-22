-- UP

-- **
CREATE TABLE artists (
  artist_id SERIAL PRIMARY KEY,
  "name" varchar,
  UNIQUE("name")
);

-- **
CREATE TABLE albums (
  album_id SERIAL PRIMARY KEY,
  title varchar,
  artist_id INT REFERENCES artists,
  "year" int,
  genre varchar,
  UNIQUE(title, artist_id)
);

-- **
CREATE TABLE songs (
  song_id SERIAL PRIMARY KEY,
  title varchar,
  track_nr int,
  disc_nr int default(1),
  album_id INT REFERENCES albums,
  UNIQUE(title, album_id)
);

-- **
CREATE TABLE files (
  song_id SERIAL PRIMARY KEY REFERENCES songs,
  file_path varchar,
  file_name varchar,
  UNIQUE(file_path, file_name)
);

-- ** DEPRECATE MULTI SOURCE IDEA
DROP TABLE IF EXISTS sources;
DROP TABLE IF EXISTS source_types;