# IMDB

This assignment is intended to reinforce the following concepts:

* The "golden seven" capabilities of a web resource
* Using multiple domain models that tie together

## STEP 0. (Optional) Remove other Rails applications

If you still have other Rails apps in your environment (i.e. the `favorites` app)
you are free to remove that folder if you feel that it's confusing to have two
rails applications in your environment.

## STEP 1. Get the code

```
~/code$ git clone https://www.github.com/kiei925/movies
~/code$ cd movies
~/code/taxi_service$ bundle install --without production
~/code/taxi_service$ rails db:seed
```

## STEP 3. Study the code

Notice that two models have already been implemented for you, `Movie` and `Director`.

The user interface has been started for you.  Start the server and
click around to become familiar with the interface.

HOWEVER, you'll quickly find that not everything works perfectly.  In fact,
you'll probably run into some error messages and non-working functionality.


## STEP 4.  Fix The Code

Fix and enhance the code as necessary so that users can "CRUD" both
resources (movies and directors) without any problems.

**Important Rules:**

1. Movies can be associated with directors.
1. If a movie is associated to a director, the movie's details page should
  include relevant director information, and links to all other movies by
  the same director.
1. The director details page should display that directory's filmography.
1. If a director is removed from the database, any movies that had been
  associated to that director should have their `director_id` value set to `nil`.



## Grading Rubric

Maximum possible: 30 points

* 2 points for seeing a list of movies
* 4 points for seeing the details of a single movie
* 5 points for adding a movie associated to a director
* 2 points for updating the details of a single movie
* 2 points for deleting a single movie

<hr>

* 2 points for seeing a list of directors
* 4 points for seeing the details of a single director
* 2 points for adding a director
* 2 points for updating the details of a single director
* 5 points for deleting a single director
