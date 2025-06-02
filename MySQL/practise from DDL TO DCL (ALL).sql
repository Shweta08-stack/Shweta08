CREATE DATABASE collage;

USE collage;

CREATE TABLE studenst(
student_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50)NOT NULL,
last_name VARCHAR(50),
gender ENUM("male","female","other")DEFAULT "other"
);

INSERT INTO studenst(first_name,last_name,gender)
VALUES("shweta","Ghotekar","female"),
("shweta","Ghotekar", DEFAULT),
("shweta","Ghotekar","female");

SELECT * FROM studenst;

CREATE TABLE course(
course_id INT PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR (100) UNIQUE
);

INSERT INTO course (course_name)
VALUES("PYTHON"),
("JAVA"),
("UIPATH"),
("POWER BI");

SELECT * FROM course;

ALTER TABLE studenst MODIFY first_name VARCHAR(100);

RENAME TABLE course TO collage_courses;

SELECT * FROM collage_courses;

SELECT * FROM studenst;

DELETE FROM studenst WHERE student_id=4;

DELETE FROM studenst WHERE student_id =5;

DELETE FROM studenst WHERE student_id =6;

#i want to update the name in students where emp id is 2
UPDATE studenst SET first_name="shruti" WHERE student_id = 2;

UPDATE studenst SET last_name ="Nakhate" WHERE student_id =2;
UPDATE studenst SET last_name="Selukar" WHERE student_id =3;

GRANT SELECT,INSERT,MODIFY ON collage_courses TO 'shweta@gmail.com'@'localhost';


GRANT SELECT,INSERT ON studenst TO "shweta@gnail.com"@"localhost";

REVOKE SELECT,INSERT ON studenst FROM "shweta@gmail.com"@"localhost";

TRUNCATE TABLE collage_courses;

SELECT * FROM collage_courses;

ALTER TABLE collage_courses DROP COLUMN course_name ;

SELECT * FROM collage_courses;

DROP TABLE collage_courses;

TRUNCATE TABLE studenst;

SELECT * FROM studenst;

ALTER TABLE studenst DROP COLUMN first_name;

SELECT * FROM studenst;

DROP TABLE studenst;

USE 8_AM;

USE COLLAGE;

DROP DATABASE COLLAGE;

USE 8_AM;













