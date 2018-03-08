# Working with Text

Sometimes, you might accidentally try to combine text with a number.
Ruby won't understand what to do in that case:

``` irb
irb(main)> "Apollo 11 landed on the moon in " + 1969
TypeError: no implicit conversion of Integer into String
	from (irb):in `+'
```

Don't panic when you see error messages like this.  This `TypeError` simply means
that we tried to add two objects together of different _types_:
one object was text but the other was a number.  The `+` operator isn't
smart enough what to do in this case.  

There are two ways to solve this problem.  The first uses a _type
conversion_, and the second uses _string interpolation_.

## Type Conversions

We can tell Ruby to convert the number 1969 into its textual representation,
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
irb(main)> "There are #{4 + 3 + 2 + 1} bowling pins."
=> "There are 10 bowling pins."
```

## Multi-Line Text

We can create a text object that represents several lines of text.
We can use a special character sequence, `\n`, to represent a new line:

``` irb
irb(main)> "Roses are red\nViolets are blue\nRuby is cool\nAnd so are you\n"
=> "Roses are red\nViolets are blue\nRuby is cool\nAnd so are you\n"
```

Hmmm, that didn't seem to do anything special yet, but they will take effect
when we use the `print` function:


``` irb
irb(main)> print("Roses are red\nViolets are blue\nRuby is cool\nAnd so are you\n")
Roses are red
Violets are blue
Ruby is cool
And so are you
=> nil
```

<div class="alert alert-primary" role="alert">
  When using functions like print()</code>,
  make sure the first parenthesis is tight against
  the function name without any spaces:  &nbsp;
  <code>print()</code>  &nbsp; not &nbsp; <code>print&nbsp;&nbsp;()</code>.
</div>
