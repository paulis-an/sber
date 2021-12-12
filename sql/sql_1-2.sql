select a.model, count(*) as flights_num from aircrafts a
	join flights f   
	on a.aircraft_code = f.aircraft_code
		where f.status = 'Arrived'
group by a.model 
	having count(f.status) > 0 
order by count(f.status) desc 

