# Routes

In order to display web pages, we provide a list of URLs that we support,
along with a list of Ruby identifiers that correspond to each URL.  The identifier
can be the name of an HTML page, or a Ruby function.

When our application receives an HTTP request, we might retrieve some data
from the database, or perhaps update the database in some way.  But we usually
end by finally sending back an HTML response, so that the user sees a new web page.

The process of matching an incoming URL to an HTML page (or Ruby function) is called
_routing_.

All routes are defined in the file `config/routes.rb`.

## Example: URL Mapped to a Rails View

``` ruby
get '/books' => 'books#index'
```

The left side, `get '/books'` says that our application allows the user to "get" the
resource located at `/books`.

The right side, `books#index` is shorthand for
`app/views/books/index.html.erb`.

HTML files located under the `app/views/` folder are called _views_ because they
may contain intelligent Ruby code in addition to just HTML, which is also why they
have the extra extension `.erb`.

## Example: URL Mapped to a Ruby function

A second option is to trigger a Ruby function instead of an HTML file.  

Given that we have a controller file `app/controllers/books_controller.rb`,
and inside that file we have the following code:

``` ruby
class BooksController < ApplicationController

  def create
    # some code goes here...
  end
end
```

We can now connect the url `/books` to the `create` function like this:

``` ruby
get '/books' => 'books#create'
```

The left side, `get '/books'` says that our application will recognize the url `/books`.

The right side, `books#create` is shorthand for saying that our Ruby
function is named `create` and lives inside the Ruby class named `BooksController`.



## Unifying Concept: Actions

The general form of a route is:

``` ruby
get '/url' => 'resource#action'
```

The _action_ can be:

* the name of a Ruby function inside of a controller class named _resource_; or
* the name of a view file located at `app/views/_resource_/`
* or both!

If the _action_ names both a function and a view, the function is invoked first,
then the view is used to generate the resulting HTML.
