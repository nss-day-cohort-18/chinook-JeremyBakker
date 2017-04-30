SELECT c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM Invoice i, Customer c
WHERE c.Country = "Brazil"
AND c.CustomerId = i.CustomerId