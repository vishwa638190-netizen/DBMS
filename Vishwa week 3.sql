USE MEDICARE;

CREATE TABLE Seller
(
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);

INSERT INTO Seller VALUES
(201, "MEDI PHARMA", "9876101001", "medipharma@gmail.com", "Chennai"),
(202, "HEALTH CARE PHARMA", "9876101002", "healthcarepharma@gmail.com", "Madurai"),
(203, "LIFE MEDICINES", "9876101003", "lifemedicines@gmail.com", "Coimbatore"),
(204, "CARE PHARMA", "9876101004", "carepharma@gmail.com", "Salem"),
(205, "MEDI PLUS", "9876101005", "mediplus@gmail.com", "Trichy"),
(206, "HEALTH FIRST", "9876101006", "healthfirst@gmail.com", "Chennai"),
(207, "MEDI WORLD", "9876101007", "mediworld@gmail.com", "Madurai"),
(208, "PHARMA POINT", "9876101008", "pharmapoint@gmail.com", "Coimbatore"),
(209, "HEALTH HUB", "9876101009", "healthhub@gmail.com", "Salem"),
(210, "MEDI CARE", "9876101010", "medicarestore@gmail.com", "Trichy"),
(211, "PHARMA MART", "9876101011", "pharmamart@gmail.com", "Chennai"),
(212, "HEALTH MART", "9876101012", "healthmart@gmail.com", "Madurai"),
(213, "MEDI ZONE", "9876101013", "medizone@gmail.com", "Coimbatore"),
(214, "CARE PLUS", "9876101014", "careplus@gmail.com", "Salem"),
(215, "PHARMA WORLD", "9876101015", "pharmaworld@gmail.com", "Trichy"),
(216, "MEDI HOUSE", "9876101016", "medihouse@gmail.com", "Chennai"),
(217, "HEALTH WORLD", "9876101017", "healthworld@gmail.com", "Madurai"),
(218, "LIFE CARE PHARMA", "9876101018", "lifecarepharma@gmail.com", "Coimbatore"),
(219, "MEDI STORE", "9876101019", "medistore@gmail.com", "Salem"),
(220, "GOOD HEALTH PHARMA", "9876101020", "goodhealthpharma@gmail.com", "Trichy"),
(221, "MEDI MART", "9876101021", "medimart@gmail.com", "Chennai"),
(222, "HEALTH PLUS", "9876101022", "healthplus@gmail.com", "Madurai"),
(223, "PHARMA CARE", "9876101023", "pharmacare@gmail.com", "Coimbatore"),
(224, "MEDI EXPRESS", "9876101024", "mediexpress@gmail.com", "Salem"),
(225, "BEST MEDI PHARMA", "9876101025", "bestmedipharma@gmail.com", "Trichy"),
(226, "MEDI WORLD PLUS", "9876101026", "mediworldplus@gmail.com", "Chennai"),
(227, "HEALTH CARE PLUS", "9876101027", "healthcareplus@gmail.com", "Madurai"),
(228, "PHARMA HUB", "9876101028", "pharmahub@gmail.com", "Coimbatore"),
(229, "MEDI CARE PLUS", "9876101029", "medicareplus@gmail.com", "Salem"),
(230, "LIFE PHARMA", "9876101030", "lifepharma@gmail.com", "Trichy");

SELECT * FROM Seller;


CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    MedicineID INT,
    SellerID INT,
    AvailabilityStatus VARCHAR(20),
    Stock INT,

    FOREIGN KEY (MedicineID)
    REFERENCES Medicine(MedicineID),

    FOREIGN KEY (SellerID)
    REFERENCES Seller(SellerID)
);

INSERT INTO Inventory VALUES
(301, 101, 201, "AVAILABLE", 120),
(302, 102, 202, "AVAILABLE", 80),
(303, 103, 203, "AVAILABLE", 75),
(304, 104, 204, "AVAILABLE", 70),
(305, 105, 205, "UNAVAILABLE", 0),
(306, 106, 206, "AVAILABLE", 60),
(307, 107, 207, "AVAILABLE", 75),
(308, 109, 209, "AVAILABLE", 55),
(309, 110, 210, "AVAILABLE", 65),
(310, 111, 211, "AVAILABLE", 80),
(311, 112, 212, "AVAILABLE", 70),
(312, 113, 213, "AVAILABLE", 60),
(313, 114, 214, "AVAILABLE", 65),
(314, 115, 215, "AVAILABLE", 55),
(315, 116, 216, "AVAILABLE", 75),
(316, 117, 217, "AVAILABLE", 60),
(317, 118, 218, "AVAILABLE", 70),
(318, 119, 219, "AVAILABLE", 50),
(319, 120, 220, "AVAILABLE", 100),
(320, 126, 226, "AVAILABLE", 100),
(321, 127, 227, "AVAILABLE", 75),
(322, 128, 228, "AVAILABLE", 65),
(323, 129, 229, "AVAILABLE", 80),
(324, 130, 230, "AVAILABLE", 30);

SELECT * FROM Inventory;
SELECT * FROM Seller;
SELECT * FROM Medicine;


UPDATE Inventory
SET Stock = 35,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 305;

SELECT * FROM Inventory
WHERE InventoryID = 305;


UPDATE Inventory
SET Stock = 0,
    AvailabilityStatus = "UNAVAILABLE"
WHERE InventoryID = 313;

SELECT * FROM Inventory
WHERE InventoryID = 313;


UPDATE Inventory
SET Stock = 65,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 302;

SELECT * FROM Inventory
WHERE InventoryID = 302;


UPDATE Seller
SET ContactNo = "9867543210"
WHERE SellerID = 208;

SELECT * FROM Seller
WHERE SellerID = 208;


DELETE FROM Inventory
WHERE InventoryID = 323;

SELECT * FROM Inventory;


SELECT * FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";

SELECT * FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";


SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";

SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";


SELECT * FROM Inventory
ORDER BY Stock DESC;


SELECT * FROM Inventory;
SELECT * FROM Seller;


DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Seller;