SELECT e.LastName "Sales Agent Last Name", e.FirstName "Sales Agent First Name", 
    COUNT(c.CustomerId) "Number of Assigned Customers"
FROM Employee e
INNER JOIN Customer c
ON e.EmployeeId = c.SupportRepId
GROUP BY e.LastName