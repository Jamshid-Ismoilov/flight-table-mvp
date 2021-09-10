package main


import (
	// "fmt"
	"database/sql"
	_"github.com/lib/pq"
)

func GetInfo (db *sql.DB) []Flight {
	var flights []Flight 
	rows, _ := db.Query(getAll)


	for rows.Next() {
		var flight Flight
		rows.Scan(&flight.Flight, &flight.Country, &flight.Time, &flight.Remark, &flight.Gate)
	
		flights = append(flights, flight)
	}
	return flights

}