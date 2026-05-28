-- up
ALTER TABLE parameters ADD COLUMN "cacheTTLDays" integer NOT NULL DEFAULT 7;
ALTER TABLE parameters DROP COLUMN "cronScan";