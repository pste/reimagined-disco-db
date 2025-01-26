-- UP

-- **
CREATE TABLE artists (
  artist_id SERIAL PRIMARY KEY,
  "name" varchar NOT NULL,
  UNIQUE("name")
);

-- **
CREATE TABLE albums (
  album_id SERIAL PRIMARY KEY,
  title varchar NOT NULL,
  artist_id INT NOT NULL REFERENCES artists,
  "year" int default(0) NOT NULL,
  genre varchar NOT NULL,
  UNIQUE(title, artist_id)
);

-- **
CREATE TABLE songs (
  song_id SERIAL PRIMARY KEY,
  title varchar NOT NULL,
  track_nr int default(1) NOT NULL,
  disc_nr int default(1) NOT NULL,
  album_id INT  NOT NULL REFERENCES albums,
  UNIQUE(title, album_id)
);

-- **
CREATE TABLE files (
  song_id SERIAL PRIMARY KEY REFERENCES songs,
  file_path varchar NOT NULL,
  file_name varchar NOT NULL,
  modified timestamp NOT NULL, -- no time zone
  UNIQUE(file_path, file_name)
);
