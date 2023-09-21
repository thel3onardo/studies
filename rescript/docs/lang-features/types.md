### Type

Types in ReScript are:

- Strong -> types cannot change during runtime
- Static -> rescript types are erased in runtime (aka they do not exist in runtime). All the information is reported during compile-time
- Sound
- Fast -> The ReScript typechecking process is fast.
- Inferred -> ReScript can deduce the types from their values.

> When using type annotations, ReScript still will infer the type from the value and compare with the type I specified (i.e: the compiler does not trust me)

I can wrap any expression in parentheses and annotate it:

```ocaml
let myInt = (5: int) + (4: int)
let add = (x: int, y: int) : int => x + y
```

#### Type Alias

I can refer to a type using a different name:

```ocaml
type scopeType = int

let x: scoreType = 20
```