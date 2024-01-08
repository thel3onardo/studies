### Record

Records are like JS objects but:

- Are immutable by default
- have fixed fields (not extensible)

When I create a new Record, the compiler automatically tries to find the type declaration that matches this new record. (this only works if the type dec and value are in the same file)

I can access a record property, using the dot notation

```ocaml
let me = {
    name: "leonardo",
    age: 18
}

let name = me.name
```