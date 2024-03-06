package main

import "fmt"

func main() {
	var name = "leonardo"
	surname := "Oliveira"

	fmt.Println(fmt.Sprintf("surname %s", surname))
	fmt.Println(fmt.Sprintf("leonardo %s", name))

	if 1 == 1 {
		fmt.Println("one equals one")
	}

	if anotherName := "leonardo"; anotherName != "leonardo" {
		fmt.Println("anotherName is not leonardo")
	} else if anotherName == "Marcos" {
		fmt.Println("anotherName is Marcos")
	} else {
		fmt.Println("anotherName is leonardo")
	}
}