-- down
ALTER TABLE parameters DROP COLUMN "cacheTTLDays";

ALTER TABLE parameters ADD COLUMN "cronScan" varchar NOT NULL DEFAULT '0 23 * * 1,5';