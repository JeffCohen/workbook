# Expressions

There are two ways of embedding Ruby logic into our view templates.

## For Output

Often we use Ruby to perform some computation or retrieve data
from the database, and we want to emit that result into our web
page so our users can see it.

To do that, we use the syntax: `<%%= %>` around a Ruby expression.

Examples:

```
<%%= 10 + 5 %>
```

```
<%%= Movie.find_by(title: 'Apollo 13') %>
```

## For Logic

Sometimes, we use Ruby only to control the logic on the page, such
as declaring variables or using `for` loops. We can execute Ruby
statements without emitting their results to the page by simply
omitting the `=` sign:

```
<%% sum = 10 + 5 %>
```

```
<%% favorite_movie = Movie.find_by(title: 'Apollo 13') %>
```

```
<%% for product in Product.all %>

  <!-- HTML that needs to be repeated per product goes here -->

<%% end %>
```
