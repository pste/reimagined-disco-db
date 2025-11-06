-- **
CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  "username" varchar NOT NULL,
  "password" varchar NOT NULL,
  created timestamp DEFAULT now()
);
