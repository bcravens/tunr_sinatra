DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS songs;

CREATE TABLE artists(
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT NOT NULL,
  photo_url TEXT,
  nationality TEXT
);

CREATE TABLE songs(
  id SERIAL PRIMARY KEY NOT NULL,
  title TEXT NOT NULL,
  album TEXT,
  preview_url TEXT,
  artist_id INT
);
