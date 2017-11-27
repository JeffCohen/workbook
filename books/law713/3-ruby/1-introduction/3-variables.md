# Variables

To code along, make sure your `irb` session is still open
from the previous chapter, or you can open a new `irb` session
from your command prompt:

``` shell
$ irb

irb(main)>
```

## Assigning Expressions to Variables

It is often helpful to save the results of an expression into
a named variable, so that you can use it later.

Here's a quick example.  Code along, making sure you type
the code exactly as shown:

``` irb
irb(main)> name = "Alice"
=> "Alice"
irb(main)> "Hi, " + name
=> "Hi, Alice"
```

In the above example, we first _assigned_ the text `"Alice"` to
a _variable_ called `name`.  This is very similar to the memory
facility in your calculator, but we're allowed to have as many
variables as we want by giving them unique names.

Here are more examples of how to use variables:

``` irb
irb(main)> sport = "Baseball"
=> "Baseball"
irb(main)> color = "Purple"
=> "Purple"
irb(main)> sport
=> "Baseball"
irb(main)> color
=> "Purple"
```

Notice how `irb` will parrot back the value of a variable when asked.

## Rules


Before we continue, we must mention a few very important rules:

1. Variable names must always be lowercase.
2. If you want to use a name that consists of two English words,
for example, "favorite color", you must use an underscore to combine the
words into a single variable name: `favorite_words`.  It's easier to read than `favoritecolor`.
3. Variable names may not contain spaces or punctuation in a variable name.
You can use lowercase letters, numbers, and underscores, but the first character must
always be a lowercase letter.

## Reassignment

You can assign a new value to a variable at any time.  The old value
is simply discarded:

``` irb
irb(main)> lucky_number = 5
=> 5
irb(main)> lucky_number = 10
=> 10
irb(main)> lucky_number * 2
=> 20
```

## Practice

Here are some more examples for you to try:

> **PRO TIP**: Use the up-arrow key to recall previous commands.

``` irb
irb(main)> favorite_drink = "coffee"
irb(main)> favorite_drink.capitalize
irb(main)> favorite_drink + " cup"
irb(main)> favorite_drink = "tea"
irb(main)> favorite_drink.capitalize
irb(main)> favorite_flavor = "mint"
irb(main)> favorite_flavor + favorite_drink
irb(main)> favorite_flavor + "  " + favorite_drink
```
