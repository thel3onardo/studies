### Remix docs

Remix is a full stack web framework

> npx remix build generates two folders: build (contains the server version of my app) and public/build (contains the browser version). This is all configurable

The build/ generated directory is just a module that can be run inside a server like Express, Cloudflare Workers, Netlify, etc.
Remix is designed to run in any javascript environment. So, I can have create my own server and run the remix module on it.

By default, remix offers a tiny express server to run the code. (the remix-serve)