### Constants

Constants are, basically, variables that cannot change their values. They are defined using the keyword **const**

```go

const MINIMAL_ROUNDS = 20;
```

Using constants, I have the guarantee that the value will never change during coding execution and that's because a constant's value is defined at compile time.
Go uses string, number and boolean types to define constants values.

    The iota represents successive integer constants 0, 1, 2. A iota gets reseted wherever it finds a const keyword in the code and increments after each const specification

    The first const declaration always define the value which the iota will start. For instance: If a wanna start with 1 iota value, i should do the follow:
    
```go
    const (
        C1 = iota + 1
        C2 // 2
        C3 // 3
    )
```