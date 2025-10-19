CREATE SCHEMA ss4_hw07;
USE ss4_hw07;

CREATE TABLE Customers (
	`customerId` INT PRIMARY KEY,
    `name` VARCHAR (50) NOT NULL,
    `email` VARCHAR (50) NOT NULL,
    `joinDate` DATE
);

CREATE TABLE Orders(
	`orderId` INT PRIMARY KEY,
    `customerId` INT NOT NULL,
    `orderDate` DATE,
    `totalAmount` DEC (10, 2) NOT NULL
);

INSERT INTO Customers VALUES (1, "Nguyen Van A", "nva@gmail.com", "2023-12-01");
INSERT INTO Customers VALUES (2, "Tran Van B", "tbv@gmail.com", "2024-02-05");
INSERT INTO Customers VALUES (3, "Le Thi C", "ltc@gmail.com", "2025-03-20");
INSERT INTO Customers VALUES (4, "Ngo Van D", "nvd@gmail.com", "2025-05-10");

INSERT INTO Orders VALUES (1, 3, "2025-03-21", 3000);
INSERT INTO Orders VALUES (2, 1, "2023-12-05", 2000);
INSERT INTO Orders VALUES (3, 3, "2025-04-10", 1500);
INSERT INTO Orders VALUES (4, 2, "2024-02-06", 4500);
INSERT INTO Orders VALUES (5, 2, "2024-03-19", 1500);

UPDATE Orders SET `totalAmount` = 350 WHERE `orderId` = 3;
UPDATE Customers SET `email` = "tbv123@gmail.com" WHERE `customerId` = 2;

DELETE FROM Customers WHERE `customerId` = 4;
DELETE FROM Orders WHERE `orderId` = 1;

SELECT
	o.orderId,
	c.`name`,
    o.customerId,
    o.orderDate,
    o.totalAmount
FROM Customers c
JOIN Orders o ON c.customerId = O.customerId;

SELECT 
	customerId,
	SUM(totalAmount) AS totalAmount
FROM Orders
GROUP BY customerId
ORDER BY customerId ASC;