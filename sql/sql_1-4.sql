select sum(tf.amount) as lost_profit from ticket_flights tf 
	join flights f
		on tf.flight_id = f.flight_id
			where f.status = 'Cancelled'
	
