SELECT COUNT (InvoiceId) "Number of 2009 Invoices"
FROM Invoice i
WHERE i.InvoiceDate BETWEEN '2009-01-01 00:00:00' and '2009-12-31 11:59:59' 

SELECT COUNT (InvoiceId) "Number of 2011 Invoices"
FROM Invoice i
WHERE i.InvoiceDate LIKE '%2011%' 