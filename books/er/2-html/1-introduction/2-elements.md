# Elements

Open up your text editor and type this into a new file:

``` html
<h1>Hello!</h1>
```

Save your file and open it in your browser.

Ta da!  You're a website developer!

## The Basics

The code you wrote consisted of one HTML _element_.  An element
consists of:

* An _opening tag_, in this case `<h1>`
* _Content_, in this case `Hello!`
* A _closing tag_, `</h1>`

The element is identified by its opening tag.  We would say that
we wrote an "h1 element".

## Attributes

Elements can also contain _attributes_.  Some elements require
the presence of certain attributes in order to function.
For example, let's add a link to Google:

``` html
<a href="https://www.google.com">Search</a>
```

Save the file and refresh your browser.  You should now have a link
that you can click to go to Google's home page.

The `href` attribute above is how the browser knew what to do
when the content _Search_ was clicked.

Attributes have a _name_ and a _value_, always separated by an `=`
sign, and the value is always enclosed in quotation marks.

In the above example,

* The attribute name is `href`
* The attribute value is `https://www.google.com`
