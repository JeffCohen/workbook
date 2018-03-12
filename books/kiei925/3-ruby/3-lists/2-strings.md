# Strings

A _string_ is a list of characters:

``` irb
irb(main)> color = "purple"
```
You can use double-quotes or single-quotes:

``` irb
irb(main)> color = 'purple'
```

There are small differences between the two styles that we
don't care about.  For now, use either one you want.

## Length

There are two ways to obtain the length of a string:

``` irb
irb(main)> color.length
=> 6
irb(main)> color.size
=> 6
```

Use whichever one you want.


## Item Access

You'll need to know the position of the character you want to access.
We use square brackets `[ ]` around the position number in order
to retrieve an item. Positions start from zero:


``` irb
irb(main)> color[0]
=> "p"
irb(main)> color[1]
=> "u"
irb(main)> color[2]
=> "r"
```

You can count backwards from the end of the list like this:

``` irb
irb(main)> color[-1]
=> "e"
```
