DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS runs;

CREATE TABLE clients (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    name TEXT NOT NULL,
    hash TEXT NOT NULL
);

CREATE TABLE runs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    trace TEXT NOT NULL,
    runOrder INTEGER NOT NULL,
    run_hash TEXT NOT NULL,
    client_hash TEXT NOT NULL,
    usetrace_api_response TEXT,
    projectID TEXT NOT NULL
);