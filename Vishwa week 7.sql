USE MEDICARE;


SELECT * FROM Category;
SELECT DISTINCT CategoryName FROM Category;
SELECT * FROM Category WHERE Category < 4;
SELECT * FROM Category ORDER BY Category;


SELECT * FROM Medicine;
SELECT DISTINCT Category FROM Medicine;
SELECT * FROM Medicine WHERE Price < 100;
SELECT * FROM Medicine ORDER BY Stock;


SELECT * FROM Seller;
SELECT DISTINCT Address FROM Seller;
SELECT * FROM Seller WHERE SellerID BETWEEN 220 AND 225;
SELECT * FROM Seller ORDER BY Address DESC;


SELECT * FROM Inventory;
SELECT DISTINCT AvailabilityStatus FROM Inventory;
SELECT * FROM Inventory WHERE Stock >= 75;
SELECT * FROM Inventory ORDER BY InventoryID;


SELECT * FROM Orders;
SELECT DISTINCT OrderStatus FROM Orders;
SELECT * FROM Orders WHERE OrderStatus = 'PENDING';
SELECT * FROM Orders ORDER BY OrderID DESC;


SELECT * FROM Order_Details;
SELECT DISTINCT MedicineID FROM Order_Details;
SELECT * FROM Order_Details WHERE Qty = 1;
SELECT * FROM Order_Details ORDER BY UnitPrice;


SELECT * FROM Payment;
SELECT DISTINCT PaymentMode FROM Payment;
SELECT * FROM Payment WHERE PaymentMode = 'CASH';
SELECT * FROM Payment ORDER BY PaymentID DESC;


SELECT * FROM Review;
SELECT DISTINCT CustomerName FROM Review;
SELECT * FROM Review WHERE ReviewText LIKE '%Very%';
SELECT * FROM Review ORDER BY ReviewID;


SELECT * FROM Rating;
SELECT DISTINCT Rating FROM Rating;
SELECT * FROM Rating WHERE Rating = 5;
SELECT * FROM Rating ORDER BY Rating DESC;