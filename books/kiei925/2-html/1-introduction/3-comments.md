# Code Comments

Before we get too far, we need to learn how to
add _comments_.  A comment is a note to the developer.  It
is text within the source code that we do not want the computer
to interpret.  Every programming language has a concept
of code comments, but the syntax required to denote a comment
and set it apart from the rest of the source code is different
in each programming language.

## Syntax

In HTML, we indicate that a line of text is a comment like this:

```
<!-- This sentence will not appear to the user. -->
```

The special opening tag `<!--` marks the start of the text
to be ignored by the computer, and ends with `-->`.

Comments can last for several lines:

```
<!-- This sentence will not appear to the user.
Nor will this.
Or this.
-->
```

## Bonus: Disabling Code

The other main purpose of code comments is to
temporary disable some HTML code, perhaps as part of
a debugging strategy:

``` html
<h1>Hello!</h1>

<!-- <a href="http://www.google.com">Search</a> -->

<h2>Goodbye!</h2>
```

Try that in your browser to confirm which code will be
interpreted and which will not.

## Bonus Bonus: Keyboard Shortcut

Using comments to temporarily disable a line of code
is so common, you'll want to do it often.

In Atom, you can use the menu option `Edit | Toggle Comments`.  But
hopefully you'll be using this technique so much that the keyboard
shortcut will become second nature, `Cmd /` (on Windows, `CTRL /`).
