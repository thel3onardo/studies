package main

import (
	"fmt"
	"log"
	"net/http"
)

func homeHandler(w http.ResponseWriter, r *http.Request) {
	log.Println(r.Method)

	w.WriteHeader(http.StatusInternalServerError)
	w.Write([]byte("This is a response slice of bytes"))
}

func snippetCreate(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("This is a repsonse from snippetCreate"))
}


func snippetView(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("This is a repsonse from snippedVitw"))
}

func main() {
	fmt.Println("hello, world")

	// this is the router
	mux := http.NewServeMux()
	mux.HandleFunc("/home", homeHandler)
	mux.HandleFunc("/snippet/create", snippetCreate)
	mux.HandleFunc("/snippet/view", snippetView)

	log.Println("Starting server at port :4000")
	err := http.ListenAndServe(":4000", mux)
	log.Fatal(err)
}