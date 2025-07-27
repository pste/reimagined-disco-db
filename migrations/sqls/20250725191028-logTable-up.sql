-- **
CREATE TABLE logs (
  log_id SERIAL PRIMARY KEY,
  "message" varchar NOT NULL,
  details varchar NOT NULL,
  created timestamp DEFAULT now()
);

-- **
CREATE OR REPLACE FUNCTION log_rotate()
RETURNS void
AS $$
	BEGIN
		DELETE FROM logs where created < current_date + INTERVAL '9 MONTH';
        RETURN;
	END;
$$ LANGUAGE plpgsql;