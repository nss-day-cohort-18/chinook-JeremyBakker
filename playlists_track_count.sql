SELECT  p.name "Playlist Name", COUNT(pt.TrackId) "Number of Tracks"
FROM Playlist p 
LEFT JOIN PlaylistTrack pt
ON p.PlaylistId = pt.PlaylistId
GROUP BY p.PlaylistId