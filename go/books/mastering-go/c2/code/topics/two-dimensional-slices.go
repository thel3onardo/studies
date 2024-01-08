package topics

import "fmt"

func ExecTwoDimensionalSlices() {
	//O que eh um array multidimensional?
	//Seria, basicamente, a ideia de um array conter varios arrays dentro dele, assim como abaixo criei um array de length inicial 2, que aceita, como valores, slices do tipo int.
	//Ao dar append na linha 16, o valor especificado tem que ser um slice. Isso porque estou dando append em um slice multidimensional, que espera, como valores, arrays do tipo int.
	
	s := make([][]int, 2)
	fmt.Println(len(s), cap(s), &s[0])

	s[0] = []int{1, 2, 3}
	fmt.Println(len(s), cap(s), &s[0])
	
	s = append(s, []int{3, 4, 5})

	twoD := [][]int{{1, 2, 3}, {4, 5, 6}}
	
	for _, i := range twoD {
		for _, k := range i {
			fmt.Print(k, " ")
		}
		fmt.Println()
	}
}