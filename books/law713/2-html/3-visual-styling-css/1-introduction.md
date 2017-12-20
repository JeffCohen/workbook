# Visual Styles with CSS

Unlike HTML, CSS is a language that allows us to apply visual styles
to our document.

> HTML is for marking up content; CSS is for styling.

CSS stands for _cascading style sheets_.  CSS code is a list of style _rules_.  Rules can be provided within
an HTML `<style>` element, or they can live in a dedicated `.css` file.

For this course, all of our CSS rules will live in their own file,
apart from the HTML content that they will be applied to.  We can
apply a CSS file to any given HTML file by including an HTML
line like this:

`<link rel="stylesheet" href="styles.css">`

where `styles.css` can actually be any filename you want.

The remainder of this section will demonstrate how to write
CSS rules.  We will assume that you will put them in a file
named `styles.css` in the same directory as your HTML file.

Copy and paste this code into you HTML file and open it in your
browser so that you can code along.

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>My Page</title>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <h1>Hello!</h1>

    <p>This is my amazing website.  Look around and
       find <span class="highlighter">amazing things!</span> This is the main paragraph
       of this page.  Isn't it amazing?
     </p>

     <p>My favorite things are:</p>
     <ul>
       <li>Baseball</li>
       <li class="highlighter">Cookies</li>
       <li>Computer Progamming</li>
       <li>The audio archives of the Supreme Court</li>
     </ul>

  </body>
</html>
```
