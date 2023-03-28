--Создание базы данных «TravelAgency»:

CREATE DATABASE TravelAgency;

--Создание таблицы Страны:
CREATE TABLE Country
(
	  ID_Country INT PRIMARY KEY
	, Country NVARCHAR(30) NOT NULL UNIQUE
);

--Создание таблицы Города:
CREATE TABLE City
(
	  ID_City INT PRIMARY KEY
    , ID_Country INT FOREIGN KEY REFERENCES Country(ID_Country)
	, City NVARCHAR(30) NOT NULL UNIQUE
);

--Создание таблицы Типы отдыха:
CREATE TABLE [Type]
(
	  ID_Type INT PRIMARY KEY
	, Type NVARCHAR(30) NOT NULL UNIQUE
);

--Создание таблицы Клиенты:
CREATE TABLE Person
(
	  ID INT PRIMARY KEY
	, FullName NVARCHAR(100) NOT NULL
);

--Создание таблицы Путёвки:
CREATE TABLE Trip
(
	  ID_Trip INT PRIMARY KEY
	, ID_Country INT FOREIGN KEY REFERENCES Country(ID_Country)
	, ID_City INT FOREIGN KEY REFERENCES City (ID_City)
	, ID_Type INT FOREIGN KEY REFERENCES Type (ID_Type)
	, ID_Person INT FOREIGN KEY REFERENCES Person (ID)
	, Price DECIMAL
	, [Data] DATE
);