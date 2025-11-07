-- **
CREATE TABLE user_stats (
  user_stats_id SERIAL PRIMARY KEY,
  song_id SERIAL REFERENCES "songs",
  user_id SERIAL REFERENCES "users",
  played timestamp NULL,
  stars INT DEFAULT(0)
);

-- ** ADD CREATED
ALTER TABLE files ADD COLUMN created timestamp DEFAULT NOW();
UPDATE files SET created = modified;
ALTER TABLE files ALTER COLUMN created SET NOT NULL;

-- ** MOVE modified COL TO THE END
ALTER TABLE files RENAME COLUMN modified TO modified_old;
ALTER TABLE files ADD COLUMN modified timestamp;
UPDATE files SET modified = modified_old;
ALTER TABLE files ALTER COLUMN modified SET NOT NULL;
ALTER TABLE files DROP COLUMN modified_old;
