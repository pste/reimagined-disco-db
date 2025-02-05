-- DOWN

-- **
DROP TABLE FILES;
CREATE TABLE files (
  song_id SERIAL PRIMARY KEY REFERENCES songs,
  file_path varchar NOT NULL,
  file_name varchar NOT NULL,
  modified timestamp NOT NULL, -- no time zone
  UNIQUE(file_path, file_name)
);

-- **
DROP TABLE sources;