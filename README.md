# Cyclistic-Bike-Share-Project
This is a full project comparing casual riders and members using Divvy bike share data.





**Background:** 

_Please Note that Cyclistic is not a real company and is the name given for this scenario. Name of marketing director is not real._

Started in 2016, Cyclistic is a bike share program located in Chicago that offers a variety of rental bike options and provides multiple docking stations all over the city for convenient use. Cyclistic also offers various bike options that make bike share more inclusive to people with disabilities. They provide two membership options, casual and annual members. Most of their users use the service for leisure but some use the bikes for commutes to and from work (30%).

**Purpose:** 

The Cyclistic’s financial team has determined that annual users are more profitable than casual users. The goal of the marketing team is to design marketing strategies that will convert casual riders to annual members. Marketing analyst goals are to understand the differences between the behaviors of casual and annual members, determine why casual riders would buy a membership, and how digital media can affect marketing tactics. Analysts are to analyze data from prior bike trips to identify trends. 

**Main questions:** 

1.	How do annual members and casual riders use Cyclistic bikes differently?
2.	Why would casual riders convert to annual memberships?
3.	How can Cysclistic use digital media to influence casual riders to become members.


**Who data will be reported to:**

	Lily Moreno – Director of Marketing, Manager of marketing analyst team
	Executive Team – Approves or rejects the recommended marketing program

**Data Source:** 

_*Again, please note that Cyclistic is a fictional Company name, and the data will have a different name._

Data has been downloaded from this public data source on Divvy bike rides in Chicago over several years. It is made available by Motivate International Inc.

[Data Source](https://divvy-tripdata.s3.amazonaws.com/index.html)

[License](https://ride.divvybikes.com/data-license-agreement)

Data is added every month, however, as 2022 has not concluded yet I will be using the data from 2021 spanning January to December. The start time for the ride will determine which month the data is stored in therefore some trips may start on December 31st but does not end until January of the following year. Some information is personally identifiable and are therefore not provided.  


**Prepare and Clean:** 
-	Raw data saved as excel files for each month.
-	Name columns are checked for standardization in spelling and formatting.
-	Create column “ride_length”. Subtract start time from end time.
-	Reformat ride_length times to 37:30:55 format.
-	Create column “day_of_week”.  Use =Weekday() formula. Sunday = 1 through Saturday = 7.
-	Filter and delete any negative ride times. 
-	Delete completely blank entries.
-	*Please note that some start station names and ID’s and some End station names and ID's are missing however, there is a start latitude/longitude and end latitude/longitude for all remaining entries.
-	Save file as .xlsx
-	Complete above process for each file.
-	Upload cleaned files from each month into SQL.
-	Rename tables to coincide with each month.


**SQL Cleaning**
[Data Cleaning](https://github.com/Tracie-J/Cyclistic-Bike-Share-Project/blob/main/Cyclistic_Year2021_cleaning.sql)

-	Alter column types so that: started_at, ended_at, and ride_length are datetime; start_lat, start lng, end_lat, and end_lng are float; and all other columns are nvarchar.
-	Combine monthly tables into one yearly table.
-	Create table Cyclistic_Year2021
-	Insert combined year table into Cyclistic_Year2021
-	There are null values in day_of_week column that correspond to empty entries. Delete these values.
-	Convert numbered day of week values to their respective days. 1 – Sunday to 7 – Saturday. Name column weekday.
-	Update Cyclistic table with new column, weekday, and delete old day_of_week column.
-	Rename weekday column to day_of_week.
-	Double check to see if there are any remaining blank rows and delete them.
-	Add month column to data.
-	Correct ride_length data. *When transferred from excel formatting did not transfer.
     o	Create a new column “ride_min”.
     o	Calculate difference in ride time in minutes.
     o	Delete old ride_length column *formatted incorrectly and not useful for calculations.
-	Check entries for 0 ride_min. Delete these as the bikes was not actually used.


**Quick Initial Analysis:** 
Completed initial general analysis using pivot table in excel. 
-	Casual riders have a higher average ride time than members for each month.
-	Most rides are on Saturday for most of the months, 8 of 12 months.
-	Avg. ride length for all riders combined is between 14 and 26 minutes.
-	Based on max ride length for each month (includes both casual and members) some riders keep bikes for a month or more at a time.


**Analysis:** 
[SQL Analysis](https://github.com/Tracie-J/Cyclistic-Bike-Share-Project/blob/main/Cyclistic_Year2021_analysis.sql)

_*All time is in minutes_
-	Find avg ride length, max, and min for all trips.
-	Find avg ride length, max, and min for all trips by rider type. 
-	Find number of riders by rider type.
-	Avg ride length by month for each rider type.
-	Avg ride length by weekday for each rider type.
-	Avg ride length for all riders by weekday.
-	Avg ride length for each rider type by weekday.
-	Count of casual riders for each bike type.
-	Count of members for each bike type.
-	Count of casual riders for each month.
-	Count of members for each month.
-	Count of all riders for each weekday.
-	Count of casual riders for each weekday.
-	Count of members for each weekday.


**Create views for future visualizations.**
-	View for number of each rider type.
-	View for avg ride times for each rider type.
-	Table for avg ride times for each rider type by month.
-	Table for avg ride times for each rider type by weekday.
-	Table for number of rides by bike type for each rider type.
-	Table for number of each rider type by month.
-	Table for number of each rider type by weekday.


**Create excel documents for each view/table for use in tableau.**

**Visualization:**
Made via Tableau 

[Cyclistic Visualization](https://public.tableau.com/app/profile/tracie.johnson/viz/DivvyBike_16653358873940/CyclisticBikeShareAnalysis)






**Recommendations:** 

1.	How do annual members and casual riders use Cyclistic bikes differently?

Based on the data, on average, casual riders rent bikes for longer periods of time than members. The day of the week that they are more likely to rent bikes also differ greatly. Whereas members are more consistent and are more likely to rent bikes throughout the week, casual riders tend to rent bikes the most over the weekend. There’s a dip in the number of casual riders that rent between Monday and Friday and an increase in number of casual riders on Saturday and Sunday. This suggests that the two user groups use the bikes for different purposes. Members may be using their bikes for typical day to day activities. There’s an increase in rentals for both groups between the months of June and September, with July being the month that casual riders use the service the most.

2.	Why would casual riders convert to annual memberships?

Casual riders may convert to annual memberships because they are already using the service for longer periods of time when they do rent bikes, and they are using the service more often on weekends and throughout the warmer months. This group of riders may be more likely to convert to a membership during the times that they are already using the service the most. 

3.	How can Cysclistic use digital media to influence casual riders to become members?

Cyclistic can influence casual riders to convert to memberships by strategically advertising to those riders during the peak times throughout the week and throughout the year. Increasing advertisement on various social media platforms and/or running sales for yearly memberships during those times will increase the likelihood of them seeing the ads/sales when they are already likely to rent. 
