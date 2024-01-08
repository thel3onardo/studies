### Introcution to Dart

- Every dart program must have a main() function as a starting point
- I can use the print() function to print stuff

#### Variables

Dart has type inference. I can define a variable without type annotation using the keyword **var**

```dart
var name = "Leonardo" // String
var age = 20 //Int
```

#### Comments

// -> normal comment
/// -> documentation comment
/* */ -> block comments


#### Exceptions

To raise an exception, I must use the keyword **throw**

```dart
if (astronauts == 0) {
    throw StateError("No astronauts.")
}
```