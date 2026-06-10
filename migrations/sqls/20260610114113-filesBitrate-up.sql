-- bitrate del file (bps, da music-metadata allo scan): proprietà dell'encoding fisico → vive in files
ALTER TABLE files ADD COLUMN bitrate int;
