# Using Querystring Parameters as Input

Sometimes, we would like the user to affect the HTML response
in ways other than identifying the primary resource.  We can use
_querystring parameters_ for this.

Here's an example:

```
http://localhost:3000/books?sort=recent&theme=blue
```

Here's we're using a `?` in the URL to separate the URL path from
a list of querystring parameters.

Rails will read the querystring and synthesize an appropriate `params` hash:

```
Parameters: { "sort" => "recent", "theme" => "blue" }
```

And inside our code we can use it like this:

``` erb
<%%# This is app/views/books/index.html.erb %>

<%% books = Book.all %>
<%% if params["sort"] == "recent" %>
  <%% books = books.order('year desc') %>
<%% end %>

<%% for book in books %>
  <%%# ... %>
<%% end %>
```
