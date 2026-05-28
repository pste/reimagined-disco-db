-- up
ALTER TABLE parameters ADD COLUMN "cronRequeue" varchar NOT NULL DEFAULT '0 2 * * *';
