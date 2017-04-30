SELECT e.LastName, e.FirstName, i.InvoiceId
FROM Employee e, Invoice i, Customer c
WHERE e.EmployeeId = c.SupportRepId 
AND c.CustomerId = i.CustomerId
ORDER BY e.LastName