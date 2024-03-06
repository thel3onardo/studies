## Foundations

### Project setup and creating a module

> A Go module is an identifier for my projects. Libs that I install in my project are also modules.

Modules are a collection of go packages stored in a file tree, with a go.mod in its root

**Important** : If I am creating a project that will be downloaded and used by other people or programs, it is a good practice to define the module path equal the location that the code can be download from. Example: if my code is at **https://github.com/thel3onardo/random**, my module path can be **github.com/thel3onardo/random**

#### Good to know
the TCP network address that I pass to **http.ListenAndServe()** should be in format host:port. If I omit the host, Go will listen to all my computer's network interfaces.
In some projects, I can see the port being a word, instead of a number. (such as: :http or :http-alt). If I use a named port, Go will look for /etc/services file when starting the server. If the file is not found, an error is raised

**go run**

go run compiles my code and creates an executable at my /tmp directory. Examples:

```shell
go run .
go run main.go
go run modulepathname
```

### Routing Requests