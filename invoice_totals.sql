SELECT i.Total "Invoice Total", c.FirstName "Customer First Name", c.LastName 
    "Customer Last Name", c.Country "Customer Country", e.LastName "Sales Agent Last Name", 
    e.FirstName "Sales Agent First Name"
FROM Customer c, Employee e, Invoice i
WHERE e.EmployeeId = c.SupportRepId
AND c.CustomerId = i.CustomerId