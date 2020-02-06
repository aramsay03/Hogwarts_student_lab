DROP TABLE students;
DROP TABLE houses;

CREATE TABLE houses (
  id SERIAL PRIMARY key,
  house_name varchar(255),
  url varchar(255)
);

CREATE TABLE students (
  id SERIAL PRIMARY key,
  first_name varchar(255),
  last_name varchar(255),
  age INT,
  house_id INT REFERENCES houses(id) NOT NULL
);
