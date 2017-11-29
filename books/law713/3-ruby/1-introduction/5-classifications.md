# Classifications (aka Classes)

We have learned how to compose _expressions_ by combining
numbers, text, and various kinds of operators.

We can now be more technical in our definition of how these
expressions work.

## Classes

When we type literal numbers like `7` or `23`, Ruby understands them
because these characters on your keyboard are classified by Ruby
as numbers. On the other hand, when you use quotation marks to surround a word
like `"Hello"`, Ruby classifies that as a piece of text.

In truth, there are dozens of classifications that have been defined
for us.  We can discover how something has been classified
by using the `.class` method:

> Depending on your version of Ruby,
you might see `Fixnum` instead of
`Numeric`, but they mean the same thing.

``` irb
irb(main)> 7.class
=> Numeric
irb(main)> "Hello".class
=> String
irb(main)> fruit = "apple"
irb(main)> fruit.class
=> String
```

The `String` class is the technical classification for what we call text.
For the remainder of this book, we will use the term _string_ and
_text_ interchangeably.

Here's a sneak preview of what's coming up in [section 2](/2-ruby/2-lists).  An Array can keep track of a list of things.
 We use square brackets to denote an Array, and we use commas
 to separate each value:

``` irb
irb(main)> fruits = ["apple", "banana", "cookies"]
=> ["apple", "banana", "cookies"]
irb(main)> fruits.class
=> Array
```
