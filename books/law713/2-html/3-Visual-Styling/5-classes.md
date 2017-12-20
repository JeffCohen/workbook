# Classes

We now come to one of the most powerful uses of CSS, which
is to name a rule as a _classification_ or _class_.  A class
is a set of CSS properties that can be applied to any
HTML element at any time.

For example, suppose we decide to we often want to apply
a yellow highlighter effect on certain elements, and we can't
predict in advance which elements those will be.

We can define our class like this:

``` css
.highlighter {
  background-color: yellow;
}
```

Every HTML element that contains a `class` attribute of `highlighter`
will have this rule applied to it, as in the example HTML at the
beginning of this section.

Go ahead and refresh your browser to see the difference.

<img width="700" src="https://www.evernote.com/l/AAacwWHGr-lAppFj0UAhpgKZYhbzMIlko78B/image.png">

If you're wondering why the highlight extends all the way to the edge
of the list element, we'll cover that in the next section.
