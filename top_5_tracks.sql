SELECT t.Name, il.TrackId, COUNT(il.TrackId) as Count
FROM InvoiceLine as il
LEFT JOIN Track t
ON t.TrackId = il.TrackId
GROUP BY t.Name
ORDER BY Count DESC
LIMIT 5
