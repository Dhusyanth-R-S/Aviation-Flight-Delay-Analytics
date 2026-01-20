# Which airport had the highest total delay 

With airport_delays as(
	Select
		a.airport, 
        a.city, 
        a.state,
		Round(Sum(f.departure_delay_min)/60, 1) as total_delay_hr
	From
		airports a Inner Join fact_flights f
			On a.airport_id = f.airport_id
	Group by
		a.airport, a.city, a.state
	), 
airport_delay_rank as(
	Select
		*, Rank() Over(Order by total_delay_hr desc) as rnk
	From
		airport_delays
)
Select 
	airport, 
    city, 
    state, 
    total_delay_hr
From
	airport_delay_rank
Where
	rnk = 1;
    
    
# On which days of the week did flights experience the most average delay ? 

With weekday_avg_delay as(
	Select
		dayname(d.flight_date) as day_name, 
        avg(f.departure_delay_min) as avg_dep_delay_min
	From
		fact_flights f Inner Join dates d
			On f.date_id = d.date_id
	Group by
		day_name
	)
Select * from weekday_avg_delay;

# Do airports with shorter average flight distances experience higher average departure delays 
# due to reduced in-flight recovery opportunity?

Select 
	a.airport, 
    a.city, 
    avg(f.arrival_delay_min) avg_arrival_delay_min, 
    count(distinct f.flight_id) as total_flights, 
    round(avg(f.distance_km)) as avg_distance_per_flight
From
	airports a Inner Join fact_flights f
		On a.airport_id = f.airport_id
Group by
	a.airport, a.city
Order by 
	avg_arrival_delay_min desc;
    

# Peak Day Performance by airports

With peak_day_performance as(
		Select
			a.airport, 
            a.city, 
            avg(f.departure_delay_min) as avg_dep_delay_min
		From
			airports a Inner Join fact_flights f	
				On a.airport_id = f.airport_id
						Inner Join dates d
				On d.date_id = f.date_id
		Where
			dayname(d.flight_date) in ('Thursday', 'Friday', 'Saturday', 'Sunday')
		Group by 
			a.airport, a.city
	), 
peak_day_ranking as(
	Select *, 
		Rank() Over(Order by avg_dep_delay_min desc) as rnk
	From
		peak_day_performance
)
Select * From peak_day_ranking order by rnk asc;






