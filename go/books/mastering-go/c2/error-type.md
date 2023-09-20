### Error Data Type

> Go convention: If a value of error type is *nil*, then there's no error.

I can create my custom error messages, using the errors package:

```go
errors.New("This is my custom error")
```

Note: I should create custom errors inside my golang packages other than main, because main does not return anything to any other function

I also can sue the fmt.Errorf function to create my custom error messages
    > fmt.Errorf returns an *error* value, just like errors.New()


<b>Tips</b>
* All error messages should be handled at the same level, either be returned to the calling function or handled at the place they occurred
* Error messages should be sent to the log service of the app.