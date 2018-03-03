# The Golden Seven

Methods are combined with URLs to perform actions on resources.  An action
is either 1) sending HTML to the browser, or 2) sending a [redirect](/4-rails/2-resources/6-redirects) status code.

Suppose we have the following `config/routes.rb` entry:

``` ruby
resources :employees
```

This means that the _employees_ resource can be manipulated by sending the proper HTTP method-URL combination.

Here is the standard mapping of all seven Method-URL combinations to Rails "actions":

|Method|URL Pattern|Action|
|------|-----------|------|
|GET|/employees|`index`|
|GET|/employees/:id|`show`|
|GET|/employees/new|`new`|
|POST|/employees|`create`|
|GET|/employees/:id/edit|`edit`|
|PATCH|/employees/:id|`update`|
|DELETE|/employees/:id|`destroy`|
