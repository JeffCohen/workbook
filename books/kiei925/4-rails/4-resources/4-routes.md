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

## Example: URL Mapped to an HTML File

`get '/books' => 'books#index'`

The left side, `get '/books'` says that our application allows user to get the
resource located at `/books`.

The right side, `books#index` is a shorthand _hint_ that indicates that the HTML
file can be found at `app/views/books/index.html.erb`.

## Example: URL Mapped to a Ruby function

`get '/books' => 'books#index'`

The left side, `get '/books'` says that our application allows user to get the
resource located at `/books`.

The right side, `books#index` is a shorthand _hint_ that indicates that the Ruby
function is named `index` inside of a Ruby class named `BooksController`.

In turn, the `BooksController` class must be defined inside of a file named
`app/controllers/books_controller.rb`.
