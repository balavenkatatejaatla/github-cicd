create database if not exists studentapp;
use studentapp;
CREATE TABLE  if not exists  Students(student_id INT NOT NULL AUTO_INCREMENT,
	student_name VARCHAR(100) NOT NULL,
  student_addr VARCHAR(100) NOT NULL,
	student_age VARCHAR(3) NOT NULL,
	student_qual VARCHAR(20) NOT NULL,
	student_percent VARCHAR(10) NOT NULL,
	student_year_passed VARCHAR(10) NOT NULL,
	PRIMARY KEY (student_id)
);

CREATE USER IF NOT EXISTS 'student'@'%' IDENTIFIED BY 'student@1';

GRANT ALL PRIVILEGES ON studentapp.* TO 'student'@'%';

flush privileges;

