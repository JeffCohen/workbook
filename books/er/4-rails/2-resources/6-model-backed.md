# Model-Backed Resources

Let's imagine that we want to add a model-backed resource named _products_ to our application.

Here's a 3-step recipe.

### 1. Model

In the `db/models.yml` file, we add a section like this:

```
Product
  name: text
  price: integer
  photo_url: text
```

Notice that `Product` is _singular_ (not _products_) and capitalized.

The attributes are **indented exactly 2 spaces** and follow the format above
to specify the data type of each attribute.  See the comments in the
`models.yml` file to learn more about what's possible.

### 2. Apply Your Changes

Whenever you modify the `db/models.yml` file, we need to tell Rails to
apply our changes into our physical database.  We can do that using
any of the following:

* `rails console`
* `rails server`

Starting either of these will apply your changes.  If you already had both of these running,
you'll need to stop one and restart it.

<div class="alert alert-warning" role="alert">
<h1>TO BE CONTINUED</h1>
</div>
