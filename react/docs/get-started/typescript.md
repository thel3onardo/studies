### Using TypeScript with React

I can use the typescript *Object Types* to type my component props. A object type can be defined using **interface**, **type** or **curly braces*.

Example:

```ts
type Person = {
    name: string
    age?: int
}

interface Person {
    name: string
    age?: int
}

{ name: string, age?: int }
```

### Useful types

@types/react offers lots of types that I can use. I can check them in the link below:
https://github.com/DefinitelyTyped/DefinitelyTyped/blob/master/types/react/index.d.ts

#### DOM Events

When creating a handler for events, I need to specify the type of it. I can do so hovering the event or defining the specific React.X type

If I need to specify an event that is not supported by React, I can use: *React.SyntheticEvent* type which is the base type of all events.a

#### Children

for typing react children elements, I can use React.ReactNode (which is a union of all possible types that can be passed as JSX children) or React.ReactElement (only JSX elements)a

#### Styles

If I wanna use inline styles in a React component, I can type them using React.CSSProperties(is a union type of all css properties). Doing so, I guarantee that what is been passed in the style prop is valid CSS properties and also get autocompletion.