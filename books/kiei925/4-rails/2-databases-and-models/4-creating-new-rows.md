# Creating New Rows

_For these examples, it is assumed you have a models.yml file like this:_

``` yml
Book
  title: text
  author: text
  hardcover: boolean
```

We use the `.create` method on our model to provide a *hash* of data
that assigns cell values for each column in the new row.

``` ruby
2.4.1 :001 > Book.create title: 'Sherlock Holmes', author: 'Sir Arthur Conan Doyle'
   (0.1ms)  begin transaction
  SQL (0.8ms)  INSERT INTO "books" ("title", "author", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["title", "Sherlock Holmes"], ["author", "Sir Arthur Conan Doyle"], ["created_at", "2018-04-10 02:36:47.671802"], ["updated_at", "2018-04-10 02:36:47.671802"]]
   (4.1ms)  commit transaction
#<Book:0x00000005195320> {
            :id => 1,
         :title => "Sherlock Holmes",
        :author => "Sir Arthur Conan Doyle",
     :hardcover => false,
    :created_at => Mon, 09 Apr 2018 21:36:47 CDT -05:00,
    :updated_at => Mon, 09 Apr 2018 21:36:47 CDT -05:00
}
2.4.1 :002 >
```

There are some important things to notice in the above example:

* We don't have to provide values for every column.  If you don't provide a value for a `boolean` column, it will be assigned as `false`.  For all other column types, they will be `nil`.
* The `INSERT` jargon you see above is Ruby talking to the database on our behalf, instructing it to insert a new row into the table.
* The final line that starts with `=>` shows us the result of our `.create` command.  We created a new row for the `Book` model, and the database assigned it an `id` value of `1`.
