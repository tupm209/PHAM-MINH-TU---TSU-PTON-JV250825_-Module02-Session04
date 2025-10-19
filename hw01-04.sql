CREATE SCHEMA ss4_hw01;
USE ss4_hw01;

CREATE TABLE Students (
	`studentId` INT PRIMARY KEY,
    `name` VARCHAR (50) NOT NULL,
    `age` INT NOT NULL,
    `major` VARCHAR (50)
);


INSERT INTO Students VALUES (1, "Alice", 20, "Computer Science");
INSERT INTO Students VALUES (2, "Bob", 22, "Mathematics");
INSERT INTO Students VALUES (3, "Charlie", 21, "Physics");

UPDATE Students SET `age` = 23 WHERE `studentId` = 2;

DELETE FROM Students WHERE studentId = 1;

INSERT INTO Students VALUES (1, "Alice", 20, "Computer Science");
SELECT * FROM Students;
