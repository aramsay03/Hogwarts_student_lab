DROP TABLE students;

CREATE TABLE students (
  id SERIAL PRIMARY key,
  first_name varchar(255),
  last_name varchar(255),
  house varchar(255),
  age INT
);

CREATE TABLE houses (
  id SERIAL PRIMARY key,
  house_name varchar(255),
  url varchar(255)
);
