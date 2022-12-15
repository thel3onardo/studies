### How to create a new sveltekit project?

The answer is pretty simple. All I have to do is to execute the following command:
```js
npm create svelte@latest my-app-name
```

-> Each page of my app is a Svelte component
-> I can create new pages (i.e routes) creating new svelte components in /src/routes directory. (similarly to how nuxt/next works)

## Project structure
Normally, a sveltekit app has the following structure: https://kit.svelte.dev/docs/project-structure


* /lib will be the directory that contains my project's main files (i.e frontend/backend files/components)

    > I can reference any file inside /lib using the sveltekit alias <em>$lib</em>
    > I can put my backend files inside lib/server directory

* /static is for my project's static assets
* /tests is a specific directory for integration testing
    
    > Unit testing, following the docs, should be placed inside src/tests directory

* /params is where all my routes match-params stay.
    For example: Let's say I have a dynamic route called /product/[id]. I do not expect ID to be, for instance, 'leopardo', right? So, I can create a file inside /params, that export a function called "match" which will verify and validate the route param, returning true or false based on certain criteria. (in the docs, they use regex.test for that)
    To specify the specific file (that gonna be used for verification of the param), I have to do the follow:

    /product/[paramName=paramVerificationFileName]
    
    /product/[id=checkId]

    > Sveltekit is going to find the checkId.ts file inside /params directory and execute the function "match". If true is returned from that function, the +page.svelte component will be rendered, otherwise the +error.page component will be rendered.

    Reference: https://kit.svelte.dev/docs/advanced-routing#matching