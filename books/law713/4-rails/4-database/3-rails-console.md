# The Console

We can use the `rails console` to activate an `irb` session that
is preloaded with our models.

Models are our gateway to our application's data set.  Each model is a table of data.  We can have as many rows in the table as we want.  The columns are defined by the model's schema.

Once a model's table schema has been defined in the `db/models.yml` file and the corresponding `app/models` class file exists, we can create new rows to the table by having the user fill out forms in our web interface or by manually adding rows by using the `rails console` tool.  We can also read rows from the table, update individual rows, and delete rows.

These four activities --- create, read, update, and delete --- are often referred to by their acronum, `crud`.

This cheat sheet summarizes how to CRUD any given model using the Rails console.

For the purposes of this cheat sheet, we will presume that our `db/models.yml` file looks like this:

``` ruby
Book:
  title: string
  author: string
  summary: text
  hardcover: boolean
```

and that you've run the `rails db:console` command.  You should end up with a Book model class defined in `app/models/book.rb` that looks like this:

``` ruby
class Book < ApplicationRecord
end
```

## Start the Rails Console

To begin, make sure you've started the console by opening a command prompt at your application folder:

```
rails console
```

You should see something like this:
```
Welcome to the Rails Console.
------------------------------------------------------------

Use this console to add, update, and delete rows from the database.

Models: Book

HINTS:
* Type 'exit' (or press Ctrl-D) to when you're done.
* Press Ctrl-C if things seem to get stuck.
* Use the up/down arrows to repeat commands.
* Type the name of a Model to see what columns it has.

Loading development environment (Rails 5.1.4)
irb(main):001:0>
```

**IMPORTANT**: Don't forget to read the HINTS section that's displayed for you!
