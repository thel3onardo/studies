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

> Bindings are immutable

#### Binding shadowing