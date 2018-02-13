# View Helpers

Instead of writing raw HTML, the Rails framework provides
Ruby functions called _view helpers_ that can write HTML on our behalf.  Using view helpers often results in simpler code, and with more abilities
than standard HTML elements can provide.

We will look at two such helper functions: `form_tag` and `link_to`.

## `form_tag`

We use `form_tag` anywhere we would otherwise use a `<form>` element.
Here is the general syntax.  Note in particular the `do...end` block that
encompasses the form controls.

``` erb
<%%= form_tag "/movies", method: "get" do %>
  <p>
    Search by title:
    <input type="text" name="keyword">
  </p>
  <button>Submit</button>
<%% end %>
```

Unlike raw HTML, all four HTTP methods are supported:

|`method`|Reason|Supported in HTML?|
|-----------|------|------------------|
|`get`|Retrieve data|Yes|    
|`post`|Add new data|Yes|    
|`patch`|Update existing data|Yes|    
|`delete`|Delete existing data|Yes|    

Here's a typical form for updating a user's contact information:

``` erb
<%% user = User.find_by(last_name: 'Smith') %>

<%%= form_tag "/users/#{user.id}", method: 'patch' do %>

  <p>
    First name: <input type="text" name="first_name" value="<%%= user.first_name">
  </p>
  <p>
    Last name: <input type="text" name="last_name" value="<%%= user.last_name">
  </p>
  <p>
    Address: <input type="text" name="address" value="<%%= user.address">
  </p>
  <p>
    City: <input type="text" name="city" value="<%%= user.city">
  </p>
  <p>
    State: <input type="text" name="state" value="<%%= user.state">
  </p>
  <p>
    Zip: <input type="text" name="zip" value="<%%= user.zip">
  </p>

<%% end %>
```

## LINK_TO

The HTML5 `<a>` element is easy to use but only supports the `get` method.  Sometimes
we would like links to trigger a database update instead.

Here's an example of how to implement a "Delete" link:

``` erb
<%% movie = Movie.find_by(title: 'Apollo 13') %>
<%% ... %>

<%%= link_to "Delete This Movie", "/movies/#{movie.id}", method: 'delete' %>
```

When the user clicks this link, an HTTP delete request will be sent to the application,
triggering the `destroy` action in the `MoviesController`.
