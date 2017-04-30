SELECT t.Name "Track Name", a.Title "Album Title", mt.Name "Media Type", g.name "Genre"
FROM Track t, Album a, MediaType mt, Genre g
WHERE t.AlbumId = a.AlbumId
AND t.MediaTypeId = mt.MediaTypeId
AND t.GenreId = g.GenreId