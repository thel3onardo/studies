### Providers

Many basic Nest classes may be treated as providers (services, repositories, factories, helpers). The main idea of a providers is that it can be injected as a dependecy. Objects can create a relationship between each other and the nest internal runtime system is responsible to tie them up.

> Controllers should handle HTTP request and delegate more complex tasks to **providers**