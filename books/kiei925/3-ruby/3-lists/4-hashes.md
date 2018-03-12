# Hashes

A _hash_ is a list of _key-value pairs_.  Here is a variable
named `favorites` that holds my favorite color, number, and sport:

``` irb
irb(main)> favorites = { "color" => "purple", "number" => 21, "sport" => "Baseball" }
```

Notice how we use curly braces `{  }` to enclose the list
of items, and we use commas to separate each item.

We use the "hash rocket" operator `=>` (an equal sign and a greater-than
  sign put together) to associate keys with their values.


## Length

There are three ways to obtain the length of a hash:

``` irb
irb(main)> favorites.length
=> 3
irb(main)> favorites.size
=> 3
irb(main)> favorites.count
=> 3
```

Use whichever one you want.


## Item Access

You'll need to know the _key_ of the object you want to access.
As always, we use square brackets `[ ]` to retrieve an item.
You'll need to know the position of the character you want to access.

> Be sure to include the quotation marks in the key!

``` irb
irb(main)> favorites["color"]
=> "purple"
irb(main)> favorites["number"]
=> 21
irb(main)> favorites["sport"]
=> "Baseball"
```
