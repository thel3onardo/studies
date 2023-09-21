package topics

import "fmt"

func ExecSlices() {
	aSlice := []float64{}
	bSlice := make([]float64, 3)

	fmt.Println("---- SLICES ----")
	fmt.Println(len(aSlice)) // returns 0
	fmt.Println(len(bSlice)) // returns 3
}