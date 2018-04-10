# Overview

There are three ways that users can provide input to our application:

* URL path components (`/books/hamlet`)
* Querystring parameters (`/books?title=hamlet`)
* Forms

Interestingly, no matter how the input is provided, we have only
one place to look to receive the input:

* `params[]`

The `params` hash will always contain the user's input.  If we
want our app to respond based on the user's choices, then we
need to learn how to use the `params` hash to influence the HTML
we generate or the manner in which we update the database.
