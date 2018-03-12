# One Giant Leap

This assignment is intended to reinforce the following concepts:

* How to convert a prototype website into a database-backed application
* How to map user abilities to specific resources and actions
* How to deploy a web application to the internet


## STEP 1. Get the code

```
~/code$ git clone https://www.github.com/nulaw713/giant_leap
~/code$ cd giant_leap
~/code/giant_leap$ bundle install --without production
~/code/giant_leap$ rails db:seed
```

Now, open the entire `~/code/giant_leap` folder in Atom.

## STEP 2. Connect The Code to A GitHub Repository

Create a new, private repository on GitHub.com named `giant_leap`.

Now, re-orient the application to point your repository (replace `YOUR-GITHUB-USERNAME` with your GitHub username below):

```
~/code/giant_leap$ git remote set-url origin https://www.github.com/YOUR-GITHUB-USERNAME/giant_leap.git
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

Notice that two models have already been implemented for you, `Ride` and `Driver`.

The user interface has been started for you.  

* The home page allows customers to request a ride.
* `/rides` is used by the dispatch office to track requested rides, assign drivers, and
  mark rides as being complete.


Start the `rails server`:

```
~/code/giant_leap$ rails server

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

Open your browser to `http://localhost:3000`.  You should see the
prototype for a simple ride-sharing service.


## STEP 4.  Implement These Requirements

Now it's your turn.  Take ownership of the code and modify it.

* <span class="badge badge-success">4 points</span>
   **Allow customers to request rides.**
   * Both the origin and destination must be provided
* <span class="badge badge-success">7 points</span>
   **Implement `/rides`**
   * This page is for dispatchers, not customers
   * The newest ride requests should appear first
   * Rides that have been marked as complete should no longer appear on the list
   * Completed rides should remain in the database for reporting purposes
* <span class="badge badge-success">5 points</span>
   **Assign Drivers**
   * Rides not yet assigned to a driver should have an "Assign Driver" button
   * Clicking the button should navigate to another page
   * The dispatcher should be able to select a driver from the database

   the driver.
 * <span class="badge badge-success">5 points</span>
   **Complete Rides**
   * Rides not yet complete should have a `Mark as Complete` button available
   * Clicking the button should set the ride's `complete` value `true`
   * The now-completed ride should no longer appear in the list
 * <span class="badge badge-success">4 points</span>
   **Deploy your application to a live URL using Heroku.com.**
   * You must use the following name for your Heroku app: `law713-giant-leap-{YOUR-NETID}`
   * See the Heroku notes in this repository for details on how to use Heroku to
     deploy your code from GitHub.
