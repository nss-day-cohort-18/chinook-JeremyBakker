SELECT ar.Name "Artist", COUNT(il.InvoiceLineId) "Sales Count"
FROM Artist ar
LEFT JOIN Album al
ON ar.ArtistId = al.ArtistId
LEFT JOIN Track t
ON al.AlbumId = t.AlbumId
INNER JOIN InvoiceLine il
ON t.TrackId = il.TrackId
GROUP BY ar.Name
ORDER BY "Sales Count" DESC
LIMIT 3