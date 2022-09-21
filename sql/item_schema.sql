CREATE TABLE item (
    id INT PRIMARY KEY NOT NULL,
    publish_date DATE NOT NULL,
    archived BOOLEAN,
    author_id INT,
    source_id INT,
    label_id INT,
    genre_id INT,
    
    FOREIGN KEY (author_id) REFERENCES author(id),
    FOREIGN KEY (source_id) REFERENCES source(id),
    FOREIGN KEY (label_id) REFERENCES label(id),
    FOREIGN KEY (genre_id) REFERENCES genre(id)
);
