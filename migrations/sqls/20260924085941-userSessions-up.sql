-- up
-- sessioni web persistenti (store di @fastify/session): sopravvivono ai riavvii dell'API
CREATE TABLE sessions (
    sid     varchar PRIMARY KEY,
    data    jsonb NOT NULL,          -- sessione serializzata (cookie + user)
    expires timestamptz NOT NULL     -- = cookie.expires, per la pulizia delle scadute
);
CREATE INDEX sessions_expires_idx ON sessions (expires);
