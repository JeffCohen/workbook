# Arrays

An _array_ is a list of arbitrary objects.  Here is a variable
named `favorites` that holds my favorite color, number, and sport:

``` irb
irb(main)> favorites = ["purple", 21, "Baseball"]
```

Notice how we use square brackets `[ ]` to enclose the list
of items, and we use commas to separate each item.


## Length

There are three ways to obtain the length of an array:

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

You'll need to know the position of the object you want to access.
We use square brackets `[ ]` around the position number in order
to retrieve an item. Positions start from zero:


``` irb
irb(main)> favorites[0]
=> "purple"
irb(main)> favorites[1]
=> 21
irb(main)> favorites[2]
=> "Baseball"
```

You can count backwards from the end of the list like this:

``` irb
irb(main)> favorites[-1]
=> "Baseball"
```
