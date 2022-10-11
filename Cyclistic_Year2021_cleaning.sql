--Convert necessary data types so that columns started_at, ended_at, and ride_length are datetime; start_lat, start_lng, end_lat, and end_lng
--are float; and all other columns are nvarchar.

--Jan
ALTER TABLE [dbo].[Jan_2021]
ALTER COLUMN [day_of_week] nvarchar(50)

ALTER TABLE [dbo].[Jan_2021]
ALTER COLUMN [start_station_id] nvarchar(50)

--Double check column types to see if they have changed using column drop down under the table [dbo].[Jan_2021]. Repeat after each conversion.

--Convert all other tables for consistency.

--Feb
Alter Table [dbo].[Feb_2021]
ALTER COLUMN [start_station_id] nvarchar(255)

Alter Table [dbo].[Feb_2021]
ALTER COLUMN [day_of_week] nvarchar(50)
--March
Alter Table [dbo].[March_2021]
ALTER COLUMN [start_station_id] nvarchar(255)

Alter Table [dbo].[March_2021]
ALTER COLUMN [day_of_week] nvarchar(50)
--April
Alter Table [dbo].[April_2021]
ALTER COLUMN [end_station_id] nvarchar(255)

Alter Table [dbo].[April_2021]
ALTER COLUMN [day_of_week] nvarchar(50)
--May
Alter Table [dbo].[May_2021]
ALTER COLUMN [day_of_week] nvarchar(50)
--June
Alter Table [dbo].[June_2021]
ALTER COLUMN [day_of_week] nvarchar(50)
--July
Alter Table [dbo].[July_2021]
ALTER COLUMN [day_of_week] nvarchar(50)

Alter Table [dbo].[July_2021]
ALTER COLUMN [start_station_id] nvarchar(255)

Alter Table [dbo].[July_2021]
ALTER COLUMN [end_station_id] nvarchar(255)
--Aug
Alter Table [dbo].[Aug_2021]
ALTER COLUMN [day_of_week] nvarchar(50)
--Sept
Alter Table [dbo].[Sept_2021]
ALTER COLUMN [day_of_week] nvarchar(50)
--Oct
Alter Table [dbo].[Oct_2021]
ALTER COLUMN [day_of_week] nvarchar(50)
--Nov
Alter Table [dbo].[Nov_2021]
ALTER COLUMN [start_station_id] nvarchar(255)

Alter Table [dbo].[Nov_2021]
ALTER COLUMN [day_of_week] nvarchar(50)
--Dec
Alter Table [dbo].[Dec_2021]
ALTER COLUMN [day_of_week] nvarchar(50)

--Combine all tables into one.
SELECT *
FROM [dbo].[Jan_2021]
UNION ALL
SELECT *
FROM [dbo].[Feb_2021]
UNION ALL
SELECT *
FROM [dbo].[March_2021]
UNION ALL
SELECT *
FROM [dbo].[April_2021]
UNION ALL
SELECT *
FROM [dbo].[May_2021]
UNION ALL
SELECT *
FROM [dbo].[June_2021]
UNION ALL
SELECT *
FROM [dbo].[July_2021]
UNION ALL
SELECT *
FROM [dbo].[Aug_2021]
UNION ALL
SELECT *
FROM [dbo].[Sept_2021]
UNION ALL
SELECT *
FROM [dbo].[Oct_2021]
UNION ALL
SELECT *
FROM [dbo].[Nov_2021]
UNION ALL
SELECT *
FROM [dbo].[Dec_2021]

--Make Table for year.
Create Table Cyclistic_Year2021
(
ride_id nvarchar(255),
rideable_type nvarchar(255),
started_at datetime,
ended_at datetime,
start_station_name nvarchar(255),
start_station_id nvarchar(255),
end_station_name nvarchar(255),
end_station_id nvarchar(255),
start_lat float,
start_lng float,
end_lat float,
end_lng float,
member_casual nvarchar(255),
ride_length datetime,
day_of_week nvarchar(255)
)

INSERT INTO Cyclistic_Year2021
SELECT *
FROM [dbo].[Jan_2021]
UNION ALL
SELECT *
FROM [dbo].[Feb_2021]
UNION ALL
SELECT *
FROM [dbo].[March_2021]
UNION ALL
SELECT *
FROM [dbo].[April_2021]
UNION ALL
SELECT *
FROM [dbo].[May_2021]
UNION ALL
SELECT *
FROM [dbo].[June_2021]
UNION ALL
SELECT *
FROM [dbo].[July_2021]
UNION ALL
SELECT *
FROM [dbo].[Aug_2021]
UNION ALL
SELECT *
FROM [dbo].[Sept_2021]
UNION ALL
SELECT *
FROM [dbo].[Oct_2021]
UNION ALL
SELECT *
FROM [dbo].[Nov_2021]
UNION ALL
SELECT *
FROM [dbo].[Dec_2021]

