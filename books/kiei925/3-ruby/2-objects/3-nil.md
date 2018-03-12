# `nil`

<%= thumbnail_for 'https://www.evernote.com/l/AAY4Yx5gr0FMKIzcJ2qKOUBTW51KxwQYsbkB/image.png', class: 'float-right', width: '200px' %>

<hr>

Sometimes, a variable has a name but does not refer to any particular value.  In this
situation, we need to indicate that a variable is empty.

Ruby uses the special value `nil` to represent "nothing".

Let's look at an example of the dangers you need to watch out for when
a variable is `nil`.

## Examples

Suppose we have an array and we try to retrieve an element:

``` irb
irb(main)> favorites = ["purple", "baseball", 21]

irb(main)> item = favorites[9]
```

Be careful! There are only three elements, so `9` is way past the end of the array.  This means
that `favorites[9]` will return the special value `nil` instead of an array element.

We can check if the variable `item` has the value `nil`.  Here are two ways to check. Both of these expressions will result in the value `true`:

``` irb
irb(main)> item == nil
```
``` irb
irb(main)> item.nil?
```

Or, imagine we have a hash:

``` irb
irb(main)> favorites = { "sport" => "baseball", "color" => "purple", "number" => 21 }
irb(main)> food = favorites["snack"]
```

The `favorites` hash does not have a key named `"snack"` so the expression
`favoriates["snack"]` will return the value `nil`.  Again, both of the following
expressions will evaulate to `true`

``` irb
irb(main)> food == nil
```
```
irb(main)> food.nil?
```

## The Most Famous Error Message in Ruby

Suppose we now try to call a method on our `food` variable (which we know to be `nil`):

``` irb
irb(main)> food.capitalize
NoMethodError: undefined method `length' for nil:NilClass
```

You can't do much with a `nil` value, and you certainly can't `capitalize` it.  

If you try to call a method on `nil` value, you will almost certainly get an error
message like this.  There are only a small handful of methods that you are
allowed to call on a value that's `nil`:

``` irb
irb(main)> x = nil

irb(main)> x.nil?
true

irb(main)> x.to_i
0

irb(main)> x.to_f
0.0
```

Any other attempt do something with a `nil` value will result in the error
message of the form `Undefined method [method name] for nil:NilClass`.


## Consider The Following

Given a string object with no characters in it:

```
email = ""
```

What will happen with these expressions? (hint: try it!)

```
email == nil
```
```
email.nil?
```
```
email.length
```
