CREATE TABLE Courses (
    CourseID NUMBER(5) PRIMARY KEY,
    CourseName VARCHAR2(50),
    Credits NUMBER(2),
    TeacherID NUMBER(5),
    Department VARCHAR2(50)
);
INSERT INTO Courses(CourseID, CourseName, Credits, TeacherID, Department)
VALUES (201, 'Mathematics', 3, 101, 'Science');

INSERT INTO Courses(CourseID, CourseName, Credits, TeacherID, Department)
VALUES (202, 'Physics', 4, 102, 'Science');

INSERT INTO Courses(CourseID, CourseName, Credits, TeacherID, Department)
VALUES (205, 'Computer Science', 3, 107, 'IT');

INSERT INTO Courses(CourseID, CourseName, Credits, TeacherID, Department)
VALUES (211, 'English Literature', 2, 123, 'Arts');

INSERT INTO Courses(CourseID, CourseName, Credits, TeacherID, Department)
VALUES (212, 'Chemistry', 4, 130, 'Science');

ALTER TABLE Courses
RENAME COLUMN CourseName TO Subject;

ALTER TABLE Courses
RENAME TO Faculty;

SELECT Credits FROM Faculty ORDER BY Credits DESC;

DROP TABLE Faculty;

FLASHBACK TABLE Faculty TO BEFORE DROP;

SELECT * FROM Faculty