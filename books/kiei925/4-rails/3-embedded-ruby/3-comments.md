# Code Comments

In HTML, we can add comments like this:

``` html
<!-- This is a comment -->
```

But when embedding Ruby, it might not be obvious how to comment out your code.

Consider this example:

``` erb
<!-- I have commented out all of the following code

You have <%%= Product.count %> products.

-->
```

The embedded Ruby _still executes_ and will be included in the HTML comment!

If you want to disable the Ruby itself, you need to comment it out specifically with `#`:

``` erb
<!-- I have commented out all of the following code

You have <%%=# Product.count %> products

-->
```

This way, the Ruby code will never be executed.
