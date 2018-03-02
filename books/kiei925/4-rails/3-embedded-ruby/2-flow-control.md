# Flow Control

We often embed Ruby into HTML in order to control the flow of the page's logic.

Here's an example of how to use an `if` statement inside of an HTML view:

``` erb
<%% if Review.count == 0 %>
  <p>Be the first to add a review!</p>
<%% else %>
  <p>Write your review below</p>
<%% end %>
```

Similarly, here's how we can use a  `for` loop:

```erb
<%% for review in Review.all %>

  <h2><%%= review.title %></h2>
  <p>Posted by <%%= review.author %> on <%%= review.created_at %></p>
  <p class="lead">
    <%%= review.content %>
  </p>
  
<%% end %>
```

The `<%% for ... %>` is always matched with an `<%% end %>`.
