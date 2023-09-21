package main

import (
	"fmt"
	Topics "mastering-go/basic-dt/topics"
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
	val, err := Topics.ExecuteExample()

	if err != nil {
		fmt.Println(err)
	} else {
		fmt.Println(val)
	}
	
	Topics.ExecConstants()
	Topics.ExecSlices()
}