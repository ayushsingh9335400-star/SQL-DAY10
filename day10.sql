CREATE TABLE users1(
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(20) UNIQUE,
  age INTEGER,
  city VARCHAR(50) 
);

SELECT * FROM users1;

INSERT INTO users1(username,email,age,city)
 VALUES ('Annu','annu@gmail.com','23','noida'),
        ('abhi','abhi@gn')

1.--to rename thr username column to full_name
ALTER TABLE users1
RENAME column username TO full_name;


SELECT * FROM users1 ORDER BY user_id ASC;

2.--to change the age column data type form INT to SMALLINT
ALTER TABLE users1
ALTER COLUMN age TYPE smallint;

3.--to add a NOT NULL constraints to city olumn
ALTER TABLE users1
ALTER COLUMN city SET NOT NULL;

4.--adding check const