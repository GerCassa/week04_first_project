DROP TABLE exhibits;
DROP TABLE galleries;
DROP TABLE artists;


CREATE TABLE galleries(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) not null,
);

CREATE TABLE artists(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) not null,
  bio TEXT
  style/category VARCHAR(255)
  gallery_id INT8 references galleries(id)
);

CREATE TABLE exhibits(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) not null,
  artist_id INT8 references artists(id)
);
