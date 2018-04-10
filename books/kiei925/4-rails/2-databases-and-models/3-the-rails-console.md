# The Console

We can use the `rails console` to activate an `irb` session that
is preloaded with our models.

Models are our gateway to our application's data set.  Each model is a table of data.  We can have as many rows in the table as we want.  The columns are defined by the model's schema.

## CRUD

Once a model's table schema has been defined in the `db/models.yml` file and the corresponding `app/models` class file exists, we can create new rows to the table by having the user fill out forms in our web interface or by manually adding rows by using the `rails console` tool.  We can also read rows from the table, update individual rows, and delete rows.

These four activities --- create, read, update, and delete --- are often referred to by their acronym, `CRUD`.

## Starting the Console

> You need to restart your server anytime you modify
  the `models.yml` file.

Use a Terminal window to start the console, making sure that
your current directory is set to your application's directory:

```
~/code/myapp$ rails console
```

You should see something like this:
```
Rails Console
--------------------------------------------------
* Type 'exit' (or press CTRL-D) when you're done.
* Press Ctrl-C if things seem to get stuck.
* Use the up/down arrows to repeat commands.

Models: Book

Use this console to create, read, update, and delete rows from the database.
Or simply type the name of a model to see what columns it has.

Loading development environment (Rails 5.1.6)
2.4.1 :001>
```
