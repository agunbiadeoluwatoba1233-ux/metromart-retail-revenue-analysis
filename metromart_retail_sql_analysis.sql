SELECT 
	COUNT(TransactionID) AS TotalOrders,
    CONCAT('$', FORMAT(SUM(TotalRevenue), 2)) AS storeTotalRenenue,
    CONCAT('$', FORMAT(SUM(profit), 2)) AS StoreTotalProfit,
    CONCAT(ROUND((SUM(PROFIT) / SUM(TotalRevenue)) * 100, 2), '%') AS OverallProfitMargin
FROM emmanuel_data_analysis.transactions;

SELECT 
    Category,
    COUNT(TransactionID) AS TotalOrders,
    CONCAT('$', FORMAT(SUM(TotalRevenue), 2)) AS TotalRenenue,
    CONCAT('$', FORMAT(SUM(profit), 2)) AS TotalProfit,
    CONCAT(ROUND((SUM(PROFIT) / SUM(TotalRevenue)) * 100, 2), '%') AS ProfitMargin
FROM emmanuel_data_analysis.transactions
GROUP BY category
ORDER BY SUM(TotalRevenue) DESC;

SELECT 
    PaymentMethod,
    COUNT(TransactionID) AS Transactioncount,
    CONCAT('$', FORMAT(SUM(TotalRevenue), 2)) AS Totalturnover,
    CONCAT('$', FORMAT(AVG(TotalRevenue), 2)) AS Avgrevenue,
    CONCAT(ROUND((SUM(PROFIT) / SUM(TotalRevenue)) * 100, 2), '%') AS ProfitMargin
FROM emmanuel_data_analysis.transactions
GROUP BY PaymentMethod
ORDER BY AVG(TotalRevenue) DESC;

SELECT 
    TransactionID,
    TransactionDate,
    Category,
    PaymentMethod,
    CONCAT('$', FORMAT(UnitsPrice, 2)) AS Unitprice,
    UnitsSold,
    CONCAT(ROUND(Discount * 100, 0), '%') AS DiscountApplied,
    CONCAT('$', FORMAT(TotalRevenue, 2)) AS Totalrevenue,
	CONCAT('$', FORMAT(Profit, 2)) AS Netprofit
FROM emmanuel_data_analysis.transactions
WHERE TotalRevenue > 100.00
ORDER BY TotalRevenue DESC;