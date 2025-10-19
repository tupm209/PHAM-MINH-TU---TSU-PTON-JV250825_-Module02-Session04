CREATE SCHEMA ss4_hw06;
USE ss4_hw06;

CREATE TABLE Suppliers (
	`supplierId` INT PRIMARY KEY,
    `supplierName` VARCHAR (100) NOT NULL,
    `contactEmail` VARCHAR (100) NOT NULL
);

CREATE TABLE Products (
	`productId` INT PRIMARY KEY,
    `productName` VARCHAR (100) NOT NULL,
    `supplierId` INT,
    `price` DEC (10, 2) NOT NULL,
    `stock` INT NOT NULL,
    FOREIGN KEY (supplierId) REFERENCES Suppliers(supplierId)
);

INSERT INTO Suppliers VALUES (1, "Nha cung cap A", "a111@gmail.com");
INSERT INTO Suppliers VALUES (2, "Nha cung cap B", "b111@gmail.com");
INSERT INTO Suppliers VALUES (3, "Nha cung cap C", "c111@gmail.com");

INSERT INTO Products VALUES (1, "Giay the thao", 1, 39.20, 100);
INSERT INTO Products VALUES (2, "Quan ao the thao", 1, 20.45, 200);
INSERT INTO Products VALUES (3, "Ao vest", 2, 100.50, 50);
INSERT INTO Products VALUES (4, "Kinh thoi trang", 3, 10.20, 150);

UPDATE Products SET `price` = 45.99 WHERE `productId` = 2;
UPDATE Suppliers SET `supplierName` = "Nha cung cap so 1" WHERE `supplierId` = 2;

DELETE FROM Products WHERE `supplierId` = 3;
DELETE FROM Suppliers WHERE `supplierId` = 3;
DELETE FROM Products WHERE `productId` = 4;

SELECT
	p.productId,
    s.supplierName,
    p.productName,
    p.price,
    p.stock
FROM Products p
JOIN Suppliers s ON s.supplierId = p.supplierId;

    