
PRAGMA foreign_keys = ON;

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

  FOREIGN KEY(author_id) REFERENCES users(user_id),
  FOREIGN KEY(question_id) REFERENCES questions(question_id)
);

DROP TABLE IF EXISTS replies;

CREATE TABLE replies (
  reply_id INTEGER PRIMARY KEY,
  question_id INTEGER ,
  parent_id INTEGER,
  author_id INTEGER,
  body TEXT NOT NULL,

  FOREIGN KEY(author_id) REFERENCES users(user_id),
  FOREIGN KEY(question_id) REFERENCES questions(question_id)

);

DROP TABLE IF EXISTS question_likes;

CREATE TABLE question_likes (
  total_likes INTEGER DEFAULT 0,
  author_id INTEGER NOT NULL,
  question_id INTEGER NOt NULL,

  FOREIGN KEY(author_id) REFERENCES users(user_id),
  FOREIGN KEY(question_id) REFERENCES questions(question_id)

);


INSERT INTO
  users (fname, lname)
VALUES
  ('Edward', 'James'),
  ('David', 'Green');

INSERT INTO
  questions (title, body, author_id)
VALUES
  ('How do I open SQL file?', 'How do I open SQL file?', (SELECT user_id FROM users WHERE fname = 'Edward' AND lname = 'James')),
  ('How to pass Ruby 2 assessment?', 'How to pass Ruby 2 assessment?', (SELECT user_id FROM users WHERE fname = 'Edward' AND lname = 'James')),
  ('What is the weather today?', 'What is the weather today?', (SELECT user_id FROM users WHERE fname = 'David' AND lname = 'Green'));

INSERT INTO
  questions (title, body, author_id)
VALUES
  ('How do I open SQL file?', 'How do I open SQL file?', 1),
  ('How to pass Ruby 2 assessment?', 'How to pass Ruby 2 assessment?', 1),
  ('What is the weather today?', 'What is the weather today?', 2);



