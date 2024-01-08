### Variables

Dart infer types automatically. I can use the var keyword and omit the type annotation

#### Null safety
I define a variable as *nullable*, using the ? at the end of the type declaration

Nullable variables are automatically initialized with a **null** value.

If I create a non-nullable variable, I must initialize it before using it in the code.

> assert evaluates an expression. If evaluated to false, throw an exception (only works in development mode aka debug mode). Production-compiled code ignore assert

#### Final and Const
If a don't wanna mutate a variable, I can use final and const.

- A final variable can only be set once
- A const is a compile-time constant
    - It is implicity a final variable