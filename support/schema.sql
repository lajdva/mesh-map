DROP TABLE IF EXISTS samples;
CREATE TABLE IF NOT EXISTS samples (
  hash TEXT PRIMARY KEY,
  time INTEGER NOT NULL,
  rssi REAL CHECK (rssi IS NULL OR typeof(rssi) = 'real'),
  snr REAL CHECK (snr  IS NULL OR typeof(snr)  = 'real'),
  observed INTEGER NOT NULL DEFAULT 0 CHECK (observed IN (0, 1)),
  repeaters TEXT NOT NULL DEFAULT '[]'
);
