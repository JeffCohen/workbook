# MovieNight

This assignment is intended to reinforce the following concepts:

* Unifying multiple resources on a single page
* Using hidden input fields to transmit extra form data
* Practicing how to Google for coding skills beyond our workbook

## STEP 1. Get the code

```
~/code$ git clone https://www.github.com/nulaw713/movie_night
~/code$ cd movie_night
~/code/movie_night$ bundle install --without production
~/code/movie_night$
```

Now, open the entire `~/code/movie_night` folder in Atom.

## STEP 2. Connect to Your GitHub Account

Create a new, private repository on GitHub.com named `movie_night`.

Now, re-orient the application to point your repository (replace `YOUR-GITHUB-USERNAME` with your GitHub username below):

```
~/code/movie_night$ git remote set-url origin https://www.github.com/YOUR-GITHUB-USERNAME/movie_night.git
```

From now on, you can commit and sync as often as you'd like.  Just be sure to make
your final commit and sync before the deadline.

Here's a reminder of how to commit your code (take a snapshot of your code):

```
git add -A
git commit -m "Your commit message goes here"
```

And here's how to sync:

```
git push
```



## STEP 3. Study the code

Start the `rails server`:

```
~/code/movie_night$ rails server

=> Booting Puma
=> Rails 5.1.4 application starting in development
=> Run `rails server -h` for more startup options
Puma starting in single mode...
* Version 3.11.2 (ruby 2.4.1-p111), codename: Love Song
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://0.0.0.0:3000
Use Ctrl-C to stop
```

Open your browser to `http://localhost:3000`.  You should see the app
that we've been building in class.  Review the models, controllers,
and views to ensure that you're familiar with how everything works.

## STEP 4.  Implement New Requirements

Now it's your turn.  Take ownership of the code and modify it.

* <span class="badge badge-success">8 points</span>
   Display the list of the movie's reviews on the movie's "show" page.
   Reviews should be sorted to show the most recent reviews
   at the top.
* <span class="badge badge-success">7 points</span>
   Embed a form to write a new review on the movie's show page.
   Submitting the form should add the review to the movie.
   The user should be redirected right back to the movie's show page.
* <span class="badge badge-success">5 points</span>
   If no reviews currently exist for the movie,
   include the message "Be the first to write a review!"
 * <span class="badge badge-success">5 points</span>
    Near the movie title, display the average star rating for the movie. Round to the nearest tenth. See IMDB for an example.
