CREATE SCHEMA ss4_hw05;
USE ss4_hw05;

CREATE TABLE Students (
	`studentId` INT PRIMARY KEY,
    `studentName` VARCHAR (50) NOT NULL,
    `major` VARCHAR (50) NOT NULL
);

CREATE TABLE Courses (
	`courseId` INT PRIMARY KEY,
    `courseName` VARCHAR (100) NOT NULL,
    `instructor` VARCHAR (50) NOT NULL
);

INSERT INTO Students VALUES (1, "Nguyen Van A", "Computer Science");
INSERT INTO Students VALUES (2, "Tran Thi B", "Business Management");
INSERT INTO Students VALUES (3, "Le Van C", "English Literature");
INSERT INTO Students VALUES (4, "Dinh Thi D", "Biology");

INSERT INTO Courses VALUES (1, "Alan Walker", "Programming");
INSERT INTO Courses VALUES (2, "Bill Gate", "Marketing");
INSERT INTO Courses VALUES (3, "Son Tung", "British Literature");

UPDATE Courses SET `courseName` = "Advanced Mathematics" WHERE `courseId` = 2;
UPDATE Students SET `major` = "Engineering" WHERE `studentId` = 3;

DELETE FROM Students WHERE `studentId` = 1;
DELETE FROM Courses WHERE `courseId` = 3;

SELECT * FROM Students;
SELECT * FROM Courses;