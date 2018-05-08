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

Start the server and click around to become familiar with the user interface.

You'll quickly find that not everything has been implemented.  The Movies
resource seems complete, but the Directors resource is yet to be coded.


## STEP 4.  Finish The Code

Enhance the code as necessary so that users can "CRUD" both
resources (movies and directors) without any problems.

**Important Rules:**

1. Movies can be associated with directors.
1. If a movie is associated to a director, the movie's details page should
  include the director's name and their filmography (links to all other movies
    by the same director)
1. The director details page should display the director's name and entire
   filmography (links to all movies by that director).
1. If a director is removed from the database, any movies that had been
  associated to that director should have their `director_id` value set to `nil`.


## Grading Rubric

Maximum possible: 30 points

* 6 points for showing "Other movies by this director" on a movie's details page
* 2 points for seeing a list of directors
* 4 points for a director's details page that includes their filmography
* 2 points for adding a director
* 2 points for updating the name of a director
* 8 points for deleting a single director
* 6 points for adherence to the Bootstrap framework for all UI elements
