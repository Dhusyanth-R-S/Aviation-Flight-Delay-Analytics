Create Database aviation;
Use aviation;

LOAD DATA LOCAL INFILE "C:\\Users\\admin\\Desktop\\Projects\\Airline_project\\flights_cleaned.csv"
INTO TABLE original
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

# Creating Dimension and Fact tables

Create table airports(
		airport_id Int Auto_Increment Primary Key, 
        airport Varchar(10) Not Null Unique, 
        city Varchar(30) Not Null, 
        state Varchar(30) Not Null
);

Insert Into airports(airport, city, state) 
		(			Select 
						Distinct
						airport, city, state
					From
						original
                        );

Create table dates(
		date_id Int Auto_Increment Primary Key, 
        flight_date date unique Not Null,
        flight_year Int Not NUll, 
        flight_qtr Int Not Null, 
        flight_month Int Not Null,
        flight_day Int Not Null,
        flight_weekday Int Not Null
        );
	
Insert Into dates (flight_date, flight_year, flight_qtr, flight_month, flight_day, flight_weekday)(
		Select
			Distinct
			flight_date, 
            year(flight_date), 
            quarter(flight_date), 
            month(flight_date), 
            day(flight_date), 
            dayofweek(flight_date)
		From
			original
	);

Create table fact_flights(
		flight_id Int Auto_Increment Primary Key, 
        departure_delay_min Int,
        arrival_delay_min Int,
        distance_km Decimal(10, 1) Not Null, 
        airline_delay_min Int, 
        weather_delay_min Int, 
        airport_traffic_delay_min Int, 
        security_check_delay_min Int, 
        previous_flight_delay_min Int, 
        airport_id Int, 
        date_id Int,

		Foreign Key(airport_id) references airports(airport_id), 
        Foreign Key(date_id) references dates(date_id)
	);
    
Insert Into fact_flights(
		departure_delay_min,
        arrival_delay_min,
        distance_km ,
        airline_delay_min,
        weather_delay_min,
        airport_traffic_delay_min,
        security_check_delay_min,
        previous_flight_delay_min,
        airport_id,
        date_id
	)
(
	Select
		o.departure_delay_min, 
        o.arrival_delay_min, 
        o.distance_km, 
        o.airline_delay_min, 
        o.weather_delay_min, 
        o.airport_traffic_delay_min, 
        o.security_check_delay_min,
        o.previous_flight_delay_min,
        a.airport_id, 
        d.date_id
	From
		original o Inner Join airports a 
			On o.airport = a.airport
					Inner Join dates d
			On d.flight_date = o.flight_date
);



