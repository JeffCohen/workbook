# Arbitrary Resources

<div class="alert alert-danger" role="alert">
This section is optional, and only to be used
for non-model resources.  If you have a model-backed
resource, see the next page.
</div>


Let's imagine that we want to add a resource named _products_ to our application.

Here's a 3-step recipe.

### 1. Routes

In the `config/routes.rb` file, we add a line like this:

```
resources :products
```

(This goes in between the `do...end` block in the file)

### Controller

Next, we need to create a Ruby class called a _controller_ to act as the
brain of this resource.

Create a file named `app/controller/products_controller.rb` with the
following code inside:

``` ruby
class ProductsController < ApplicationController
end
```

Be careful! Uppercase vs lowercase matters!


### View

Next, we will create an _index view_ for our resource.  The index view
is meant to display the entire collection for this resource, i.e. a list of
all of our products.

Create a file with this path (you will have to create any intervening subfolders):

`app/views/products/index.html.erb`

This should end up creating the new subfolder `app/views/products` if it didn't
already exist, as well as the file `index.html.erb`.

Yes, that filename looks odd - it has two file extensions!  That's ok.
