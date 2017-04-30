SELECT SUM (i.Total) "2009 Total Sales"
FROM Invoice i
WHERE i.InvoiceDate BETWEEN '2009-01-01 00:00:00' and '2009-12-31 11:59:59' 

SELECT SUM (i.Total) "2011 Total Sales"
FROM Invoice i
WHERE i.InvoiceDate BETWEEN '2011-01-01 00:00:00' and '2011-12-31 11:59:59' 