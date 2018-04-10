# Database-Backed Models

A _model_ is a software representation of something that exists
in our real world.  All software is an attempt to solve a problem
that exists in the real world, and will need to represent the
real-world problem domain in software.

Models also act as sources of data.  Each model is connected
to a table in our database.

## Defining Your Models

We use the `db/models.yml` file to define our model schema.
Here we've created two models:


``` yml
Book
  title: text
  author: text
  hardcover: boolean

Publisher
  name: text
```

**Be careful**!

* The model names (`Book`, `Publisher`) must start in column 1
* The model names (`Book`, `Publisher`) must start with a capital letter
* The model names (`Book`, `Publisher`) should be _singular nouns_
* Attributes (`title`, `author`, `hardcover`, and `name`) must be _lowercase_
* Attributes must be indented and by exactly the same amount
* There must be a colon `:` between the attribute name `title` and
  its data type, `text`
