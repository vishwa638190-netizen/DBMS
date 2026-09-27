USE MEDICARE;
CREATE TABLE Review
(
    ReviewID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ProductID INT,
    ReviewText VARCHAR(255),
    ReviewDate DATE,
    FOREIGN KEY (ProductID)
    REFERENCES Medicine(MedicineID)
);

CREATE TABLE Rating
(
    RatingID INT PRIMARY KEY,
    ReviewID INT,
    Rating INT,
    FOREIGN KEY (ReviewID)
    REFERENCES Review(ReviewID)
);

INSERT INTO Review VALUES
(701, 'VISHWA', 101, 'Good quality', '2026-09-10'),
(702, 'SIVA', 103, 'Very useful product', '2026-09-11'),
(703, 'MANOJ', 111, 'Good vitamin tablets', '2026-09-12'),
(704, 'GOKUL', 126, 'Good quality bandage', '2026-09-13'),
(705, 'ROHITH', 105, 'Average quality', '2026-09-14'),
(706, 'AMRITH', 102, 'Very good product', '2026-09-15'),
(707, 'LUCAS', 104, 'Good for headache', '2026-09-16'),
(708, 'PARE', 106, 'Effective cough syrup', '2026-09-17');

-- 4. Insert ratings
INSERT INTO Rating VALUES
(801, 701, 5),
(802, 702, 4),
(803, 703, 5),
(804, 704, 4),
(805, 705, 3),
(806, 706, 5),
(807, 707, 4),
(808, 708, 5);

SELECT * FROM Review;
SELECT * FROM Rating;

SELECT * FROM Review
WHERE CustomerName = 'VISHWA';

SELECT ReviewID, Rating
FROM Rating
WHERE Rating = 5;

SELECT * FROM Review
WHERE ReviewDate > '2026-09-12';

UPDATE Review
SET ReviewText = 'Excellent quality'
WHERE ReviewID = 705;

UPDATE Rating
SET Rating = 4
WHERE RatingID = 805;

SELECT * FROM Rating
WHERE Rating > 3;

SELECT COUNT(*) AS TotalReviews
FROM Review;

SELECT AVG(Rating) AS AverageRating
FROM Rating;

SELECT * FROM Rating
ORDER BY Rating DESC;