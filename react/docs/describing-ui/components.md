### Components

well, it's all about components.

A react component is basically a function that returns a JSX piece of code. Every function should be Capitalized(!), otherwise it won't work.

> As every React component is a function, I can define several components inside the same file. (for convenience: only if they are related or tiny)


### Importing and Exporting components

#### Default and named exports
To export and import 'defaultly', I do the following:
```tsx
export default function Button() {
    return <button>hello</button>
}

import Button from "./Button.tsx"
```

For named imports/exports, I can do the following:
```tsx
export function Profile() {
    return (
        <p>I am the</p>
        <h1>Profile</h1>
    )
}

import { Profile } from "./Profile.tsx"
```

Note: I can have several named exports from the same file, but only one default one.