### Arrays and Slices

> Via de regra, I can replace arrays with slices in almost all scenarios (that's because Go uses Arrays to implement slices, under the hood).

#### Arrays

When defining an array variable, I must define the array **size**, or I can use the [...] syntax and let the Go compiler find out the length.

> I cannot change the size of an array after declaring it

> When I pass an array to a function, Go creates an copy of this array. So, every change I do inside that function will not affect the original array. (that's why I should use a pointer if I wanna prevent this copy to happen)

```go

var names = [...]string{"Leonardo", "Silvia", "Sofia"}
//same as
var names2 = [3]string{"Leonardo", "Silvia", "Sofia"}

```

#### Slices

Slices are more powerful than arrays, simply because they can expand or shrink after being declared.

> JavaScript Arrays are Go Slices...

> (!) All Go function parameters are passed by value

An slice is basically a header struct that contains a pointer to an underlying array, the array length and its capacity.


That slice header is defined in the reflect package (https://golang.org/pkg/reflect/#SliceHeader) as follows:

```go
type SliceHeader struct {
    Data uintptr
    Len int
    Cap int
}
```

That's why when you pass an slice to a function, you can mutate the original array inside the function scope. Go makes a copy of the header and passes it to the function (the header contains a pointer to the underlying array)

I can create an slice using make() or creating an array without defining the length, such as following:

```go

t := make([]float64, 3) //creates an slice of float64 type and size 3
//All the values inside this slice will be defined as the "zero value" of the specified data type (in this case: 0).

```

> I can't use make to define an array with known values. For that scenario, I use the following syntax:

```go

m := []float64{3.4, 4.5, 4.4}

```

len() -> to check lenght of a Slice
append() -> to add an element to the slice
cap() -> check the capacity of the slice
    The capacity represents how much I can expand an slice without needing to allocate more memory

> Slices, just like arrays, can be multiple-dimensional (or two-dimensional) in Go

<b>Byte slices</b>

Go uses byte slices for performing file I/O operations

> A single byte can store a single ASCII character