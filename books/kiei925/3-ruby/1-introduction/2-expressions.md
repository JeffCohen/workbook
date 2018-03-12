# Expressions

You actually have two Ruby interpreters installed on your computer.

The first one is called _interactive Ruby_, or _irb_ for short.

Open your command prompt, and start `irb` like this:

``` shell
$ irb
```

You should see a new kind of prompt:

``` shell
irb(main)> _
```

It looks similar to your command prompt, but this is the Ruby prompt.
Whenever you see `irb`, you know that the computer is now
expecting Ruby instructions, not command line instructions.

To exit `irb` and go back to your command line simply type `exit`:

``` shell
irb(main)> exit
```

Or if you prefer, you can press `CTRL-D` to exit.

## Math Expressions

Ruby's grammar is based on the concept of _expressions_.  An expression
is defined as an _object_ (a number or a piece of text), optionally followed by an _operator_ and
more objects.

Let's start with an example.  Ruby's language is a superset of
a programming language you already know: your calculator.
Code along with me by entering the following expressions into
your `irb` session and pressing `[Enter]` after each line.

``` irb
irb(main)> 5
=> 5
irb(main)> 5 + 5
=> 10
```

Notice how we can enter simple math expressions and they will be
evaluated immediately.  If you have at least one operator in your
expression, Ruby will do its best to evaluate your expression,
simplifying it until it cannot be reduced any further.

Try some more.  Be curious.  Here are a few
examples:

``` irb
irb(main)> 5 + 5 * 2
=> 15
irb(main)> 7 + (2 * 3)
=> 13
```

If you try something and Ruby doesn't understand your expression,
you might see something like this:

``` irb
irb(main)> 2t + 10
SyntaxError: (irb):1: syntax error, unexpected tIDENTIFIER, expecting end-of-input
2t + 5
  ^
```

This is an example of an _error message_.  These happen all the time.
It doesn't mean that you did anything wrong.  It just means that Ruby
can't quite understand what you're trying to do.  You can simply
try again to type your expression.

Sometimes, Ruby thinks that you haven't finished your expression,
and it's waiting for you to finish:

``` irb
irb(main)> 6 + 3 +
irb(main)*
```

See that `*`?  That means Ruby thinks you want to keep entering
more terms in your expression.  You can finish it:

``` irb
irb(main)> 6 + 3 +
irb(main)* 4
=> 13
```

But if you feel "stuck" in this mode and want to just cancel your
expression and start over, just press `CTRL-C` to reset your
`irb` prompt.


## Text Expressions

Let's go beyond a simple calculator.  Ruby can handle more than
just numbers.  It can also handle text.  We can create text fragments
by surrounding words with quotation marks, like this:

``` irb
irb(main)> "hello"
=> "hello"
```

If you forget the last quotation mark, Ruby will think you
want to continue on the next line by showing a quotation mark
in the prompt:

``` irb
irb(main)> "hello
irb(main)"
```

As before you can finish your expression, or press `CTRL-C` to reset.

## Text Operations

We will close this chapter by learning how to perform some operations
on text.  Here are some examples, but I'm not showing you the full
session output - you'll have to try these expressions yourself
to see what happens!  Have fun, be curious, and don't forget to
press `CTRL-C` if things get stuck.

Type these expressions one at a time to see what happens!

``` irb
irb(main)> "Hello  " + "there!"
irb(main)> "Hi " * 5
irb(main)> "Hello".length
irb(main)> "how are you today?".capitalize
irb(main)> "computer".reverse
irb(main)> "I Live In Chicago".upcase
irb(main)> "I Live In Chicago".downcase
irb(main)> "I Live In Chicago".swapcase
irb(main)> "Hello".center(20)
```
