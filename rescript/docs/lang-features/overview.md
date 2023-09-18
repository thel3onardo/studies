### Comparison to JS

Variable

Rescript only has let as keyword for declaring variables.
    -> Variables in ReScript are, by default, immutable. If a wanna make a variable mutable, I need to mark it as a ref
    
    ``rs
    let name = ref("leonardo")
    //ref makes my variable mutable

    name := "sofia"
    ``

> Pure function: It is a function that receives an input and returns a fixed output. Also, they cause no side effects in the outside world

Strings in ReScript must use the "" (double quotes)

I can concatenate strings in Rescript using the <b>++</b> syntax
```rs
let name = ref("leonardo")

name := name.contents ++ " oliveira"

Console.log(name) // output: { contents: 'leonardo oliveira' }
```