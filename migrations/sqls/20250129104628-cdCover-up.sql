-- UP

CREATE TABLE covers (
  album_id SERIAL PRIMARY KEY REFERENCES albums,
  imagedata bytea NOT NULL
);