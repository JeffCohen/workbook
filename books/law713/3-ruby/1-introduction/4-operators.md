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

## Watch Out!

Sometimes, you might accidentally try to combine text with a number.
Ruby won't understand what to do in that case:

``` irb
irb(main)> "Apollo 11 landed on the moon in " + 1969
TypeError: no implicit conversion of Integer into String
	from (irb):in `+'
```

See that `TypeError`?  That means that we tried to add two objects
together of different _types_: one object was text but the other
was a number (1969).  

## Type Conversions

There are two ways to solve this problem.  The first is to
tell Ruby to convert the number 1969 into its textual representation,
like this: `1969.to_s`.  The `.to_s` part converts the number
into a "string" of text.  We will talk more about strings in the chapter
on [Classifications](/3-ruby/1-introduction/7-classifications).

``` irb
irb(main)> "Apollo 11 landed on the moon in " + 1969.to_s
=> "Apollo 11 landed on the moon in 1969"
```

## String Interpolation

Another solution is to use _string interpolation_, which enables
you to embed any Ruby expression right inside of a piece of text:

``` irb
irb(main)> "Apollo 11 landed on the moon in #{1969}"
=> "Apollo 11 landed on the moon in 1969"
```

See that strange `#{  }` part?  That's the special signal that
we want Ruby to first evaluate the expression inside.  Here's
another example:

``` irb
irb(main)> "Apollo 11 landed on the moon in #{1969}"
=> "Apollo 11 landed on the moon in 1969"
```


## Practice

Here are some expressions for you to try:

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
