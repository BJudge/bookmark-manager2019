CREATE DATABASE "bookmark_manager";
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
ALTER TABLE bookmarks ADD COLUMN title VARCHAR(60);

CREATE DATABASE "bookmark_manager_test";
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
ALTER TABLE bookmarks ADD COLUMN title VARCHAR(60);

CREATE TABLE comments(id SERIAL PRIMARY KEY, text VARCHAR(240), bookmark_id INTEGER REFERENCES bookmarks (id));
