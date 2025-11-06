-- **
CREATE TABLE statistics (
  song_id SERIAL PRIMARY KEY REFERENCES songs,
  added timestamp NOT NULL,
  played timestamp NULL,
  stars INT DEFAULT(0)
);

INSERT INTO statistics(song_id, added) 
  SELECT song_id, current_date FROM songs;