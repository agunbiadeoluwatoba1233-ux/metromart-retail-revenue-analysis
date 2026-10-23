DROP DATABASE IF EXISTS emmanuel_data_analysis;
CREATE DATABASE emmanuel_data_analysis;
USE emmanuel_data_analysis;







CREATE TABLE transactions (
     TransactionID INT PRIMARY KEY,
     TransactionDate DATE,
     Category VARCHAR(50),
     PaymentMethod VARCHAR(50),
     UnitsSold INT,
     UnitsPrice DECIMAL(10,2),
     Discount DECIMAL(4,2),
     TotalRevenue DECIMAL(10,2),
     Profit DECIMAL(10,2)
);

INSERT INTO transactions (
TransactionID, TransactionDate, Category, PaymentMethod,
UnitsSold, UnitsPrice, Discount, TotalRevenue, Profit
) VALUES
(101, '2026-01-05', 'Electronics', 'Credit Card', 2, 120.00, 0.10, 216.00, 45.00),
(102, '2026-01-06', 'Home & Kitchen', 'Cash', 1, 45.00, 0.00, 45.00, 12.50),
(103, '2026-01-08', 'Apparel', 'Bank Transfer', 4, 25.00, 0.15, 85.00, 20.00),
(104, '2026-01-10', 'Electronics', 'Credit Card', 1, 350.00, 0.05, 332.50, 80.00),
(105, '2026-01-12', 'Home & Kitchen', 'Mobile Money', 3, 30.00, 0.00, 90.00, 28.00),
(106, '2026-01-15', 'Apparel', 'Cash', 2, 60.00, 0.20, 96.00, 18.00),
(107, '2026-01-18', 'Electronics', 'Bank Transfer', 1, 500.00, 0.10, 450.00, 110.00),
(108, '2026-01-20', 'Groceries', 'Mobile Money', 10, 8.50, 0.00, 85.00, 15.00),
(109, '2026-01-22', 'Groceries', 'Cash', 6, 12.00, 0.05, 68.40, 11.20),
(110, '2026-01-25', 'Apparel', 'Credit Card', 3, 40.00, 0.10, 108.00, 26.00);

