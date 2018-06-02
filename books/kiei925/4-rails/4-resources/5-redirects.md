# Browser Redirection

When our application receives an HTTP request, we might retrieve some data
from the database, or perhaps update the database in some way.  But we usually
end by finally sending back an HTML response, so that the user sees a new web page.

However, sometimes we don't need to use an entirely new page for the response.
Sometimes we want to tell the browser to fetch another, pre-existing resource
instead.

This is called _redirection_.  

To demonstrate how to use redirection, suppose we're building a to-do list application,
and the user has clicked on a button to create a new item. We could implement this
by using an HTML view that creates a new row in the database like this:

``` erb
<%%# This is app/views/items/create.html.erb %>

<%% item = Item.create content: params["content"] %>

<h1>You just added a new item!</h1>
<p>
  <a href="/items">Click here to see your to-do list again.</a>
</p>
```

This works, but users might not want this extra confirmation page.  They could
get tired of having to click another link to get back to their to-do list.

Instead, we can dispense with the HTML entirely.  We can use a Ruby function
to create the new row and then respond with an HTTP status code that instructs
the browser to navigate back to `/items`.  This _redirection_
is accomplished by moving our Ruby code to the controller:

``` ruby
class ItemsController < ApplicationController

  def create
    item = Item.create content: params["content"]
    redirect_to "/items"
  end

end
```

Now, when they create a new item, we still create a new in the database, but
we respond with `redirect_to` instead of an HTML view.  When the browser
receives this response, it will make a new request for `/items` instead of showing
the old confirmation page.
