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
  artist_id INT8 references artists(id)
);
