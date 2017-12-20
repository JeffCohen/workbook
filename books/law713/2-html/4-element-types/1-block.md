# Block Elements

Elements are classified into two broad groups: _block_ elements
and _inline_ elements.  

When the browser is deciding how to draw an element on the screen,
the browser follows a certain set of rules referred to as
_normal flow_, which basically means:

* Elements start at the top of the page and work down
* Elements start at the left and go toward the right

How the browser decides exactly which element goes where
depends primarily on whether it's drawing a block
or inline element at that moment.

## Block Elements Start On a New Line

That's not exactly the technical definition but it's a great way
to begin to think about it.  Try this code inside of a `body` element:

``` html
Hello
<p>World!</p>
Goodbye.
```

View this code in your browser.

Why was "World!" drawn below "Hello"?  The `p` element is a block-level
element, so:

* It will start on a new line
* It will start on the left
* The height is determined by the font size (plus any padding and margin)
* It will reserve the full width on the screen for itself

That last point is why "Goodbye." appears on the line below.  Even though
there appears to be enough room to the right of "World", block-level
elements reserve the entire horizontal space for themselves.

Common block elements:

* `h1` thru `h6`
* `p`
* `div`
* `li`
* `form`
