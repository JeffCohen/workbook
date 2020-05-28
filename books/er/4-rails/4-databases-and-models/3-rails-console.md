# The Console

<div class="col-6 text-center alert alert-danger" role="alert">
  <h3>NOTE: This section is still being written.</h3>
</div>

We can use the `rails console` to activate an `irb` session that
is preloaded with our models.

Models are our gateway to our application's data set.  Each model is a table of data.  We can have as many rows in the table as we want.  The columns are defined by the model's schema.

Once a model's table has been implemented by a migration and the corresponding `app/models/` class file exists, we can create new rows to the table by having the user fill out forms in our web interface or by manually adding rows by using the `rails console` tool.  We can also read rows from the table, update individual rows, and delete rows.

These four activities --- create, read, update, and delete --- are often referred to by their acronum, `crud`.

This cheat sheet summarizes how to CRUD any given model using the Rails console.

For the purposes of this cheat sheet, we will presume we have a migration file file like this:

``` ruby
# db/migrations/....create_books.rb
class CreateBooks < ActiveRecord::Migration

  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :summary
      t.boolean :hardcover, default: false
      t.timestamps
    end
  end

end
  
```

and that you've run the `rails db:migrate` command.  You should end up with a Book model class defined in `app/models/book.rb` that looks like this:

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
Loading development environment (Rails 6.0.3)
irb(main):001:0>
```

