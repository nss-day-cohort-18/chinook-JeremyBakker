SELECT e.LastName "Employee Last Name", e.FirstName "Employee First Name", c.CustomerId "Customer ID", i.InvoiceId "Invoice ID", SUM(i.Total) "Total Sales"
FROM Employee e, Customer c, Invoice i
WHERE e.EmployeeId = c.SupportRepId
AND c.CustomerId = i.CustomerId
GROUP BY e.LastName

SELECT e.LastName "Employee Last Name", e.FirstName "Employee First Name", c.CustomerId "Customer ID", i.InvoiceId "Invoice ID", SUM(i.Total) "Total Sales"
FROM Employee e
LEFT JOIN Customer c 
ON e.EmployeeId = c.SupportRepID
LEFT JOIN Invoice i
ON c.CustomerId = i.CustomerId
GROUP BY e.LastName