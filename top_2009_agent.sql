SELECT aggregateData.LastName "Sales Agent Last Name", aggregateData.FirstName "Sales Agent First Name", 
    Max(aggregateData.sumTotal) "2009 Total Sales"
FROM (SELECT e.LastName as LastName, e.FirstName as FirstName, c.CustomerId, SUM(i.Total) as sumTotal
FROM Employee e
INNER JOIN Customer c
ON e.EmployeeId = c.SupportRepId
LEFT JOIN Invoice i
ON c.CustomerId = i.CustomerId
WHERE i.InvoiceDate BETWEEN '2009-01-01 00:00:00' and '2009-12-31 11:59:59'
GROUP BY e.LastName) as aggregateData