package topics

import "fmt"

//using iotas
// const (
// 	C1 = iota
// 	C2 = iota
// 	C3 = iota
// )

//simplified
const (
	C1 = iota
	C2
	C3
) //same output as the above const declaration

//I can skip a value

type Direction int

const (
	B1 Direction = iota
	_
	B2
	B3
)

func ExecConstants() {
	//constants in Go
	fmt.Println(C1, C2, C3) // output: 0, 1, 2
	fmt.Println(B1, B2, B3) // output: 1, 3, 4
	fmt.Println(B1.String())
}
 
func (d Direction) String() string {
	fmt.Printf("d %d \n", d)
	// d in this scenario has a int value  of 0, 2, 3
	return []string{"North", "East", "South", "West"}[d]
}