# Database-Backed Models

<div class="col-6 text-center alert alert-warning" role="alert">
  <h3>NOTE: This section is still being written.</h3>
</div>

A _model_ is a software representation of something that exists
in our real world.  All software is an attempt to solve a problem
that exists in the real world, and will need to represent the
real-world problem domain in software.

Models also act as sources of data, so in our web application
they not only have the responsibility of represent a real-world
thing, they also act as the source of data.

## Creating New Models

In the code below, we've created two models.  Each model will represent one
table in our database.

``` ruby
# app/models/movie.rb
class Movie < ActiveRecord::Base

end
```

``` ruby
# app/models/actor.rb
class Actor < ActiveRecord::Base

end
```

## Adding Behavior To a Model

The `Movie` and `Actor` models are just Ruby classes, and we can add methods to them
for whatever functionality we might need.  For example:

``` ruby
class Movie < ActiveRecord::Base

  def buy_tickets
    # Add code here to let the user purchase tickets
    # ...
  end

end
```

## Adding Data To a Model

A model also serves the real-world data that's relevant for that kind of object.  In the 
real world, every movie has a _title_, so we might be tempted to add an attribute named 
`title` to the class (but don't do this!):

``` ruby
class Movie < ActiveRecord::Base

  attr_accessor :title

  def buy_tickets
    # Add code here to let the user purchase tickets
    # ...
  end

end
```

BUT, we don't want to really do this, because `attr_accessor` is useful only for data
that is held in memory.  Most of the time, we will want to load the data for a model from 
a database.  

What we really want to do is connect our Ruby class to a specific database table, so that
objects of our class can get their data from specific rows in a table.  In order to do that,
we need to add a table to our database and connect it to our model.  We will do that in 
the next section.
