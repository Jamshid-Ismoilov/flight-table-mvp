package main

import (
	// "fmt"
	"database/sql"
	_"github.com/lib/pq"
	"net/http"
	"github.com/gorilla/mux"
	"html/template"
)

const (
	connection = "host=localhost user=jamshid password=1111 dbname=airport port=5432"
)

func main() {

	db, err := sql.Open("postgres", connection)
	defer db.Close()

	if err != nil {
		panic(err)
	}

	r := mux.NewRouter()

	r.HandleFunc("/", func (w http.ResponseWriter, r *http.Request) {

		t := template.Must(template.ParseFiles("index.html"))

		t.Execute(w, GetInfo(db))
	})

	http.ListenAndServe(":8080", r)

}