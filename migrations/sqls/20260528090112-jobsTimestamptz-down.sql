-- down
ALTER TABLE jobs
  ALTER COLUMN "when"    TYPE timestamp USING "when"    AT TIME ZONE 'UTC',
  ALTER COLUMN "started" TYPE timestamp USING "started" AT TIME ZONE 'UTC',
  ALTER COLUMN "ended"   TYPE timestamp USING "ended"   AT TIME ZONE 'UTC';