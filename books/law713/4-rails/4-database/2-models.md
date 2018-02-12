# Database-Backed Models

A _model_ is a software representation of something that exists
in our real world.  All software is an attempt to solve a problem
that exists in the real world, and will need to represent the
real-world problem domain in software.

Models are typical sources of data, so in our web application
they not only have the responsibility to represent a real-world
thing, they also act as the source of data.

We use the `db/models.yml` file to define our models:

``` yml
Movie
  title: text
  year: integer
  poster_url: text
  director_id: integer
  streamable: boolean

Director
  name: text
  dob: date
  photo_url: text
```

Here we've created two models.  Each model will represent one
table in our database.
