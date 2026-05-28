-- up
CREATE UNIQUE INDEX jobs_one_pending_per_name ON jobs (name) WHERE status = 'pending';
