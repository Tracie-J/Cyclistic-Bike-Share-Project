--Descriptive Analysis--

--Average ride length for all trips
SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]         --22 minutes

--Max ride length for all trips
SELECT MAX([ride_min])
FROM [dbo].[Cyclistic_Year2021]			--55944 minutes or
										--38 days, 20 hours 24 minute

--Min ride length for all trips
SELECT MIN([ride_min])
FROM [dbo].[Cyclistic_Year2021]			--1 minute


--Average ride length for all casual riders
SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'casual'		--32 minutes


--Average ride length for all members
SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'member'		--13 minutes


--Max and Min ride length for all casual riders
SELECT MAX([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'casual'		--Max:55944 minutes

SELECT MIN([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'casual'		--Min: 1 minutes


--Max and Min ride length for all members
SELECT MAX([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'member'		--Max: 1560 minutes

SELECT MIN([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'member'		--Min: 1 minutes


--Number of each casual riders and members for all trips
SELECT COUNT([member_casual])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'member'		--3,035,092 members

SELECT COUNT([member_casual])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'casual'		--2,508,747 casual riders



--Average ride by month for casual riders
SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'January' AND [member_casual] = 'casual'	--25 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'February' AND [member_casual] = 'casual'	--49 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'March' AND [member_casual] = 'casual'		--38 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'April' AND [member_casual] = 'casual'		--38 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'May' AND [member_casual] = 'casual'		--38 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'June' AND [member_casual] = 'casual'		--37 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'July' AND [member_casual] = 'casual'		--33 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'August' AND [member_casual] = 'casual'		--29 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'September' AND [member_casual] = 'casual'		--28 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'October' AND [member_casual] = 'casual'		--28 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'November' AND [member_casual] = 'casual'		--23 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'December' AND [member_casual] = 'casual'		--23 minutes



--Average ride length by month for members
SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'January' AND [member_casual] = 'member'	--12 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'February' AND [member_casual] = 'member'	--18 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'March' AND [member_casual] = 'member'		--14 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'April' AND [member_casual] = 'member'		--14 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'May' AND [member_casual] = 'member'		--14 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'June' AND [member_casual] = 'member'		--14 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'July' AND [member_casual] = 'member'		--14 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'August' AND [member_casual] = 'member'		--14 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'September' AND [member_casual] = 'member'		--13 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'October' AND [member_casual] = 'member'		--12 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'November' AND [member_casual] = 'member'		--11 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'December' AND [member_casual] = 'member'		--11 minutes


--Average ride time for all riders by day of week.
SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Sunday'			--28 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Monday'			--21 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Tuesday'			--18 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Wednesday'		--18 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Thursday'		--18 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Friday'			--21 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Saturday'		--26 minutes



--Average ride time for casual riders by day of week.
SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Sunday' AND [member_casual] = 'casual'		--37 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Monday' AND [member_casual] = 'casual'   	--32 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Tuesday' AND [member_casual] = 'casual'	    --28 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Wednesday' AND [member_casual] = 'casual'   --27 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Thursday' AND [member_casual] = 'casual'		--27 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Friday' AND [member_casual] = 'casual'		--30 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Saturday' AND [member_casual] = 'casual'		--34 minutes



--Average ride times for members by day of week.
SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Sunday' AND [member_casual] = 'member'		--15 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Monday' AND [member_casual] = 'member'   	--13 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Tuesday' AND [member_casual] = 'member'	    --12 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Wednesday' AND [member_casual] = 'member'   --12 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Thursday' AND [member_casual] = 'member'		--12 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Friday' AND [member_casual] = 'member'		--13 minutes

SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Saturday' AND [member_casual] = 'member'		--15 minutes





--Count of casual riders for each bike type; electric, docked, and classic.
SELECT COUNT([rideable_type])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'casual' AND [rideable_type] = 'electric_bike'		--938,214

SELECT COUNT([rideable_type])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'casual' AND [rideable_type] = 'classic_bike'		--1,259,371

SELECT COUNT([rideable_type])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'casual' AND [rideable_type] = 'docked_bike'		--311,162


--Count of members for each bike type; electric, docked, and classic.

SELECT COUNT([rideable_type])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'member' AND [rideable_type] = 'electric_bike'		--1,068,709

SELECT COUNT([rideable_type])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'member' AND [rideable_type] = 'classic_bike'		--1,966,382

SELECT COUNT([rideable_type])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'member' AND [rideable_type] = 'docked_bike'		--1



--Number of rides by month for casual riders
SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'January' AND [member_casual] = 'casual'	--17,953

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'February' AND [member_casual] = 'casual'	--10,029

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'March' AND [member_casual] = 'casual'		--83,509

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'April' AND [member_casual] = 'casual'		--135,643

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'May' AND [member_casual] = 'casual'		--254,786

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'June' AND [member_casual] = 'casual'		--367,280

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'July' AND [member_casual] = 'casual'		--438,441

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'August' AND [member_casual] = 'casual'		--409,593

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'September' AND [member_casual] = 'casual'		--361,173

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'October' AND [member_casual] = 'casual'		--255,264

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'November' AND [member_casual] = 'casual'		--105,941

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'December' AND [member_casual] = 'casual'		--69,135



--Number of rides by month for members
SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'January' AND [member_casual] = 'member'	--78,045

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'February' AND [member_casual] = 'member'	--38,995

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'March' AND [member_casual] = 'member'		--143,205

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'April' AND [member_casual] = 'member'		--198,606

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'May' AND [member_casual] = 'member'		--271,654

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'June' AND [member_casual] = 'member'		--355,228

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'July' AND [member_casual] = 'member'		--376,400

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'August' AND [member_casual] = 'member'		--387,843

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'September' AND [member_casual] = 'member'		--388,460

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'October' AND [member_casual] = 'member'		--370,097

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'November' AND [member_casual] = 'member'		--250,519

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'December' AND [member_casual] = 'member'		--176,040



--Number of rides for all riders by day of week.
SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Sunday'			--849,264

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Monday'			--696,199

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Tuesday'			--733,283

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Wednesday'		--749,225

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Thursday'		--730,949

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Friday'			--803,030

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Saturday'		--981,889



--Number of rides for casual riders by day of week.
SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Sunday' AND [member_casual] = 'casual'		--477,305

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Monday' AND [member_casual] = 'casual'   	--284,104

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Tuesday' AND [member_casual] = 'casual'	    --272,170

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Wednesday' AND [member_casual] = 'casual'   --276,698

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Thursday' AND [member_casual] = 'casual'		--283,733

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Friday' AND [member_casual] = 'casual'		--361,095

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Saturday' AND [member_casual] = 'casual'		--553,642




--Number of rides for members by day of week.
SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Sunday' AND [member_casual] = 'member'		--371,959

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Monday' AND [member_casual] = 'member'   	--412,095

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Tuesday' AND [member_casual] = 'member'	    --461,113

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Wednesday' AND [member_casual] = 'member'   --472,577

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Thursday' AND [member_casual] = 'member'		--447,216

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Friday' AND [member_casual] = 'member'		--441,935

SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Saturday' AND [member_casual] = 'member'		--428,247











---Create Views for future visualizations.

--Number of each rider type
CREATE VIEW RiderType as
SELECT TOP (1) members = (
SELECT COUNT([member_casual])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'member'
),
casual = (
SELECT COUNT([member_casual])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'casual'
),
total = (
SELECT COUNT(ride_id)
FROM [dbo].[Cyclistic_Year2021]
)
FROM [dbo].[Cyclistic_Year2021]

SELECT *
FROM [dbo].[RiderType]


--Avg ride times for both types of riders.
CREATE VIEW AvgRideTimeByRiderType as
SELECT TOP (1) [Avg Ride Time Member] = (SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'member'
),
[Avg Ride Time Casual] = (SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'casual'
),
[Avg Ride Time All] = (SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
)
FROM [dbo].[Cyclistic_Year2021]

SELECT *
FROM [dbo].[AvgRideTimeByRiderType]


--Avg ride times in minutes by month.
Create Table AvgRideByMonthInMinutes
(
[Month] nvarchar(50),
Casual int,
Member int
)

INSERT INTO [dbo].[AvgRideByMonthInMinutes] VALUES
('January', 
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'January' AND [member_casual] = 'casual'),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'January' AND [member_casual] = 'member')
),
('February',
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'February' AND [member_casual] = 'casual'),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'February' AND [member_casual] = 'member')
),
('March',
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'March' AND [member_casual] = 'casual'),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'March' AND [member_casual] = 'member')
),
('April',
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'April' AND [member_casual] = 'casual'),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'April' AND [member_casual] = 'member')
),
('May',
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'May' AND [member_casual] = 'casual'),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'May' AND [member_casual] = 'member')
),
('June',
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'June' AND [member_casual] = 'casual'),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'June' AND [member_casual] = 'member')
),
('July',
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'July' AND [member_casual] = 'casual'),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'July' AND [member_casual] = 'member')
),
('August',
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'August' AND [member_casual] = 'casual'	),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'August' AND [member_casual] = 'member')
),
('September',
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'September' AND [member_casual] = 'casual'),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'September' AND [member_casual] = 'member')
),
('October',
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'October' AND [member_casual] = 'casual'),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'October' AND [member_casual] = 'member')
),
('November',
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'November' AND [member_casual] = 'casual'),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'November' AND [member_casual] = 'member')
),
('December',
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'December' AND [member_casual] = 'casual'),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'December' AND [member_casual] = 'member')
)

  SELECT *
  FROM AvgRideByMonthInMinutes


