#### Primitive Types

#### String

Strings are represented by double quotes (""), single quotes are reserved for the **character** type

For strings <b>interpolation</b>, I use the backtick(``) character

```ocaml
let name = "leonardo"
let greeting = `Hello
World
${name}
uepa`
```

### Char

Rescript has a Char type for representing strings with a single letter.

> Char does not support UTF-8 or Unicode and therefore is not recommended.

### Regular expression

```ocaml
let r = %re("/b/g")
```

> Js.Re module contains helpers I have seen in JavaScript

### Boolean

&& - logical and
|| - logical or
! - logical not
<=, >=, <, > 

== -> structural equal, compares data structures deeply
```ocaml
(1, 2) == (1, 2) //true
```

=== -> referential equal, compares shallowly.
```ocaml
(1, 2) === (1, 2) //false
let myTuple = (1, 2)

myTuple === myTuple // true, because they are the same reference in memory
```

!= -> structural unequal
!== -> referential unequal

#### Unit

Represents the abscence of a specific value. (Can be compared to the void type in modern languages).
Under the hood, it is converted to javascript undefined.

For instance:
```ocaml
//Math.random() have the following type signature: unit -> float
//(i.e: I can call .random() without passing an argument to the function, and still have a float being returned)

let x = Math.random()

//A function that returns nothing, has a return type of unit

let wtf = (name: string) => Console.log(name) // has unit as return type
```

### Unknown

Represents a type that is not 100% guaranteed to be what I think it is