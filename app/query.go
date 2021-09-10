package main

var getAll string = `

	select 
	f.flight as flight,
	c.name as country,
	ft.flight_time as time,
	ft.remark as remark,
	ft.gate as gate
from
	flights as f
join countries as c on c.country_id = f.country_id
join flight_details as ft on ft.flight_id = f.flight_id

`