--Double check new table for accuracy.

SELECT TOP (50) *
FROM [dbo].[Cyclistic_Year2021]

--Use CASE statement to convert day of week to day names.

SELECT DISTINCT day_of_week
FROM [dbo].[Cyclistic_Year2021]

--There are null day of week values that are blank entries across all fields. Delete these.

SELECT *
FROM [dbo].[Cyclistic_Year2021]
WHERE day_of_week is null

DELETE FROM Cyclistic_Year2021
WHERE day_of_week is null

--Recheck distint day of week values.
SELECT DISTINCT day_of_week
FROM [dbo].[Cyclistic_Year2021]
ORDER BY day_of_week

--Complete Case Statement now that empty entries are gone.
SELECT top (100) started_at, ended_at, day_of_week,
[weekday] = 
CASE
	WHEN day_of_week = '1' THEN 'Sunday'
	WHEN day_of_week = '2' THEN 'Monday'
	WHEN day_of_week = '3' THEN 'Tuesday'
	WHEN day_of_week = '4' THEN 'Wednesday'
	WHEN day_of_week = '5' THEN 'Thursday'
	WHEN day_of_week = '6' THEN 'Friday'
	ELSE 'Saturday'
END
FROM [dbo].[Cyclistic_Year2021]

--Update Cyclistic_Year2021 Table and delete old day of week column.

ALTER TABLE [dbo].[Cyclistic_Year2021]
ADD [weekday] nvarchar (50)

UPDATE [dbo].[Cyclistic_Year2021]
SET [weekday] = 
CASE
	WHEN day_of_week = '1' THEN 'Sunday'
	WHEN day_of_week = '2' THEN 'Monday'
	WHEN day_of_week = '3' THEN 'Tuesday'
	WHEN day_of_week = '4' THEN 'Wednesday'
	WHEN day_of_week = '5' THEN 'Thursday'
	WHEN day_of_week = '6' THEN 'Friday'
	ELSE 'Saturday'
END


ALTER TABLE [dbo].[Cyclistic_Year2021]
DROP COLUMN [day_of_week]

SELECT TOP(20) *
FROM [dbo].[Cyclistic_Year2021]

--Change name of weekday column to day_of_week in object explorer window.

--Find and clean up any remaining empty entries.

SELECT *
FROM [dbo].[Cyclistic_Year2021]
WHERE ride_id is null

DELETE FROM Cyclistic_Year2021
WHERE ride_id is null

SELECT *
FROM [dbo].[Cyclistic_Year2021]
WHERE ride_length is null
--These ride_length times are negative. Delete entries, cannot rent for negative time, cannot obtain corrected entries. 34 rows deleted.

DELETE FROM Cyclistic_Year2021
WHERE ride_length is null

--Add month column. 
ALTER TABLE [dbo].[Cyclistic_Year2021]
ADD [month] nvarchar(50)

UPDATE [dbo].[Cyclistic_Year2021]
SET [month] = 
CASE WHEN (month([started_at])) = 1 THEN 'January'
	 WHEN (month([started_at])) = 2 THEN 'February'
	 WHEN (month([started_at])) = 3 THEN 'March'
	 WHEN (month([started_at])) = 4 THEN 'April'
	 WHEN (month([started_at])) = 5 THEN 'May'
	 WHEN (month([started_at])) = 6 THEN 'June'
	 WHEN (month([started_at])) = 7 THEN 'July'
	 WHEN (month([started_at])) = 8 THEN 'August'
	 WHEN (month([started_at])) = 9 THEN 'September'
	 WHEN (month([started_at])) = 10 THEN 'October'
	 WHEN (month([started_at])) = 11 THEN 'November'
ELSE 'December'
END

SELECT TOP (200000) started_at,
		[month]
FROM [dbo].[Cyclistic_Year2021]

--Datetime fix (when converted from excel the ride_length field did not convert correctly for multiple day rentals)

ALTER TABLE [dbo].[Cyclistic_Year2021]
ADD [ride_min] int
UPDATE [dbo].[Cyclistic_Year2021]
SET [ride_min] = DATEDIFF(MINUTE, [started_at], [ended_at]) 

SELECT TOP(20) *
FROM [dbo].[Cyclistic_Year2021]
ORDER BY [ride_min] --DESC

--Delete ride_length column

ALTER TABLE [dbo].[Cyclistic_Year2021]
DROP COLUMN [ride_length]

--Check for rides with 0 ride minutes. Delete these entries as bikes were not rented for any length of time.

SELECT *
FROM [dbo].[Cyclistic_Year2021]
WHERE [ride_min] = 0

DELETE FROM [dbo].[Cyclistic_Year2021]
WHERE [ride_min] = 0