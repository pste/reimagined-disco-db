-- files.modified a timestamptz: serve al confronto mtime del filescan incrementale.
-- Stessa convenzione della migration jobsTimestamptz: i valori esistenti arrivano
-- da stringhe ISO UTC via JSON, quindi il wall time salvato è UTC.
ALTER TABLE files ALTER COLUMN modified TYPE timestamptz USING modified AT TIME ZONE 'UTC';
