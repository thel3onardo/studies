### Comparison to JS

Variable

Rescript only has let as keyword for declaring variables.
    -> Variables in ReScript are, by default, immutable. If a wanna make a variable mutable, I need to mark it as a ref
    
    ``rs
    let name = ref("leonardo")
    //ref makes my variable mutable

    name := "sofia"
    ``

> Pure function: It is a function that, given the same input, will always produce the same output and has no side effects.

Strings in ReScript must use the "" (double quotes)

I can concatenate strings in Rescript using the <b>++</b> syntax
```rs
let name = ref("leonardo")

name := name.contents ++ " oliveira"

Console.log(name) // output: { contents: 'leonardo oliveira' }
```

#### A bit about comparisons

== -> structural equal -> compares data structures deeply (use with caution). Ex:
    ```
    (1, 2) == (1, 2)
    ```

=== -> referential equal, compares shallowly. Ex:
```
let name = "leonardo"
let name_two = "leonardo"

Console.log(name === name_two) // false. They are not the same reference in memory
```

> Conditionals are always expressions in ReScript, so:
```rs
let result = if a {"hello"} else {"bye"}
```