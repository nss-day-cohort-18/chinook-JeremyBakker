SELECT l.InvoiceLineId, t.Name "Track Name", art.Name "Artist Name"
FROM InvoiceLine l, Track t, Album a, Artist art
WHERE l.TrackId = t.TrackId
AND t.AlbumId = a.AlbumId
AND a.ArtistId = art.ArtistId
ORDER BY l.InvoiceLineId