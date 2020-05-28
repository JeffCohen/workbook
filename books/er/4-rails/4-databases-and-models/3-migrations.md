# Database Migrations


In the last chapter, we defined a database-backed model to represent a Movie:

``` ruby
class Movie < ActiveRecord::Base

  attr_accessor :title

  def buy_tickets
    # Add code here to let the user purchase tickets
    # ...
  end

end
```

What we want to do is connect this Ruby class to a specific database table, so that
objects of our class can get their data from specific rows in a table.  

We need to do two things:

* We want to create a table that can hold data for all of our movies
* We want to tell Rails that our `Movie` model should gets its data from the new table 

## Database Design

We will accomplish both of these things with a _Rails migration_.  A migration is just Ruby code 
that, when executed, will talk to the database and add a new table into it.

In order to create a database table, we will need to know the following:

* The name of the table we want to create
* A list of columns that should be in the table (each column has a name and a data type)

Let's say that we want to store the title and year of release for each movie in a table like this:

|title|year|
|-----|----|
|Apollo 13|1995|
|Star Wars|1977|
|Green Book|2018|

So far, so good.  Now, what should we use for the name of the table?

Here's a cool tip:  If you name the table as the plural of your model name, Rails will
know to automatically connect the two together.  So our table will be named `movies`.

**REMEMBER**: Model names in Ruby are singular, `Movie`, and the database table name is plural, `movies`.

## Writing a Migration

It's best to use the `migration generator` to give us a head start:

``` shell
$ rails generate migration CreateMovies 
```

This will create a file inside the `db/migrations` folder with a rather long filename.
The end of the filename will be `create_movies.rb`.  Open that file and you'll see something
like this:

``` ruby
# db/migrations/....create_movies.rb
class CreateMovies < ActiveRecord::Migration

  def change
  end

end
```

Let's fill in the `change` method like this:

``` ruby
# db/migrations/....create_movies.rb
class CreateMovies < ActiveRecord::Migration

  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.timestamps
    end
  end

end
```
This defines a table named `movies` with a columns named `title` and `year`.  It also defines two more columns named `created_at` and `updated_at` which are common to have in every table.

## Running a Migration

But wait, we're not done - nothing's actually happened yet!  Simply defining
the migration file won't physically alter the database.  We need to run 
the migration file in order to execute the code, make a live connection
to the database, and insert the new table:

``` shell
$ rails db:migrate
```

You should see some output confirming that it was successful.