--Avg ride times in minutes by day of week.
Create Table AvgRideByWeekdayInMinutes
(
[Weekday] nvarchar(50),
Casual int,
Member int
)
INSERT INTO [dbo].[AvgRideByWeekdayInMinutes] VALUES
('Sunday',
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Sunday' AND [member_casual] = 'casual'),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Sunday' AND [member_casual] = 'member')
),
('Monday',
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Monday' AND [member_casual] = 'casual'),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Monday' AND [member_casual] = 'member')
),
('Tuesday',
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Tuesday' AND [member_casual] = 'casual'),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Tuesday' AND [member_casual] = 'member')
),
('Wednesday',
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Wednesday' AND [member_casual] = 'casual'),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Wednesday' AND [member_casual] = 'member')
),
('Thursday',
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Thursday' AND [member_casual] = 'casual'),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Thursday' AND [member_casual] = 'member')
),
('Friday',
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Friday' AND [member_casual] = 'casual'),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Friday' AND [member_casual] = 'member')
),
('Saturday',
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Saturday' AND [member_casual] = 'casual'),
(SELECT AVG([ride_min])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Saturday' AND [member_casual] = 'member')
)

  SELECT *
  FROM [dbo].[AvgRideByWeekdayInMinutes]


--Number of rides by bike type for each casual and members.
CREATE TABLE NumberOfRidesByBikeType
(
[Bike Type] nvarchar(50),
Casual int,
Member int
)
INSERT INTO NumberOfRidesByBikeType VALUES
('Classic',
(SELECT COUNT([rideable_type])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'casual' AND [rideable_type] = 'classic_bike'),
(SELECT COUNT([rideable_type])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'member' AND [rideable_type] = 'classic_bike')
),
('Electric',
(SELECT COUNT([rideable_type])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'casual' AND [rideable_type] = 'electric_bike'),
(SELECT COUNT([rideable_type])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'member' AND [rideable_type] = 'electric_bike')
),
('Docked',
(SELECT COUNT([rideable_type])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'casual' AND [rideable_type] = 'docked_bike'),
(SELECT COUNT([rideable_type])
FROM [dbo].[Cyclistic_Year2021]
WHERE [member_casual] = 'member' AND [rideable_type] = 'docked_bike')
)

Select *
  From [dbo].[NumberOfRidesByBikeType]


--Number of each type of rider by month.
Create Table NumberOfRidesByMonth
(
[Month] nvarchar(50),
Casual int,
Member int
)
INSERT INTO [dbo].[NumberOfRidesByMonth] VALUES
('January',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'January' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'January' AND [member_casual] = 'member')
),
('February',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'February' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'February' AND [member_casual] = 'member')
),
('March',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'March' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'March' AND [member_casual] = 'member')
),
('April',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'April' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'April' AND [member_casual] = 'member')
),
('May',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'May' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'May' AND [member_casual] = 'member')
),
('June',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'June' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'June' AND [member_casual] = 'member')
),
('July',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'July' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'July' AND [member_casual] = 'member')
),
('August',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'August' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'August' AND [member_casual] = 'member')
),
('September',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'September' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'September' AND [member_casual] = 'member')
),
('October',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'October' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'October' AND [member_casual] = 'member')
),
('November',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'November' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'November' AND [member_casual] = 'member')
),
('December',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'December' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [month] = 'December' AND [member_casual] = 'member')
)

 Select *
  from [dbo].[NumberOfRidesByMonth]



--Number of each type of rider by weekday.
Create Table NumberOfRidesByWeekday
(
[Weekday] nvarchar(50),
Casual int,
Member int
)
INSERT INTO [dbo].[NumberOfRidesByWeekday] VALUES
('Sunday',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Sunday' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Sunday' AND [member_casual] = 'member')
),
('Monday',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Monday' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Monday' AND [member_casual] = 'member')
),
('Tuesday',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Tuesday' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Tuesday' AND [member_casual] = 'member')
),
('Wednesday',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Wednesday' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Wednesday' AND [member_casual] = 'member')
),
('Thursday',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Thursday' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Thursday' AND [member_casual] = 'member')
),
('Friday',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Friday' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Friday' AND [member_casual] = 'member')
),
('Saturday',
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Saturday' AND [member_casual] = 'casual'),
(SELECT COUNT([ride_id])
FROM [dbo].[Cyclistic_Year2021]
WHERE [day_of_week] = 'Saturday' AND [member_casual] = 'member')
)

Select *
From [dbo].[NumberOfRidesByWeekday]