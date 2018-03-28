# Methods

Consider our earlier example of the "dot operator" applied to some text:

``` irb
irb(main)> "hello".capitalize
=> "Hello"
```

The period character, commonly known as the "dot", combines an _object_ with a _method_.  

* An object is what's on the left side of the dot: a variable or a
literal value
* A method is a function that operates upon the object in some way.

In the previous example, the `capitalize` method performs work upon
the String object `"hello"`.

The result of this work &mdash; the string `"Hello"` &mdash; is the result of evaluating the entire expression `"hello".capitalize`.

All objects (that is, variables or literal values) can have
methods applied to them by using the dot operator.  However,
not all methods are applicable to all objects.  

Consider the following:

``` irb
irb(main)> "abc".upcase
=> "ABC"
irb(main)> 7.upcase
NoMethodError: undefined method `upcase' for 7:Integer
```

It doesn't make sense to apply the `upcase` method to the
number `7`, so Ruby reports that there's no such method
by that name that can be applied to the `7` which is an `Integer`.

But here is something we can do with numbers that
we can't do with text:

``` irb
irb(main)> 7.odd?
=> true
irb(main)> 7.even?
=> false
```

Cool, no?

This all leads us to the following golden rule:

_The class of an object determines the available methods that can be applied to it._
