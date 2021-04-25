/* Basics */

CREATE TABLE student (
    student_id INT ,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);

CREATE TABLE student (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(id)
);

DESCRIBE student;

DROP TABLE student;

INSERT INTO student VALUES(1, 'Jack', 'Biology');

SELECT * FROM student;

-- view complete warning
SHOW WARNINGS;

INSERT INTO student(name, major) VALUES('Kate', 'Sociology');
INSERT INTO student(name, major) VALUES('Claire', 'Chemistry');
INSERT INTO student(name, major) VALUES('Claire', 'Chemistry');
INSERT INTO student(name, major) VALUES('Claire', 'Chemistry');

DROP TABLE student;

-- constraints
NOT NULL --cannot be null
AUTO_INCREMENT --automatically incremented

UPDATE student SET major = 'Bio' WHERE major = 'Biology';
UPDATE student SET major = 'Biochemistry' WHERE major = 'Bio' OR major='Chemistry';
UPDATE student SET major = 'undecided', name = 'Tom' WHERE student_id = 1;
UPDATE student SET major = 'undecided';

DELETE FROM student WHERE id < 3;
DELETE FROM student WHERE id = 3 AND major = 'undecided';

-- Queries
SELECT name FROM student;
SELECT name FROM student WHERE id = 1;

SELECT * FROM student WHERE major = 'Biology';
SELECT student.name, student.major FROM student;
SELECT student.name, student.major FROM student ORDER BY name;
SELECT student.name, student.major FROM student ORDER BY name DESC;
SELECT * FROM student ORDER BY id DECS LIMIT 2;
SELECT DISTINCT major FROM student; --return only distinct values
SELECT * FROM student WHERE name IN ('Jack', 'Mike');