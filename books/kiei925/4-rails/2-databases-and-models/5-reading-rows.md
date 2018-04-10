# Reading Rows of Data

Reading, or *querying*, our model is also pretty easy.  There are lots of ways we to read data from the table, depending in what question you'd like to ask.

## Counting The Total Number of Rows

**How many books are there?**
`Book.count`

## Retrieving A Specific Row

**What is the first book?**
`Book.first`

**What is the last book?**
`Book.last`

**Retrieve the book that has an id of 5:**
`Book.find_by(id: 5)`

**Retrieve one book written by Plato:**
`Book.find_by(author: "Plato")`


## Retrieving Many Rows At Once

**Retrieve all books:**
`Book.all`

**Retrieve all hardcover books:**
`Book.where(hardcover: true)`

**Retrieve all books written by Plato:**
`Book.where(author: "Plato")`

**How many paperback books are there?**
`Book.where(hardcover: false).count`

**How many books did Plato write?**
`Book.where(author: "Plato").count`

**How many Plato hardcover books do we have?**
`Book.where(author: "Plato", hardcover: true).count`

## Accessing a Specific Row's Attributes

When you use `.find_by`, `.first`, or `.last`, you only receive
one row. Now, you can drill down to a specific attribute.

To make things a little easier to follow in these examples,
we show how to first capture the result of a query into a variable,
then use that variable to retrieve a specific attribute.

**Who wrote 'Sherlock Holmes'?**

``` ruby
mystery_book = Book.find_by(title: "Sherlock Holmes")
mystery_book.author
=> 'Sir Arthur Conan Doyle'
```

**Is 'Sherlock Holmes' in paperback or hardcover?**

``` ruby
mystery_book = Book.find_by(title: "Sherlock Holmes")
mystery_book.hardcover?
=> false
```

## Sorting

If you retrieve a set of rows by using `.all` or `.where`,
you can opt to sort the data by a specific column:

``` ruby
Book.all.order('title')
```

The default order is "ascending order".  We could have written
the same query like this:

``` ruby
Book.all.order('title asc')
```

To reverse the order, we can specify `desc` instead:

``` ruby
Book.all.order('title desc')
```

You can specify more than one column in order to deal with
tiebreakers or nested sorting situations.  For example,
here's how to get a list of all books sorted first by
author, then by title within each author:

``` ruby
Book.all.order('author, title')
```
