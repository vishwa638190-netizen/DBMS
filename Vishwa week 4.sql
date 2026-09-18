USE MEDICARE;

CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    MedicineID INT,
    Qty INT,
    TotalAmt DECIMAL(10,2),
    OrderStatus VARCHAR(20),
    FOREIGN KEY (MedicineID)
    REFERENCES Medicine(MedicineID)
);

CREATE TABLE Order_Details
(
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    MedicineID INT,
    Qty INT,
    UnitPrice DECIMAL(10,2),
    FOREIGN KEY (OrderID)
    REFERENCES Orders(OrderID),
    FOREIGN KEY (MedicineID)
    REFERENCES Medicine(MedicineID)
);

INSERT INTO Orders VALUES
(401, 'VISHWA', 101, 2, 70, 'PENDING'),
(402, 'SIVA', 103, 1, 60, 'DELIVERED'),
(403, 'MANOJ', 111, 2, 300, 'DELIVERED'),
(404, 'GOKUL', 126, 1, 50, 'PENDING'),
(405, 'ROHITH', 105, 3, 360, 'PENDING'),
(406, 'AMRITH', 102, 1, 45, 'PENDING'),
(407, 'LUCAS', 104, 2, 100, 'DELIVERED'),
(408, 'PARE', 106, 1, 110, 'PENDING');

INSERT INTO Order_Details VALUES
(501, 401, 101, 2, 35),
(502, 402, 103, 1, 60),
(503, 403, 111, 2, 150),
(504, 404, 126, 1, 50),
(505, 405, 105, 3, 120),
(506, 406, 102, 1, 45),
(507, 407, 104, 2, 50),
(508, 408, 106, 1, 110);
SELECT * FROM Orders;

SELECT * FROM Order_Details;

UPDATE Orders
SET OrderStatus = "Shipped"
WHERE OrderID = 402;

UPDATE Orders
SET OrderStatus = "Delivered"
WHERE OrderID = 403;

SELECT * FROM Orders
ORDER BY CustomerName;

SELECT * FROM Orders
WHERE CustomerName = "RAJEE"
ORDER BY OrderID;

SELECT * FROM Orders
WHERE OrderStatus = "Pending";

SELECT * FROM Orders
WHERE OrderStatus = "Shipped";

SELECT * FROM Orders
WHERE OrderStatus = "Delivered";

SELECT CustomerName, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerName;

SELECT CustomerName, SUM(TotalAmt) AS TotalAmountSpent
FROM Orders
GROUP BY CustomerName;

DROP TABLE IF EXISTS Order_Details;
DROP TABLE IF EXISTS Orders;