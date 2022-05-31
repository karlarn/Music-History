
SELECT
*
FROM Genre

SELECT 
*
FROM Artist
ORDER BY ArtistName

SELECT 
s.Title,
a.ArtistName
From Song s
LEFT JOIN Artist a on s.ArtistId=a.Id

SELECT 
a.ArtistName,
l.Title,
g.Name
FROM Album l
LEFT JOIN Artist a on l.ArtistId=a.Id
LEFT JOIN Genre g on l.GenreId=g.Id
where 
g.Name='Soul';

SELECT 
a.ArtistName,
l.Title,
g.Name
FROM Album l
LEFT JOIN Artist a on l.ArtistId=a.Id
LEFT JOIN Genre g on l.GenreId=g.Id
WHERE
g.name='Jazz' OR g.Name='Rock';

SELECT 
a.Title
FROM Album a
LEFT JOIN Song s on s.AlbumId=a.id
WHERE s.Id is NULL;

--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Goo', 2001);

--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('The Gooey Album', '11/14/2003', 4242, 'Def Jam', 28, 13);

--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Dirt Off Your Shoulder', 851, '12/03/1982', 13, 28, 23);

SELECT 
r.Title,
s.Title,
a.ArtistName
FROM Song s
LEFT JOIN Album r on s.AlbumId=r.Id
LEFT JOIN Artist a on s.ArtistId=a.Id
WHERE s.Title='Goo Off Your Shoulder';

SELECT AlbumId, COUNT(s.Id) AS NumSongs
FROM Song s
GROUP BY s.AlbumId;

SELECT ArtistId, COUNT(s.Id) AS NumSongs
FROM Song s
GROUP BY s.ArtistId;

SELECT GenreId, COUNT(s.Id) AS NumSongs
FROM Song s
GROUP BY s.GenreId;

