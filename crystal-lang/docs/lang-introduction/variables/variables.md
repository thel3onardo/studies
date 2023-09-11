### Variables in Crystal

Every variable name starts with a lowercase Unicode letter (or underscore, but that's for specific cases).
Conventionally, upper-case letter are avoided and names are written in snake_case.

#### Local Variables

``` crystal
name = "leonardo" //the compiler automatically infers the type

puts name
```

> p! is similar to puts, but also prints the expression in code