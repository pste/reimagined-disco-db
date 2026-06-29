-- up
CREATE TABLE user_favorites (
    user_id  integer NOT NULL,
    album_id integer NOT NULL,
    created  timestamptz NOT NULL DEFAULT now(),
    PRIMARY KEY (user_id, album_id)
);