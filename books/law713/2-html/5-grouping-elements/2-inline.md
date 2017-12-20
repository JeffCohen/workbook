# Grouping with `<SPAN>`

A `span` is simply the inline equivalent of `div`. Sometimes we need to group a bunch of inline elements together
as a unit for purposes of CSS styling.

A `span` has no visible representation itself, but is simply
a grouping construct so that you can apply a CSS rule to the
group as a whole.

## The Problem

Consider this problem: we'd like to draw a single green border that
surrounds the phrase "cold in the winter:"

``` html
<p>Chicago is cold in the winter.</p>
```

The following CSS doesn't quite work.  It draws a border around the entire paragraph (can you explain why?):

``` css
p { border: solid 3px green; padding: 12px; }
```

## The Solution

First, we group the elements together with a `span` and apply a class
for our CSS rule:

``` html
<p>Chicago is <span class="framed">cold in the winter.</span></p>
```

Next, we rewrite our CSS rule as a class definition:

``` css
.framed { border: solid 3px green; padding: 12px; }
```

Try it!
