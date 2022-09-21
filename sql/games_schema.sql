CREATE TABLE games(
  id SERIAL PRIMARY KEY,
  type_of_item text
  label_id INTEGER,
  genre_id INTEGER,
  author_id INTEGER,
  source_id INTEGER,
  publish_date DATE,
  archived BOOLEAN,
  MULTIPLAYER TEXT,
  LAST_PLAYED_AT DATE,

  FOREIGN KEY (author_id) REFERENCES authors(id),
  FOREIGN KEY (source_id) REFERENCES sources(id),
  FOREIGN KEY (label_id) REFERENCES labels(id),
  FOREIGN KEY (genre_id) REFERENCES genres(id)
);