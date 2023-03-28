--Процедура (TopTypes) Топ видов (просмотр самых популярных путёвок по виду отдыха):

CREATE PROCEDURE TopTypes AS
BEGIN
SELECT * FROM
(
	SELECT Type, COUNT(*) AS TripsCount
	FROM Trip,Type WHERE Trip.ID_Type=Type.ID_Type
	GROUP BY Trip.ID_Type, Type
)AS counts
WHERE TripsCount=
(
	SELECT TOP 1 COUNT(*)
	FROM Trip
	GROUP BY ID_Type
	ORDER BY COUNT(*)DESC
)
END;