CREATE TABLE user_id3 (
    song_id   INT PRIMARY KEY REFERENCES songs(song_id),
    --tags      JSONB NOT NULL,
    title      VARCHAR, 
    album      VARCHAR,
    artist     VARCHAR,
    "year"     INT,
    genre      VARCHAR,
    track_nr   INT,
    disc_nr    INT,
    cover      bytea,
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    status     VARCHAR NOT NULL DEFAULT 'pending' -- pending | error
);