-- DOWN

-- **
DROP TABLE  files;
DROP TABLE  songs;
DROP TABLE  albums;
DROP TABLE  artists;

-- ** RESTORE MULTI SOURCE IDEA

-- **
CREATE TABLE source_types (
  source_type_id SERIAL PRIMARY KEY,
  source_type_name VARCHAR (50) UNIQUE NOT NULL
);

INSERT INTO source_types(source_type_name) VALUES('filesystem');

-- **
CREATE TABLE sources (
  source_id SERIAL PRIMARY KEY,
  source_type_id INT REFERENCES source_types
);