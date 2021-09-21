show databases;
use mysql;
CREATE TABLE student(
    student_id INT,
    dept_id INT,
    name Varchar(20),
    dob DATE,
    address VARCHAR(20),
    contact INT,
    PRIMARY KEY(student_id)
    
);
CREATE TABLE subjects(
    subject_id INT,
    name VARCHAR(20),
    PRIMARY KEY(subject_id)
);

CREATE TABLE department(
    dept_id INT,
    name VARCHAR(20),
    PRIMARY KEY(dept_id)
);

ALTER TABLE student
ADD FOREIGN KEY(dept_id)
REFERENCES department(dept_id)
ON DELETE SET NULL;

CREATE TABLE department_subjects(
    dept_id INT,
    subject_id INT,
    PRIMARY KEY(dept_id,subject_id),
    constraint dept_id
    FOREIGN KEY (dept_id) REFERENCES department (dept_id) ON DELETE CASCADE, 
    FOREIGN KEY (subject_id) REFERENCES subjects (subject_id) on DELETE CASCADE
);

CREATE TABLE faculty(
    fac_name varchar(100),
    fac_id INT,
    dob date,
    addr varchar(100),
    contact integer(10),
    email varchar(25),
    dept_id INT,
    PRIMARY KEY(fac_id)

);
ALTER TABLE faculty
ADD FOREIGN KEY(dept_id)
REFERENCES department(dept_id)
ON DELETE SET NULL;

CREATE TABLE faculty_subject(

fac_id INT,
subject_id INT,
FOREIGN KEY (fac_id) REFERENCES  faculty(fac_id) ON DELETE CASCADE, 
FOREIGN KEY (subject_id) REFERENCES subjects(subject_id) on DELETE CASCADE
);

SELECT * FROM subjects

SELECT * FROM student
SELECT * FROM department
SELECT * FROM faculty
SELECT * FROM department_subjects
SELECT * FROM faculty_subject

INSERT INTO  student(student_id,dept_id,name,dob,address,contact)  
VALUES (4,104,'Liki','1976-03-14','PR',9993);  

INSERT INTO  subjects(subject_id,name)  
VALUES (203,'Big D');  

INSERT INTO  department(dept_id,name)
VALUES (104,'BIG'); 









