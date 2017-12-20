# Forms

A _form_ allows the user to input data.  A form is a series
of one or more interactive elements that allow the user to enter text or
make selections.

Once the user has made their selections, the user
_submits_ the form to a server, which can process the
incoming data.  Therefore, although HTML can present a form,
HTML alone cannot do anything with the data provided.

The `<form>` element encompasses all interactive elements. Each
interactive element must have a _name_ attribute so that the
corresponding data can be distinguished from the other form
elements.

See [W3Schools](https://www.w3schools.com/tags/tag_form.asp) for
details on all of the possibilities.

We will highlight the `input` and `select` elements here.


## `<input>`

This is the most common form element and quite versatile.

The `type` attribute determines the behavior of the element.

Here are a few examples:

<p><input type="checkbox">Check Me</p>
<p><input type="checkbox" checked>Initially Checked</p>
<p><input type="text" placeholder="Enter some text..."></p>
<p><input type="password" placeholder="Say the secret word"></p>
<p>
  <input type="radio" name="fruits">Apples</input>
  <input type="radio" name="fruits">Bananas</input>
  <input type="radio" name="fruits">Cherries</input>
</p>
<p>What's your favorite color? <input type="color"></p>



``` html
<p><input type="checkbox">Check Me</p>
<p><input type="checkbox" checked>Initially Checked</p>
<p><input type="text" placeholder="Enter some text..."></p>
<p><input type="password" placeholder="Say the secret word"></p>
<p>
  <input type="radio" name="fruits">Apples</input>
  <input type="radio" name="fruits">Bananas</input>
  <input type="radio" name="fruits">Cherries</input>
</p>
<p>What's your favorite color? <input type="color"></p>
```


## Select Lists

The `select` element uses child `option` elements to generate a list
that the user can select from.

Choose one:
<select>
  <option>Apples</option>
  <option>Bananas</option>
  <option>Cherries</option>
  <option>Figs</option>
  <option>Kiwi</option>
  <option>Oranges</option>
</select>

``` html
Choose one:
<select>
  <option>Apples</option>
  <option>Bananas</option>
  <option>Cherries</option>
  <option>Figs</option>
  <option>Kiwi</option>
  <option>Oranges</option>
</select>
```
