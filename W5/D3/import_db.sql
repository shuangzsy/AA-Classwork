DROP TABLE IF EXISTS users;

CREATE TABLE users (
  user_id INTEGER PRIMARY KEY,
  fname TEXT NOT NULL,
  lname TEXT NOT NULL
);

DROP TABLE IF EXISTS questions;

CREATE TABLE questions (
  question_id INTEGER PRIMARY KEY,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  author_id INTEGER NOT NULL,

  FOREIGN KEY(author_id) REFERENCES users(user_id)
);

DROP TABLE IF EXISTS question_follows;

CREATE TABLE question_follows (
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  question_id INTEGER NOT NULL, -- can be null?
  author_id INTEGER NOT NULL,

  FOREIGN KEY(author_id) REFERENCES users(user_id)
  FOREIGN KEY(question_id) REFERENCES questions(question_id)
);

DROP TABLE IF EXISTS replies;

CREATE TABLE replies (
  reply_id INTEGER PRIMARY KEY,
  question_id INTEGER ,
  parent_id INTEGER,
  author_id INTEGER,
  body TEXT NOT NULL,

);



