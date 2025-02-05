-- UP

-- **
CREATE TABLE sources (
  source_id SERIAL PRIMARY KEY,
  "path" varchar NOT NULL,
  UNIQUE("path")
);

-- **
DROP TABLE FILES;
CREATE TABLE files (
  file_id SERIAL PRIMARY KEY,
  source_id INT REFERENCES sources,
  song_id INT REFERENCES songs,
  file_path varchar NOT NULL,
  file_name varchar NOT NULL,
  modified timestamp NOT NULL, -- no time zone
  UNIQUE(source_id, file_path, file_name)
);
