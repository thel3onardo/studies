### Chapter 1 - Introducing React

React is maintained by some folks in Meta and contributors from javascript community.

> Q - Does React handle DOM in a smart way?

### Understanding JSX

JSX stands for JavaScript XML

```js
Simple react component

function App() {
    return (
        <div className="flex justify-between items-center">
            <p>hello</p>
            <p>second hello</p>
        </div>
    )
}

```

JSX needs to be transpiled before going to the browser. Babel is a transpiler.