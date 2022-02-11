CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
);

CREATE TABLE student (
    student_id INT,
    name VARCHAR(20) NOT NULL, -- CANT BE NULL
    major VARCHAR(20) UNIQUE, -- CANT BE REPEATED
    PRIMARY KEY(student_id) -- PRIMARY KEYS ARE NOT NULL AND UNIQUE
);

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided' -- IF MAJOR NOT ENTERED, DEFAULT VALUE IS undecided
);

CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT, --DOESNT HAVE TO BE ENTERED, IT AUTO INCREMENTS
    name VARCHAR(20),
    major VARCHAR(20)
);

-- DESCRIBES TABLE
DESCRIBE student;
    
-- ERASES TABLE
DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL(3,2);

-- ERASES ROW
ALTER TABLE student DROP COLUMN gpa;

-- Insertion Data
INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student(student_id, name) VALUES(3, 'Claire');
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

-- UPDATES NULL VALUE
UPDATE student 
SET major = 'Chemistry'
WHERE  student_id = 3;


SELECT * FROM student;


UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Chemistry';

UPDATE student
SET name = 'Tom', major = 'undecided'
WHERE student_id = 1;

DELETE FROM student
WHERE student_id = 5;

DELETE FROM student
WHERE name = 'Tom' AND major = 'undecided';

SELECT name, major
FROM student
ORDER BY name;

SELECT *
FROM student
ORDER BY major, student_id DESC;

SELECT *
FROM student
LIMIT 2;


SELECT *
FROM student 
ORDER BY student_id DESC
LIMIT 2;

SELECT * 
FROM student
WHERE major = 'Biology' OR  major = 'Sociology';

-- <, >, <=, >=, =, <>, AND, OR

SELECT * 
FROM student
WHERE major <> 'Biology';

SELECT * 
FROM student
WHERE student_id <= 3 AND name <> 'Jack';

SELECT * 
FROM student
WHERE name IN ('Claire', 'Jack');

