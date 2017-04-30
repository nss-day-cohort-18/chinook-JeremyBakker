SELECT mt.Name "Name", COUNT(il.InvoiceLineId) "Number Sold"
FROM MediaType mt
LEFT JOIN Track t
ON mt.MediaTypeId = t.MediaTypeId
INNER JOIN InvoiceLine il
ON t.TrackId = il.TrackId
GROUP BY mt.Name
ORDER BY "Number Sold" DESC