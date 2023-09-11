### NestJS

#### Language

NestJS supports both TypeScript and vanilla JavaScript, but for the second one Babel is needed.

<b>Controllers</b>
Controllers have a .controller.ts suffix in filename. Above the controller's class, there's should be an *@Controller* decorator.

> @Controller() decorator can receive an argument indicating the prefix of a route group. Example:
    @Controller('user') -> add, automatically, /user prefix to each route defined in the controller

I also can create a new controller using the following command:
> nest g controller [name]

I can declare routes decorator handlers, indicanting the HTTP method. For instance:
```ts

//Decorator GET followed by the route. (this route is appended to the route group's prefix, if defined in @Controller() decorator)
@Get('/me')
findMe() : string {
    return "This is me"
}
```

I can access the Request object, using the @Request decoration such as following:

```js
@Get()
getHello(@Request() request: Request): string {
    console.log({ request })
    return 'what'
}
```

In the same way, I can use some special decorators to access request object's properties (like the body of the req)

```js
@Get()
getHello(@Body() body): string {
    console.log({ body })
    return 'what'
}

```

> List of some useful decorators: @Session(), @Body(), @Param(), @Query(), @Headers(), @Ip(), @HostParam()

<b>Resources</b>
Nest providers decorators for HTTP methods, such as:
    - @Get()
    - @Put()
    - @Delete()
    - @Post()
    - @Patch()
    - @Options()
    - @Head()
    - @All() -> Defines an endpoint that handles all of them