# Combining Expressions with Operators

A single value by itself isn't usually interesting.  We use
operators to combine values together to form complex
and intriguing combinations.

To code along, make sure your `irb` session is still open
from the previous chapter, or you can open a new `irb` session
from your command prompt:

``` shell
$ irb

irb(main)>
```

## Arithmetic Operators

Here's how we do basic math in Ruby.  We use an asterisk `*` for
multiplication, `/` for division, `**` for exponentiation, and
`%` for modulus (remainder arithmetic).

``` irb
irb(main)> 3 + 3
=> 6
irb(main)> 3 * 3
=> 9
irb(main)> 3 / 3
=> 1
irb(main)> 3 ** 3
=> 27
irb(main)> 9 % 3
=> 0
irb(main)> 10 % 3
=> 1
irb(main)> 5 / 3
=> 1
```

Whoa - that last expression was probably a surprise:  `5` divided
by `3` is defintely not supposed to equal `1`.  What's going on?

This is one of the few surprises in Ruby.  When performing division,
if both numbers are integers, the result will also be a whole integer.

If we want Ruby to be more precise, one of
the numbers must contain a decimal point:

``` irb
irb(main)> 5.0 / 3
=> 1.6666666667
```

## Text Operators

This is where it gets fun:

``` irb
irb(main)> "abc" + "def"
=> "abcdef"
irb(main)> "howdy" * 3
=> "howdyhowdyhowdy"
irb(main)> "-" * 30
=> "------------------------------"
```

Now the best part.  Text values have _methods_ associated with them
that can do something with the text.  We invoke a method by using the
**dot operator** `.`, like this:

``` irb
irb(main)> "abc".length
=> 3
irb(main)> "howdy".upcase
=> "HOWDY"
```


## Practice

Here are some more examples for you to try:

> **PRO TIP**: Use the up-arrow key to recall previous commands.

``` irb
irb(main)> favorite_drink = "coffee"
irb(main)> favorite_drink.capitalize
irb(main)> favorite_drink + " cup"
irb(main)> favorite_drink = "tea"
irb(main)> favorite_flavor = "mint"
irb(main)> favorite_flavor + favorite_drink
irb(main)> (favorite_flavor + "  " + favorite_drink).upcase
```
