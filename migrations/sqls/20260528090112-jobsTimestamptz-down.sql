-- down
ALTER TABLE jobs
  ALTER COLUMN "when"    TYPE timestamptz USING "when"    AT TIME ZONE 'UTC',
  ALTER COLUMN "started" TYPE timestamptz USING "started" AT TIME ZONE 'UTC',
  ALTER COLUMN "ended"   TYPE timestamptz USING "ended"   AT TIME ZONE 'UTC';