### Let binding

In other language also known as "variable declaration"/
Let binds values to names

```rs
let name = "leo"
```

#### Block scoped

Bindings can be scoped through {}

```rs
let message {
    let part1 = "hello"
    let part2 = "world"

    part1 + part2 //implictly returned
}

//part1 and part2 are not accessible here
```

> Let bindings are immutable, when not using ref()

#### Binding shadowing

in ReScript, using the same variable name overshadows the previous one defined.

```ocaml
let name = "leonardo"
let name = getSofia(name) //leonardo is passed and sofia is returned
let name = transformName(name) //"sofia" is passed here


let result = "hello"
Js.log(result) //prints hello

let result = 1
Js.log(result) //prints 1

//What happens here is: The second result declaration overshadows the previous one.
```

#### Private let bindings
