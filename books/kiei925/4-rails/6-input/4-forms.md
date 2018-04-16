# Using Forms as Input

The `<form>` element allows the user to provide _input_ to our application.
It usually contains child elements (called _controls_) such as `<input>`
that let users enter search criteria, provide contact information,
make selections, and so on.

## Submitting Data

Forms don't actually do anything, however, until the user _submits_ the form
but clicking a "Submit" button or something similar.  When a user submits
the form, the browser will send the names and values of the input elements
to the URL that is specified by the `action` attribute of the form element.

```
<form action="/movies" method="get">
  <p>
    Search by title:
    <input type="text" name="keyword">
  </p>
  <button>Submit</button>
</form>
```

The `name` attribute of the `<input>` element is VERY important.  Names uniquely
identify each input value.  Without a name, the browser won't submit the value
of that particular input control.

## The `method` Attribute

In this line of code:

```
<form action="/movies" method="get">
```

the `method` attribute is essential.  It specifies the kind of request that
should be made to the server when the user submits the form. In this example,
`method="get"` means that we are submitting this data only to get information
back.  Here, we are searching for movies, so we are telling the server
that we are submitting this form only to get certain information, not to update
or change anything in the server's database.

In other situations, we can use `method="post"`. The `post` value is used
to indicate that we are submitting data with the explicit intention to
"post" some new data onto the database.  For example, a user signup form
might look like this:

```
<form action="/users" method="post">
  <p>
    Email: <input type="text" name="email">
  </p>
  <p>
    Password: <input type="password" name="password">
  </p>
  <button>Sign me up!</button>
</form>
```

Here, we must use `method="post"` because the goal of our form is to
insert the user's information into the database.

## Limitations

Unfortunately, HTML5 doesn't comply with the latest security policies.
The following HTTP methods are defined but HTML5 only supports two of them:

|HTTP Method|Reason|Supported in HTML?|
|-----------|------|------------------|
|`get`|Retrieve data|Yes|    
|`post`|Add new data|Yes|    
|`patch`|Update existing data|No|    
|`delete`|Delete existing data|No|    

To work around this problem, the Rails framework provides [view helpers](/4-rails/5-input/5-view-helpers) such as `<%%= form_tag %>`,
which is a replacement for the standard `<form>` element.  `form_tag` supports
all four HTTP methods, but is beyond the scope of this workbook.
