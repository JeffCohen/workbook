# Code Comments

Sometimes when writing code, we wish to embed a note to ourselves.
Every programming language contains a facility for writing
"comments".  A comment is a line of code (or part of a line) that
is intended for the human author to read, and for the computer
to completely ignore.

Ruby uses the `#` sign to indicate the beginning of a comment.
All characters after the `#` sign are ignored through the end
of the line:

Notice here that Ruby ignores the note "meters/second per second",
which would have otherwised cause a syntax error.

``` irb
irb(main)> gravity = 9.8   # meters/second per second
=> 9.8
```

Try removing the `#` to see what would happen!

## Exception: Text

Inside quotation marks as part of a text fragment, the `#` is not treated as the beginning of a comment:

``` irb
irb(main)> tweet = "Programming is fun! #ruby #programming"
=> "Programming is fun! #ruby #programming"
```
