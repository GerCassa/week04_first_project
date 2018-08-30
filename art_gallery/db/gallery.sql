DROP TABLE exhibits;
DROP TABLE artists;
DROP TABLE galleries;


CREATE TABLE galleries
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) not null
);

CREATE TABLE artists(
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255) not null,
  last_name VARCHAR(255) not null,
  style VARCHAR(255),
  bio TEXT,
  gallery_id INT8 references galleries(id)
);

CREATE TABLE exhibits(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) not null,
  year VARCHAR(255),
  medium VARCHAR(255),
  style VARCHAR(255),
  image VARCHAR(255),
  artist_id INT8 references artists(id) ON DELETE CASCADE
);
