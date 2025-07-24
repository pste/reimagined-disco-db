-- **
CREATE TABLE parameters (
  param_id SERIAL PRIMARY KEY,
  "cronScan" varchar NOT NULL
);

INSERT INTO parameters("cronScan") VALUES('0 23 * * 1,5'); -- At 23:00 on Monday and Friday