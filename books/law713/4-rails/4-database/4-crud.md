# Create-Read-Update-Delete (CRUD)


## Creating New Rows

Adding new rows to a model's data table is pretty easy.  We just use the `.create` method on our model class, and provide a *hash* of data that assigns cell values for each column in our new row.

``` ruby
irb(main):001:0> b = Book.new
irb(main):002:0> b.title = "Sherlock Holmes"
irb(main):004:0> b.author = "Sir Arthur Conan Doyle"
irb(main):005:0> b.save
   (0.1ms)  begin transaction
  SQL (0.4ms)  INSERT INTO "books" ("title") VALUES (?)  [["title", "Sherlock Holmes"],["author", "Sir Arthur Conan Doyle"]]
   (1.1ms)  commit transaction
=> #<Book {"id"=>3, "title"=>"Sherlock Holmes", "summary"=>nil, "author"=>"Arthur Conan Doyle", "hardcover"=>nil}>
```

There are some important things to notice in the above example:

* We don't have to provide values for every column.  If you don't provide a value for a `boolean` column, it will be assigned as `false`.  For all other column types, they will be `nil`.
* The `INSERT` jargon you see above is Ruby talking to the database on our behalf, instructing it to insert a new row into the table.
* The final line that starts with `=>` shows us the result of our `save` command.  We created a new row for the `Book` model, and the database assigned it an `id` value of `3`.

## Reading Rows of Data

Reading, or *querying*, our model is also pretty easy.  There are lots of ways we to read data from the table, depending in what question you'd like to ask.

**How Many Rows Are There?**
`Book.count`

**Display All Rows**
`Book.all`

**What is the first book?**
`Book.first`

**What is the last book?**
`Book.last`

**Retrieve the book that has an `id` of 1.**
`Book.find_by(id: 1)`

**Retrieve all hardcover books.**
`Book.where(hardcover: true)`

**Retrieve the first book in the table that was written by Plato.**
`Book.find_by(author: "Plato")`
`Book.where(author: "Plato").first`

**How many paperback books are there?**
`Book.where(hardcover: false).count`

## Accessing a Row's Attributes

Once you have a row's worth of data in hand, you can drill down to a specific attribute.  To make things a little easier to follow in these examples, we show how to first capture the result of a query into a variable, then ask for a specific attribute.

**Who wrote 'Sherlock Holmes'?**

``` ruby
mystery_book = Book.find_by(title: "Sherlock Holmes")
mystery_book.author
```

**Is 'Sherlock Holmes' in paperback or hardcover?**

``` ruby
mystery_book = Book.find_by(title: "Sherlock Holmes")
mystery_book.hardcover?
=> false
```

## Updating a Row

Another thing you can do once you have retrieved a specific row is update it's attribute values.

``` ruby
mystery_book = Book.find_by(title: "Sherlock Holmes")
mystery_book.title = "The Adventures of Sherlock Holmes"
mystery_book.save
```

Notice that we have to call the `.save` method to update the data table based on the contents of our `mystery_book` variable.

## Deleting a Row

Finally, here's how we delete a row:

``` ruby
mystery_book = Book.find_by(title: "Sherlock Holmes")
mystery_book.delete
```

If you want to delete every row in the table in one fell swoop, you can. Here, we will ask for a before-and-after count to prove that we did indeed lose all of our data:

``` ruby
Book.count
=> 1

Book.delete_all
=> 1

Book.count
=> 0
```
