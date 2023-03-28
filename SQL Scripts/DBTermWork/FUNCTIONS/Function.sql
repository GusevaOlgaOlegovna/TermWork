--Функция (FindTrip) Путёвки (просмотр путёвок в определённом городе):

CREATE FUNCTION FindTrip( @City VARCHAR(30))
RETURNS TABLE AS RETURN
SELECT Country, City, [Type], Price, Data
FROM Trip, Country, City, [Type]
WHERE Trip.ID_City = City.ID_City
AND Trip.ID_Country = Country.ID_Country
AND Trip.ID_Type = Type.ID_Type
AND City = @City;