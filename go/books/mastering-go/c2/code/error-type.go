package main

import (
	"fmt"
	Examples "mastering-go/basic-dt/examples"
)

//ignore it
type Actions interface {
	StepUp()
	StepBack()
}

func main() {
	fmt.Println("what")

	// value, err := strconv.Atoi("qwdqw")

	// if err != nil {
	// 	fmt.Printf("There was an error : %s", err)
	// }

	// fmt.Println(reflect.TypeOf(value))

	//implementing custom error message
	val, err := Examples.ExecuteExample()

	if err != nil {
		fmt.Println(err)
		return
	}
	
	fmt.Println(val)
}