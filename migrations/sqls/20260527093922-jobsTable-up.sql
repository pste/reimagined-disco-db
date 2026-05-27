CREATE TABLE jobs (
  job_id SERIAL PRIMARY KEY,
  "name" varchar NOT NULL,
  "when" timestamp NOT NULL,
  "status" varchar NOT NULL DEFAULT 'pending', -- pending / running / done / error
  "started" timestamp,
  "ended" timestamp,
  "result" varchar
);
