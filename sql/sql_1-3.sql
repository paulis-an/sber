select tf.flight_id, avg(tf.amount) as avg_amount from ticket_flights tf
group by tf.flight_id
	having avg(tf.amount) > 3300 and avg(tf.amount) < 5000
order by tf.flight_id