ALTER TABLE files ALTER COLUMN modified TYPE timestamp USING modified AT TIME ZONE 'UTC';
