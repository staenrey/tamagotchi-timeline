DROP TABLE IF EXISTS tama_entries; -- added DROP TABLE so we can make changes each time
CREATE TABLE IF NOT EXISTS tama_entries (
  id SERIAL PRIMARY KEY,
  brand VARCHAR NOT NULL,
  tama_name VARCHAR NOT NULL,
  based_on VARCHAR NOT NULL,
  toy_type VARCHAR NOT NULL,
  era VARCHAR NOT NULL,
  region VARCHAR NOT NULL,
  release DATE NOT NULL,
  got_it BOOLEAN NOT NULL
);