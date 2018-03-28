# Comparisons

All programming languages have a notion of _truth_ built into them.
Given two expressions, the computer can discern whether or not
they are equivalent to each other.

In addition to numbers and text, Ruby has two special values,
`true` and `false`.  These values are used when the computer
is asked to compare two expressions.

Try the following expressions in an `irb` session to get a sense of how
we make comparisons.  

Pay special attention to the double-equal
operator `==` which is used to compare two expressions against
each other.

The `!=` operator means "is not equal to."

> **Remember**, equality comparisons use the `==` operator,
not the single `=` assignment operator.

``` irb
irb(main)> x = nil
=> nil

irb(main)> x.nil?
=> true

irb(main)> x.to_i
=> 0

irb(main)> x.to_f
=> 0.0

irb(main)> 1 == 1
=> true

irb(main)> 1 != 2
=> true

irb(main)> 1 < 2
=> true

irb(main)> 2 > 1
=> false

irb(main)> "hello" == "hello"
=> true

irb(main)> "hello" == "Hello"
=> false

irb(main)> "goodbye".upcase == "GOODBYE"
=> true

irb(main)> "goodbye".upcase != "HELLO"
=> true
```
